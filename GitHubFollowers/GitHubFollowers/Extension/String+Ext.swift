//
//  String+Ext.swift
//  GitHubFollowers
//
//  Created by Alexander Vagin on 27.06.2023.
//

import Foundation

extension String {
    
    // Можем опустить нижеследующие методы, если вводим в network manager:
    // decoder.dateDecodingStrategy = .iso8601
    
    // А также указываем в модели данных User вместо String дату:
    // let createdAt: Date
    
//    func convertToDate() -> Date? {
//        let dateFormatter        = DateFormatter()
//        dateFormatter.dateFormat = C.DateFormat.server
//        dateFormatter.locale     = Locale(identifier: "en_US_POSIX")
//        dateFormatter.timeZone   = .current
//        
//        return dateFormatter.date(from: self)
//    }
//    
//    func convertToDisplayFormat() -> String {
//        guard let date = self.convertToDate() else { return "N/A" }
//        return date.convertToMonthYearFormat()
//    }
}
