//
//  LoginView.swift
//  Resilience
//
//  Created by Glenn Karlo Manguiat on 5/26/25.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack (spacing: 24) {
            VStack(spacing: 8) {
               Text("💪🏼")
                    .frame(width: 40, height: 40)
                Text("Resilience")
                    .font(.title2)
                    .bold()
                Text("Your 75 Hard Partner")
                    .font(.subheadline)
                    
            }
                
            TextField("Email", text: .constant(""))
                .padding()
                .background(Color.gray.opacity(0.15).cornerRadius(8))
            SecureField("Password", text: .constant(""))
                .padding()
                .background(Color.gray.opacity(0.15).cornerRadius(8))
            Button(action: {}) {
                Text("Login")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
            }
            .background(Color.teal)
            .cornerRadius(8)
        }
        .padding(32)
        .background(Color(.systemBackground))
        .cornerRadius(16)
        .shadow(color: .gray.opacity(0.15), radius: 8, x: 0, y: 4)
    
    }
}

#Preview {
    LoginView()
}
