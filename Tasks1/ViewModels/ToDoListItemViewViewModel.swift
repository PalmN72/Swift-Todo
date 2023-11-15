//
//  ToDoListItemViewViewModel.swift
//  Tasks1
//
//  Created by Salt Dev on 2023-11-14.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation
/// View model for single item in todolist
class ToDoListItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
        
    }
    
}
