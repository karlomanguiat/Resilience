//
//  ContentView.swift
//  Resilience
//
//  Created by Glenn Karlo Manguiat on 5/26/25.
//

import SwiftUI

struct ContentView: View {
    @State private var resilienceVM = ResilienceMainViewModel()
    
    var body: some View {
        VStack {
            DashboardView(viewModel: resilienceVM)
            
            ScrollView {
                TaskLoggingView(viewModel: resilienceVM)
            }
        }
        .background(Color(.systemGroupedBackground))
    }
}

#Preview {
    ContentView()
}
