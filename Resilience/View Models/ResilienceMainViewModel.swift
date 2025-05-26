//
//  ResilienceMainViewModel.swift
//  Resilience
//
//  Created by Glenn Karlo Manguiat on 5/26/25.
//

import Foundation

class ResilienceMainViewModel: ObservableObject {
    // Progress Dashboard
    @Published var currentDay: Int = 2
    @Published var totalDays: Int = 75
    @Published var failedAttempts: Int = 0

    // Daily Check-in
    @Published var tasks: [CheckInTask] = CheckInTask.defaultTasks

    var completedDays: Int {
        max(0, currentDay - 1)
    }

    var progressPercentage: Double {
        Double(currentDay) / Double(totalDays)
    }

    func toggleTask(_ task: CheckInTask) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index].isCompleted.toggle()
        }
    }
}
