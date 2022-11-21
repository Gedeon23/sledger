//
//  TransactionView.swift
//  sledger
//
//  Created by Gedeon Jahns on 19.11.22.
//

import SwiftUI

struct TransactionView: View {
    var transaction: Transaction
    
    var body: some View {
        NavigationLink(destination: TransactionDetailView(transaction: transaction)) {
            VStack(alignment: .leading) {
                HStack {
                    Text(transaction.date)
                        .font(.headline)
                    Text(transaction.description)
                        .font(.subheadline)
                }

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
}

struct TransactionView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionView(
            transaction: Transaction(
                line: 68,
                date: "2022-10-01",
                description: "descriptive stuff",
                dispositions: [
                    Disposition(account: "account1", amount: 2),
                    Disposition(account: "account2", amount: -2)
                ]
            )
        )
    }
}
