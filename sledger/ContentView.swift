//
//  ContentView.swift
//  sledger
//
//  Created by Gedeon Jahns on 19.11.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        NavigationView {
            NavigationLink(destination: HistoryView()) {
                    Text("History")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
