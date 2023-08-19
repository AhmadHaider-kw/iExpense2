//
//  expenseItem.swift
//  iExpense
//
//  Created by Ahmad Haider on 16/08/2023.
//

import Foundation


struct ExpensionItem : Identifiable {
    let id = UUID()
    let name : String
    let type : String
    let amount : Double
}

