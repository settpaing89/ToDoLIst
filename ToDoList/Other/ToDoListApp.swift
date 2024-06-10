//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Aung Sett Paing on 2024-05-22.
//

import SwiftUI
import FirebaseCore
@main
struct ToDoListApp: App {
    
    init (){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
