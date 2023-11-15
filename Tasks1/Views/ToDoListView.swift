//
//  ToDoListItemsView.swift
//  Tasks1
//
//  Created by Salt Dev on 2023-11-14.
//
import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    
    @StateObject var viewModel = ToDoListViewViewModel()
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String) {
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/todos"
        )
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) {
                    item in
                    ToDoListItemView(item: item)
                        .swipeActions {
                            Button("Delete") {
                                viewModel.delete(id: item.id)
                            }
                        }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle(
                "To Do List"
            )
            .toolbar {
                Button {
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) { NewItemView(newItemPresented: $viewModel.showingNewItemView)}
        }
    }
}

#Preview {
    ToDoListView(
        userId: "User"
    )
}
