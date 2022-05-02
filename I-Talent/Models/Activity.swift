//
//  Activity.swift
//  I-Talent
//
//  Created by Senne Scheepers on 04/04/2022.
//

import Foundation

struct Activity: Decodable, Hashable {
    var title: String
    var location: String
    var date: String
    var description: String

    static func empty() -> Activity {
        return Activity(title: "", location: "", date: "", description: "")
    }
}
