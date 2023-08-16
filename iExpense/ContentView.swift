//
//  ContentView.swift
//  iExpense
//
//  Created by Ahmad Haider on 12/08/2023.
//

import SwiftUI



struct ContentView: View {
    @StateObject var expenses = Expense()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(expenses.items, id: \.name) { item in
                    Text(item.name)
                }
                .onDelete(perform: removeItems)
            }
            .navigationTitle("iExpense")
            .toolbar{
                Button {
                    let expense = ExpensionItem(name: "test", type: "personal", amount: 5)
                    expenses.items.append(expense)
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
        
        .padding()
    }
    func removeItems(at offets: IndexSet) {
        expenses.items.remove(atOffsets: offets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
