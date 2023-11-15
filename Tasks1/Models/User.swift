//
//  User.swift
//  Tasks1
//
//  Created by Salt Dev on 2023-11-14.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
