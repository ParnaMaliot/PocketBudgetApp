//
//  ExpenseItem.swift
//  iExpenses
//
//  Created by Igor Parnadjiev on 28.3.21.
//

import Foundation

struct expenseItem: Identifiable, Codable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Int
}
