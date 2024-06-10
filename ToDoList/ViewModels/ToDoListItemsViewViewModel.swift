//
//  ToDoListItemsViewViewModel.swift
//  ToDoList
//
//  Created by Aung Sett Paing on 2024-05-23.
//
import FirebaseFirestore
import Foundation
class ToDoListItemsViewViewModel: ObservableObject{
    @Published var showingNewItem = false
    
    private let userId: String
    init(userId: String){
        self.userId = userId
    }
    
    
    /// Delete item
    /// - Parameter id: item id to delete
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
