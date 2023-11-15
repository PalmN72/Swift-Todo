//
//  ToDoListItemsView.swift
//  Tasks1
//
//  Created by Salt Dev on 2023-11-14.
//

import SwiftUI

struct ToDoListView: View {
    
    @StateObject var viewModel = ToDoListViewViewModel()
    
    private let userId: String
    
    init(
        userId: String
    ) {
        self.userId = userId    }
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle(
                "To Do List"
            )
            .toolbar {
                Button(action: /*@START_MENU_TOKEN@*/{
                }/*@END_MENU_TOKEN@*/,
                       
                       label: {
                    Image(
                        systemName: "plus"
                    )
                })
            }
        }
    }
}

#Preview {
    ToDoListView(
        userId: "User"
    )
}
