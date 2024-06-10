//
//  HeaderView.swift
//  ToDoList
//
//  Created by Aung Sett Paing on 2024-05-23.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle : Double
    let background: Color
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
               
            VStack{
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
                Text(subtitle)
                    .font(.system(size : 30))
                    .foregroundColor(.white)
            }
            .padding(.top, 100)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y : -150)
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: 20, background: .blue)
}
