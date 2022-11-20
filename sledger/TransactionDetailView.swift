//
//  TransactionDetailView.swift
//  sledger
//
//  Created by Gedeon Jahns on 20.11.22.
//

import SwiftUI

struct TransactionDetailView: View {
    var transaction: Transaction
    
    // I think I'm gonna leave the comments for now
    // not part of MVP
    // var hasComments = transaction.comments != nil
    
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(transaction.description)
                        .font(.headline)
                    Text(transaction.date)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                Spacer()
            }
            
            Spacer()
                .frame(height: 20)
            
            
            
            ForEach(transaction.dispositions, id: \.self) { dispo in
                HStack {
                    Text(dispo.account)
                    Spacer()
                    Text(String(dispo.amount))
                }
            }
        }.padding()
    }
}

struct TransactionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionDetailView(transaction: getExampleTransaction())
    }
}
