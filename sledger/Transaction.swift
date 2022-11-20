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

struct Transaction: Hashable, Codable {
    var date: String
    var description: String
    var dispositions: [Disposition]
    var comments: [Comment]?
    
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

