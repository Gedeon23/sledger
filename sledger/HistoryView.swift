//
//  HistoryView.swift
//  sledger
//
//  Created by Gedeon Jahns on 19.11.22.
//

import SwiftUI


struct HistoryView: View {
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
            
            List(getTransactions(), id: \.self) { transaction in
                TransactionView(transaction: transaction)
            }
        }
        
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
