//
//  RegisterView.swift
//  Tasks1
//
//  Created by Salt Dev on 2023-11-14.
//

import SwiftUI

struct RegisterView: View {
    
   @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: Color.orange)
        
        Form {
            TextField("Full Name", text: $viewModel.name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            
            TextField("Email Address", text: $viewModel.email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(.none)
                .autocorrectionDisabled()
            
            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            TLButton(title: "Register",
                     background: Color.green
            ) {
                // Attempt registration
                viewModel.register()
            }
        }
        .offset(y: -50)
        
        Spacer()
    }
}

#Preview {
    RegisterView()
}
