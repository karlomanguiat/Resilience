//
//  DashboardView.swift
//  Resilience
//
//  Created by Glenn Karlo Manguiat on 5/26/25.
//

import SwiftUI

struct DashboardView: View {
    @ObservedObject var viewModel: ResilienceMainViewModel
    
    var body: some View {
        VStack (alignment: .leading, spacing: 16) {
            HStack {
                Text("Here's your current progress")
                    .font(.title2)
                    .bold()
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    HStack {
                        Image(systemName: "arrow.clockwise")
                            .frame(width: 12, height: 12)
                        Text("Reset")
                            .font(.subheadline)
                    }
                }
                .padding()
                .frame(height: 44)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .tint(.teal)
            }
            
            Text("Day \(viewModel.currentDay) of 75")
                .font(.headline)
                .fontWeight(.medium)
                .padding(EdgeInsets(top: 16, leading: 0, bottom: 16, trailing: 0))
            ProgressView(value:Double(1.0), total:Double(75.0))
                .tint(.teal)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
            
            HStack (alignment: .center) {
                VStack {
                    Text("\nCOMPLETED")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text("\(viewModel.completedDays)")
                        .fontWeight(.bold)
                    Text("Days")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity)
                
                VStack {
                    Text("FAILED\nATTEMPTS")
                        .multilineTextAlignment(.center)
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text("1")
                        .fontWeight(.bold)
                    Text("Times")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity)
                
                VStack {
                    Text("CURRENT\nSTREAK")
                        .multilineTextAlignment(.center)
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text("1")
                        .fontWeight(.bold)
                    Text("Days")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity)
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(16)

        }
        .padding(32)
        .background(Color(.systemBackground))
        .cornerRadius(16)
        .shadow(color: .gray.opacity(0.15), radius: 8, x: 0, y: 4)
    
    }
}

#Preview {
    DashboardView(viewModel: ResilienceMainViewModel())
}
