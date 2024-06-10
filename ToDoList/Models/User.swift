//
//  User.swift
//  ToDoList
//
//  Created by Aung Sett Paing on 2024-05-23.
//

import Foundation

struct User: Codable{
    let id : String
    let name : String
    let email : String
    let joined : TimeInterval
}
