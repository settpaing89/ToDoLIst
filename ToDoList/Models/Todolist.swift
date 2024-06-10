//
//  Todolist.swift
//  ToDoList
//
//  Created by Aung Sett Paing on 2024-05-23.
//

import Foundation

struct ToDoList: Codable,Identifiable {
    let id : String
    let title : String
    let dueDate : TimeInterval
    let createDate : TimeInterval
    var isDone : Bool
    
    mutating func setDone(_ state: Bool){
        isDone = state
    }
    
}
