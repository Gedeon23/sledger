//
//  ContentView.swift
//  sledger
//
//  Created by Gedeon Jahns on 19.11.22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var journalData = JournalData()
    
    var body: some View {
        ZStack {
            TabView {
                HistoryView(journalData: journalData)
                    .tabItem {
                        Label("History", systemImage: "timer")
                    }
                TransactionCreationView()
                    .tabItem {
                        Label("", systemImage: "plus.circle.fill")
                    }
                BudgetView()
                    .tabItem {
                        Label("Budget", systemImage: "chart.bar.xaxis")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
