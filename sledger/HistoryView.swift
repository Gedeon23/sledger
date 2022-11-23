//
//  HistoryView.swift
//  sledger
//
//  Created by Gedeon Jahns on 19.11.22.
//

import SwiftUI


struct HistoryView: View {
    @ObservedObject var journalData: JournalData
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("History")
                    .font(.headline)
            }
            .padding()
            
            NavigationView(){
                List(journalData.transactions, id: \.line) { transaction in
                    TransactionView(transaction: transaction)
                }
            }
        }
        
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(journalData: JournalData())
    }
}
