//
//  ContentView.swift
//  ToDoList
//
//  Created by Aung Sett Paing on 2024-05-22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewViewModel()
    var body: some View {
        if viewModel.isSigned, !viewModel.currentUserId.isEmpty{
           accountView
        }else{
            LogInView()
        }
    }
    
    @ViewBuilder
    var accountView: some View{
        TabView{
            ToDoListitemsView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                Label("Profile",systemImage: "person.circle")
            }
        }
    }
}

#Preview {
    ContentView()
}
