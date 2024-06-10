//
//  ProfileView.swift
//  ToDoList
//
//  Created by Aung Sett Paing on 2024-05-23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    var body: some View {
        NavigationView{
            VStack{
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .frame(width: 125,height: 125)
                    .padding()
                
                VStack(alignment: .leading){
                    HStack{
                        Text("Name :")
                            .bold()
                        Text("Aung")
                    }
                    .padding()
                    HStack{
                        Text("Email :")
                            .bold()
                        Text("Aung")
                    }.padding()
                    HStack{
                        Text("Menber since :").bold()
                        Text("Aung")
                    }.padding()
                    
                }
                Button("log out"){
                    viewModel.logout()
                }
                .tint(.red)
                .padding()

                Spacer()
                .navigationTitle("Profile")
            }
        }
    }
}
#Preview {
    ProfileView()
}
