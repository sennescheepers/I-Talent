//
//  Report.swift
//  I-Talent
//
//  Created by Senne Scheepers on 04/04/2022.
//

import Foundation

struct Report: Decodable, Hashable {
    var title: String
    var report: String
    var pictures: [String]

    static func empty() -> Report {
        return Report(title: "", report: "", pictures: [])
    }
}
