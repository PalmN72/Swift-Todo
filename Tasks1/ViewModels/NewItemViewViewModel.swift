//
//  NewItemViewViewModel.swift
//  Tasks1
//
//  Created by Salt Dev on 2023-11-14.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    
    @Published var title = ""
    @Published var dueDate = Date()
    init() {}
    
    func save() {
        
    }
    
}
