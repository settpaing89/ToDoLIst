//
//  ItemsViewsViewModel.swift
//  ToDoList
//
//  Created by Aung Sett Paing on 2024-05-23.
//
import FirebaseFirestore
import FirebaseAuth
import Foundation
class ItemsViewsViewModel: ObservableObject{
    init(){
        
    }
    func toggleIsDone(item: ToDoList){
        var newItem = item
        newItem.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(newItem.id)
            .setData(newItem.asDIctionary())
    }
}
