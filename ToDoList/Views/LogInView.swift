//
//  LogIn.swift
//  ToDoList
//
//  Created by Aung Sett Paing on 2024-05-23.
//

import SwiftUI

struct LogInView: View {
    
    @StateObject var viewmodel = LoginViewModel()
    
    var body: some View {
        NavigationView{
            
            VStack {
                HeaderView(title: "To DO List", subtitle: "Get things done", angle: 15, background: .pink)
                Spacer()
                Form {
                    if !viewmodel.errorMessage.isEmpty {
                        Text(viewmodel.errorMessage)
                            .foregroundColor(.red)
                    }
                    TextField("Email", text: $viewmodel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewmodel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TDButton(title: "Log in", background: .blue) {
                        viewmodel.login()
                    }
                    .padding()
                }
                .padding(.top, -50)
                
                Spacer()
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
            }
        }
       // .padding(.top, -50)
    }
}

#Preview {
    NavigationView {
        LogInView()
    }
}
