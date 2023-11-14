//
//  Tasks1App.swift
//  Tasks1
//
//  Created by Salt Dev on 2023-11-14.
//
import FirebaseCore
import SwiftUI

@main
struct Tasks1App: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
