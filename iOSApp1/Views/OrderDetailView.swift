//
//  OrderDetailView.swift
//  iOSApp1

//  Created by Rahul Kurra on 2025-09-20.
//

import SwiftUI

struct OrderDetailView: View {
    @Binding var member: TeamMember
    @State private var order: CoffeeOrder
    
    init(member: Binding<TeamMember>) {
        self._member = member
        // Initialize with member's current favorite
        _order = State(initialValue: member.wrappedValue.favoriteOrder)
    }
    
    var body: some View {
        VStack {
            CoffeeOrderView(order: $order)
            
            Button("Place Order") {
                member.favoriteOrder = order
                // Persist to storage (UserDefaults/CoreData) if needed
            }
            .buttonStyle(.borderedProminent)
            .padding(.top)
        }
        .padding()
        .navigationTitle("\(member.name)'s Order")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        OrderDetailView(member: .constant(
            TeamMember(name: "John",
                       favoriteOrder: CoffeeOrder(drinkType: "Coffee", size: "Medium", milk: false, sugar: false))
        ))
    }
}
