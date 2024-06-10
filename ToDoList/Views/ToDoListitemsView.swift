//
//  ToDoListitemsView.swift
//  ToDoList
//
//  Created by Aung Sett Paing on 2024-05-23.
//
import FirebaseFirestore
import SwiftUI

struct ToDoListitemsView: View {
    @StateObject var viewModel : ToDoListItemsViewViewModel
    @FirestoreQuery var items: [ToDoList]
    private let userId: String
    init(userId: String){
        self.userId = userId
        
        self._items  = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        
        self._viewModel = StateObject(wrappedValue: ToDoListItemsViewViewModel(userId: userId))
    }
    var body: some View {
        NavigationView{
            VStack{
                List(items) {
                    item in
                    ItemsViews(item: item)
                        .swipeActions {
                            Button {
                                viewModel.delete(id: item.id)
                            }label: {
                                Text("Delete")
                            }
                            .tint(.red)
                        }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("To Do list")
            .toolbar {
                Button {
                    viewModel.showingNewItem = true
                } label : {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItem) {
                NewItemView(newItemPresented: $viewModel.showingNewItem)
            }
        }
    }
}

#Preview {
    ToDoListitemsView(userId: "yGq47UfMouUpf5bB5HbJsWijJds2")
}
