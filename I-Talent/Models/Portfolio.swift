//
//  Portfolio.swift
//  I-Talent
//
//  Created by Senne Scheepers on 04/04/2022.
//

import Foundation

struct Portfolio: Decodable {
    var author: String
    var intro: String
    var activities: [Activity]
    var reports: [Report]
    var reflection: String
}
