//
//  PhotoUploadView.swift
//  Resilience
//
//  Created by Glenn Karlo Manguiat on 5/26/25.
//

import SwiftUI

struct PhotoUploadView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
//        Button(action: {
//           self.presentationMode.wrappedValue.dismiss()
//        }) {
//            VStack(alignment: .leading) {
//                Image(systemName: "gobackward")
//                    .frame(width: 32, height: 32)
//            }
//           
//        }
//        .navigationBarHidden(true)
        VStack {}
            .navigationTitle("")
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Label("Go Home", systemImage: "arrow.left")
                    }
                }
            }
            .tint(Color.teal)

        VStack (alignment: .leading, spacing: 24) {
            Text("Check-in with your progress photo")
                .font(.title3)
                .fontWeight(.medium)

            Button(action: {
                
            }) {
                Image(systemName:"camera")
                    .frame(width: 48, height: 48)
                Text("Upload Photo")
                    .font(.subheadline)
                    .fontWeight(.medium)
            }   .padding()
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color(.systemGray5))
                .cornerRadius(8)
                .foregroundColor(.black)
            
            Text("Take a photo daily. We will verify the date.")
                .font(.caption)
                .foregroundColor(.gray)
            
            
        }
        .padding(32)
        .background(Color(.systemBackground))
        .cornerRadius(16)
        .shadow(color: .gray.opacity(0.15), radius: 8, x: 0, y: 4)
        
        Spacer()
    }
}

#Preview {
    PhotoUploadView()
}
