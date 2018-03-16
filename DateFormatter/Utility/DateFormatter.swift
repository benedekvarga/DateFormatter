//
//  DateFormatter.swift
//  DateFormatter
//
//  Created by Benedek Varga on 03/15 T 74.
//  Copyright © 2018. Benedek Varga. All rights reserved.
//

import Foundation

extension Date {

    /// Returns the date and the time in `yyyy.MM.dd - hh:mm:ss` format.
    var full: String {
        let calendar = Calendar.current
        let year = calendar.component(.year, from: self)
        let month = calendar.component(.month, from: self)
        let day = calendar.component(.day, from: self)
        let hour = calendar.component(.hour, from: self)
        let minute = calendar.component(.minute, from: self)
        let sec = calendar.component(.second, from: self)

        return "\(year).\(String(format: "%02d", month)).\(String(format: "%02d", day)) - \(String(format: "%02d", hour)):\(String(format: "%02d", minute)):\(String(format: "%02d", sec))"
    }

    /// Returns the date in `yyyy.MM.dd` format.
    var date: String {
        let calendar = Calendar.current
        let year = calendar.component(.year, from: self)
        let month = calendar.component(.month, from: self)
        let day = calendar.component(.day, from: self)

        return "\(year).\(String(format: "%02d", month)).\(String(format: "%02d", day))"
    }

    /// Returns the date in `dd.MM.yyyy` format.
    var dateReversed: String {
        let calendar = Calendar.current
        let year = calendar.component(.year, from: self)
        let month = calendar.component(.month, from: self)
        let day = calendar.component(.day, from: self)

        return "\(String(format: "%02d", day)).\(String(format: "%02d", month)).\(year)"
    }

    /// Returns the time in `hh:mm:ss` format.
    var time: String {
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: self)
        let minute = calendar.component(.minute, from: self)
        let sec = calendar.component(.second, from: self)

        return "\(String(format: "%02d", hour)):\(String(format: "%02d", minute)):\(String(format: "%02d", sec))"
    }

    /// Returns the date and the time in ISO 8601 `yyyy-MM-dd'T'hh:mm:ss` format.
    var iso8601: String {
        let calendar = Calendar.current
        let year = calendar.component(.year, from: self)
        let month = calendar.component(.month, from: self)
        let day = calendar.component(.day, from: self)
        let hour = calendar.component(.hour, from: self)
        let minute = calendar.component(.minute, from: self)
        let sec = calendar.component(.second, from: self)

        return "\(year)-\(String(format: "%02d", month))-\(String(format: "%02d", day))'T'\(String(format: "%02d", hour)):\(String(format: "%02d", minute)):\(String(format: "%02d", sec))"
    }

    /// Returns the date and the time in custom format. Use `yyyy`, `MM`, `dd`, `hh`, `mm`, `ss`, `SSSS`.
    func custom(format: String) -> String {
        let calendar = Calendar.current
        let year = calendar.component(.year, from: self)
        let month = calendar.component(.month, from: self)
        let day = calendar.component(.day, from: self)
        let hour = calendar.component(.hour, from: self)
        let minute = calendar.component(.minute, from: self)
        let sec = calendar.component(.second, from: self)
        let milisec = (calendar.component(.nanosecond, from: self))/100000

        var formatted = format.replacingOccurrences(of: "yyyy", with: "\(year)")
        formatted = formatted.replacingOccurrences(of: "MM", with: "\(String(format: "%02d", month))")
        formatted = formatted.replacingOccurrences(of: "dd", with: "\(String(format: "%02d", day))")
        formatted = formatted.replacingOccurrences(of: "hh", with: "\(String(format: "%02d", hour))")
        formatted = formatted.replacingOccurrences(of: "mm", with: "\(String(format: "%02d", minute))")
        formatted = formatted.replacingOccurrences(of: "ss", with: "\(String(format: "%02d", sec))")
        formatted = formatted.replacingOccurrences(of: "SSSS", with: "\(String(format: "%04d", milisec))")

        return formatted
    }

}

