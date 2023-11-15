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
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            //signed in
            accountView
        } else {
            LoginView()
        }
    }
    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(
                userId: viewModel.currentUserId
            )
            .tabItem {
                Label(
                    "Home",
                    systemImage: "house"
                )
            }
            
            ProfileView()
                .tabItem {
                    Label(
                        "Profile",
                        systemImage: "person.circle")
                }
        }
    }
    
}

#Preview {
    MainView()
}
