//
//  ErrorMessage.swift
//  GitHubFollowers
//
//  Created by Alexander Vagin on 26.06.2023.
//

import Foundation

enum ErrorMessage: String {
    case invalidUsername  = "Это имя пользователя создало недопустимый запрос. Пожалуйста, попробуйте еще раз"
    case unableToComplete = "Не удалось выполнить ваш запрос. Пожалуйста, проверьте ваше интернет-соединение"
    case invalidResponse  = "Неверный ответ сервера. Пожалуйста, попробуйте еще раз"
    case invalidData      = "Данные, полученные с сервера, недействительны. Пожалуйста, попробуйте еще раз"
}
