//
//  ContentView.swift
//  Tasks1
//
//  Created by Salt Dev on 2023-11-14.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        NavigationView {
            if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
                //signed in
                ToDoListView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    MainView()
}
