//
//  Parser.swift
//  sledger
//
//  Created by Gedeon Jahns on 20.11.22.
//

import Foundation

let file = ".hledger.journal"

func getExampleTransaction() -> Transaction {
    return Transaction(
                date: "2022-10-01",
                description: "descriptive stuff",
                dispositions: [
                    Disposition(account: "account1", amount: 2),
                    Disposition(account: "account2", amount: -2)
                ]
    )
}

func getTransactions() -> [Transaction] {
    var transactions: [Transaction] = []
    
    for i in (0 ..< 10) {
        let newTransaction = Transaction(
            date: "2022-11-0" + String(i),
            description: "this is transaction #" + String(i),
            dispositions: [
                Disposition(account: "account1", amount: Float(i)),
                Disposition(account: "account2", amount: Float(-i))
            ]
        )
        transactions.append(newTransaction)
    }
    return transactions
}
