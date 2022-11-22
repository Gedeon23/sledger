//
//  JournalData.swift
//  sledger
//
//  Created by Gedeon Jahns on 22.11.22.
//

import Foundation


class JournalData: ObservableObject {
    @Published var transactions: [Transaction] = getTransactions()
    
    func delete(_ transaction: Transaction) {
        transactions.removeAll { $0.line == transaction.line }
    }
    
    func add(_ transaction: Transaction) {
        transactions.append(transaction)
    }
}
