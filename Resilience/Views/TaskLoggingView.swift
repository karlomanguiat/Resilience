//
//  TaskLoggingView.swift
//  Resilience
//
//  Created by Glenn Karlo Manguiat on 5/26/25.
//

import SwiftUI

struct TaskLoggingView: View {
    @ObservedObject var viewModel: ResilienceMainViewModel
    var body: some View {
        VStack (alignment: .leading, spacing: 12) {
            Text("Daily Check-in: Day \(viewModel.currentDay)")
                .font(.title2)
                .bold()
            Text("Log your progress for today")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            ForEach(viewModel.tasks) { task in
                HStack {
                    Button(action: {
                        viewModel.toggleTask(task)
                    }) {
                        Image(systemName: task.isCompleted ? "checkmark.square.fill" : "square")
                    }
                    Image(systemName: task.iconName)
                        .frame(minWidth: 40)
                    Text(task.title)
                        .font(.caption)
                    Spacer()
                }
                .padding()
                .background(task.isCompleted ? Color.teal : Color(.systemGray6))
                .cornerRadius(10)
                .foregroundColor(task.isCompleted ? .white : .primary)
            }
        }
        .padding(32)
        .background(Color(.systemBackground))
        .cornerRadius(16)
        .shadow(color: .gray.opacity(0.15), radius: 8, x: 0, y: 4)
    }
}

#Preview {
    TaskLoggingView(viewModel: ResilienceMainViewModel())
}
