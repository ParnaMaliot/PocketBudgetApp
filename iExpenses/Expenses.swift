//
//  Expenses.swift
//  iExpenses
//
//  Created by Igor Parnadjiev on 28.3.21.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [expenseItem]() {
        didSet {
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(items) {
                UserDefaults.standard.setValue(encoded, forKey: "Items")
            }
        }
    }
    init() {
        if let items = UserDefaults.standard
            .data(forKey: "Items") {
            let decoder = JSONDecoder()
            if let decoded = try? decoder.decode([expenseItem].self, from: items) {
                self.items = decoded
                return
            }
        }
        self.items = []
    }
}
