//
//  Integer.swift
//  Twitter
//
//  Created by Mahi Garg on 01/11/23.
//

import Foundation

extension Int {
    func formatNumber() -> String {
         if self >= 100000 {
            let value = Double(self) / 10000.0
            if value.truncatingRemainder(dividingBy: 1.0) == 0 {
                return "\(Int(value))M"
            } else {
                return "\(value)M"
            }
        } else if self >= 1000 {
            let value = Double(self) / 1000.0
            if value.truncatingRemainder(dividingBy: 1.0) == 0 {
                return "\(Int(value))k"
            } else {
                return "\(value)k"
            }
        } else {
            return "\(self)"
        }
    }
}
