//
//  Balance.swift
//  PocketBudgetApp
//
//  Created by Igor Parnadjiev on 7.12.20.
//

import Foundation


class Balance {
    var currentBalance: String?
    var totalTripAmount: String?
    
    init (currentBalance: String, totalTripAmount: String) {
        self.currentBalance = currentBalance
        self.totalTripAmount = totalTripAmount
    }
}
