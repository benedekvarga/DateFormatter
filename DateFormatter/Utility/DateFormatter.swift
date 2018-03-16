//
//  DateFormatter.swift
//  DateFormatter
//
//  Created by Benedek Varga on 03/15 T 74.
//  Copyright © 2018. Benedek Varga. All rights reserved.
//

import Foundation

extension Date {

    /// Returns date and time in format `yyyy.MM.dd - hh:mm:ss`.
    var full: String {
        let calendar = Calendar.current
        let year = calendar.component(.year, from: self)
        let month = calendar.component(.month, from: self)
        let day = calendar.component(.day, from: self)
        let hour = calendar.component(.hour, from: self)
        let minutes = calendar.component(.minute, from: self)
        let sec = calendar.component(.second, from: self)

        return "\(year).\(month).\(day) - \(hour):\(minutes):\(sec)"
    }

    /// Returns time in format `hh:mm:ss`.
    var time: String {
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: self)
        let minutes = calendar.component(.minute, from: self)
        let sec = calendar.component(.second, from: self)

        return "\(hour):\(minutes):\(sec)"
    }

    /// Returs date in format `yyyy.MM.dd`.
    var date: String {
        let calendar = Calendar.current
        let year = calendar.component(.year, from: self)
        let month = calendar.component(.month, from: self)
        let day = calendar.component(.day, from: self)

        return "\(year).\(month).\(day)"
    }

    /// Returs date in format `dd.MM.yyyy`.
    var dateReversed: String {
        let calendar = Calendar.current
        let year = calendar.component(.year, from: self)
        let month = calendar.component(.month, from: self)
        let day = calendar.component(.day, from: self)

        return "\(day).\(month).\(year)"
    }

    /// Returns date and time in ISO 8601 format `yyyy-MM-dd'T'hh:mm:ss`.
    var iso8601: String {
        let calendar = Calendar.current
        let year = calendar.component(.year, from: self)
        let month = calendar.component(.month, from: self)
        let day = calendar.component(.day, from: self)
        let hour = calendar.component(.hour, from: self)
        let minute = calendar.component(.minute, from: self)
        let sec = calendar.component(.second, from: self)

        return "\(year)-\(month)-\(day)'T'\(hour):\(minute):\(sec)"
    }

}

