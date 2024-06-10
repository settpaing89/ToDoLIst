//
//  TDButton.swift
//  ToDoList
//
//  Created by Aung Sett Paing on 2024-05-24.
//

import SwiftUI

struct TDButton: View {
    let title: String
    let background: Color
    let action : () -> Void
    var body: some View {
        Button {
            action()
        } label:{
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

#Preview {
    TDButton(title: "title", background: .blue){
        //action
    }
}
