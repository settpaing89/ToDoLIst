//
//  ItemsViews.swift
//  ToDoList
//
//  Created by Aung Sett Paing on 2024-05-23.
//

import SwiftUI

struct ItemsViews: View {
    @StateObject var viewModel = ItemsViewsViewModel()
    let item : ToDoList
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(item.title)
                    .font(.body)
                    .bold()
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated,time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            Spacer()
            
            Button{
                viewModel.toggleIsDone(item: item)
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle" )
                    .foregroundColor(.green)
            }
        }
    }
}

#Preview {
    ItemsViews(item: .init(id: "123", title: "get beef", dueDate: Date().timeIntervalSince1970, createDate: Date().timeIntervalSince1970, isDone: true))
}
