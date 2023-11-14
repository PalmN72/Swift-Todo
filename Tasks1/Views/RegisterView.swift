//
//  RegisterView.swift
//  Tasks1
//
//  Created by Salt Dev on 2023-11-14.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: Color.orange)
        
        Form {
            TextField("Full Name", text: $name)
                .textFieldStyle(DefaultTextFieldStyle())
            TextField("Email Address", text: $email)
                .textFieldStyle(DefaultTextFieldStyle())
            SecureField("Password", text: $password)
                .textFieldStyle(DefaultTextFieldStyle())
        }
        .offset(y: -50)
        
        Spacer()
    }
}

#Preview {
    RegisterView()
}
