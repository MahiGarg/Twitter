//
//  Date.swift
//  Twitter
//
//  Created by Mahi Garg on 01/11/23.
//

import Foundation

extension Date {
    func formattedDateDifference() -> String {
        let calendar = Calendar.current
        let currentDate = Date()

        // Calculate the difference between the current date and the given date
        let components = calendar.dateComponents([.year, .month, .day], from: self, to: currentDate)

        if let years = components.year, years > 0 {
            return "\(years) yr"
        } else if let months = components.month, months > 0 {
            return "\(months) mon"
        } else if let days = components.day, days > 0 {
            return "\(days) d"
        } else {
            return "Today"
        }
    }
}
