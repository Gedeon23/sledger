//
//  ContentView.swift
//  sledger
//
//  Created by Gedeon Jahns on 19.11.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            HistoryView()
                .tabItem {
                    Label("History", systemImage: "timer")
                }
            BudgetView()
                .tabItem {
                    Label("Budget", systemImage: "gear")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
