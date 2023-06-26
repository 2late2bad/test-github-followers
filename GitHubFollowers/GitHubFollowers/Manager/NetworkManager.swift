//
//  NetworkManager.swift
//  GitHubFollowers
//
//  Created by Alexander Vagin on 26.06.2023.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    let baseURL       = "https://api.github.com/"
    
    private init() {}
    
    func getFollower(for username: String, page: Int, completed: @escaping ([Follower]?, String?) -> Void) {
        let endpoint = baseURL + "users/\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completed(nil, "Это имя пользователя создало недопустимый запрос. Пожалуйста, попробуйте еще раз")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let _ = error {
                completed(nil, "Не удалось выполнить ваш запрос. Пожалуйста, проверьте ваше интернет-соединение")
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil, "Неверный ответ сервера. Пожалуйста, попробуйте еще раз")
                return
            }
            
            guard let data = data else {
                completed(nil, "Данные, полученные с сервера, недействительны. Пожалуйста, попробуйте еще раз")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(followers, nil)
            } catch {
                completed(nil, "Данные, полученные с сервера, недействительны. Пожалуйста, попробуйте еще раз")
            }
        }
        
        task.resume()
    }
}
