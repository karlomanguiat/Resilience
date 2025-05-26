//
//  ButtonView.swift
//  Resilience
//
//  Created by Glenn Karlo Manguiat on 5/26/25.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        HStack {
            Image(systemName: "camera")
            Text("Upload Progress Photo")
                .font(.subheadline)
                .fontWeight(.medium)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .tint(.white)
        .background(Color(.orange))
        .cornerRadius(10)
    }
}

#Preview {
    ButtonView()
}
