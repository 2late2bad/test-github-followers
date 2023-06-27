//
//  Date+Ext.swift
//  GitHubFollowers
//
//  Created by Alexander Vagin on 27.06.2023.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = C.DateFormat.monthYear
        dateFormatter.locale     = Locale(identifier: "ru_RU")
        return dateFormatter.string(from: self)
    }
}
