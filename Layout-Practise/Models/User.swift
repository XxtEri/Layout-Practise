//
//  User.swift
//  Layout-Practise
//
//  Created by Елена on 02.04.2023.
//

import Foundation

struct User {
    let login: String
    let password: String
}

extension User {
    static var users = [
        User(login: "asd", password: "12345")
    ]
}
