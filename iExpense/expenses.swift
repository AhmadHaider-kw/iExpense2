//
//  expenses.swift
//  iExpense
//
//  Created by Ahmad Haider on 16/08/2023.
//

import Foundation



class Expense : ObservableObject {
    @Published var items = [ExpensionItem]()
}
