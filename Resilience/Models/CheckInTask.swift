//
//  CheckInTask.swift
//  Resilience
//
//  Created by Glenn Karlo Manguiat on 5/26/25.
//

import Foundation


struct CheckInTask: Identifiable, Codable {
    var id: UUID = UUID()
    var title: String
    var iconName: String
    var isCompleted: Bool = false
    
    static let defaultTasks: [CheckInTask] = [
        CheckInTask(title: "Adhere to Diet", iconName: "clipboard"),
        CheckInTask(title: "45 min. indoor workout", iconName: "bicycle"),
        CheckInTask(title: "45 min. outdoor workout (if weather permits)", iconName: "figure.walk"),
        CheckInTask(title: "Drink 4L of Water", iconName: "drop"),
        CheckInTask(title: "10 Pages of Reading (Non-fiction)", iconName: "book")
    ]
}
