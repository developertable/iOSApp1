//
//  CoffeeOrderView.swift
//  iOSApp1
//
//  Created by Rahul Kurra on 2025-09-20.
//


import SwiftUI

struct CoffeeOrderView: View {
    @Binding var order: CoffeeOrder
    
    var body: some View {
        Form {
            Section(header:
                HStack {
                    Image(systemName: "cup.and.saucer")
                    Text("Drink Selection")
                }
            ) {
                TextField("Drink Type", text: $order.drinkType)
                    .textFieldStyle(.roundedBorder)
                
                Picker("Size", selection: $order.size) {
                    Text("Small").tag("Small")
                    Text("Medium").tag("Medium")
                    Text("Large").tag("Large")
                }
                .pickerStyle(.segmented)
            }
            
            Section(header:
                HStack {
                    Image(systemName: "plus.circle")
                    Text("Add-ons")
                }
            ) {
                HStack {
                    Toggle("Milk", isOn: $order.milk)
                    Image(systemName: "drop.fill")
                        .foregroundColor(.blue)
                }
                
                HStack {
                    Toggle("Sugar", isOn: $order.sugar)
                    Image(systemName: "cube.fill")
                        .foregroundColor(.brown)
                }
            }
            
            // Order Summary Section
            Section(header: Text("Order Summary")) {
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("Drink:")
                        Spacer()
                        Text(order.drinkType.isEmpty ? "Not selected" : order.drinkType)
                            .foregroundColor(.secondary)
                    }
                    
                    HStack {
                        Text("Size:")
                        Spacer()
                        Text(order.size)
                            .foregroundColor(.secondary)
                    }
                    
                    HStack {
                        Text("Milk:")
                        Spacer()
                        Text(order.milk ? "Yes" : "No")
                            .foregroundColor(.secondary)
                    }
                    
                    HStack {
                        Text("Sugar:")
                        Spacer()
                        Text(order.sugar ? "Yes" : "No")
                            .foregroundColor(.secondary)
                    }
                }
            }
        }
        .navigationTitle("Coffee Order")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        CoffeeOrderView(order: .constant(
            CoffeeOrder(drinkType: "Coffee", size: "Medium", milk: true, sugar: false)
        ))
    }
}
