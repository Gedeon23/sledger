//
//  Transaction.swift
//  sledger
//
//  Created by Gedeon Jahns on 19.11.22.
//

import Foundation

struct Comment: Hashable, Codable {
    var lineInTransaction: Int
    var content: String
}

struct Disposition: Hashable, Codable {
    var account: String
    var amount: Float
}

class Transaction: ObservableObject, Identifiable {
    static func == (lhs: Transaction, rhs: Transaction) -> Bool {
        return lhs.line == rhs.line
    }
    
    @Published var line: Int
    @Published var date: String
    @Published var description: String
    @Published var dispositions: [Disposition]
    @Published var comments: [Comment]?
    
    init(line: Int, date: String, description: String, dispositions: [Disposition]) {
        self.line = line
        self.date = date
        self.description = description
        self.dispositions = dispositions
    }
    
    public func verify() -> Bool {
        var sum: Float = 0
        for dispo in self.dispositions{
            sum += dispo.amount
        }
        if sum == 0 {
            return true
        } else {
            return false
        }
    }
}

class Transactions: ObservableObject {
    @Published var transactions: [Transaction]
    
    init(transactions: [Transaction]) {
        self.transactions = transactions
    }
}

