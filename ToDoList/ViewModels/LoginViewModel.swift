//
//  LoginViewModel.swift
//  ToDoList
//
//  Created by Aung Sett Paing on 2024-05-23.
//
import FirebaseAuth
import Foundation

class LoginViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(email: String = "", password: String = "") {
        self.email = email
        self.password = password
    }
    
    func login(){
        guard validate() else{
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
        
        
    }
    
   private func validate() -> Bool {
       errorMessage = ""
       guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else
       {

           errorMessage = "Please filled in all fields"
           return false
       }
       
       guard email.contains("@") && email.contains(".")else {
           errorMessage = "Please put the valid email"
           return false
       }
           return true
    }
}
