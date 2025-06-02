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
        NavigationView {
            VStack {
                ScrollView {
                    DashboardView(viewModel: resilienceVM)
                    TaskLoggingView(viewModel: resilienceVM)
                }
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("Resilience")
        }
    }
}

#Preview {
    ContentView()
}
