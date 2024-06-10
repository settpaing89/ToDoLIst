//
//  Register.swift
//  ToDoList
//
//  Created by Aung Sett Paing on 2024-05-23.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewModel()
    var body: some View {
        
        VStack{
            HeaderView(title: "Register", subtitle: "Start Today", angle: 15, background: .indigo)
            
            Form{
                TextField("FullName", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TDButton(title: "Register", background: .green){
                    viewModel.register()
                }
            }
            .offset(y: -50)
            Spacer()
        }
        
        
    }
}

#Preview {
    RegisterView()
}
