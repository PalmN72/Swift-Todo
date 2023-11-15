//
//  ProfileView.swift
//  Tasks1
//
//  Created by Salt Dev on 2023-11-14.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle(
                "Profile"
            )
            .toolbar {
                Button(action: {
                },
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
    ProfileView()
}
