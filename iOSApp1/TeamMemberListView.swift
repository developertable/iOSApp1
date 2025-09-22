//
//  TeamMemberListView.swift
//  iOSApp1
//
//  Created by Rahul Kurra on 2025-09-20.
//


import SwiftUI

struct TeamMemberListView: View {
    @State private var teamMembers: [TeamMember] = [
        TeamMember(name: "John", favoriteOrder: CoffeeOrder(drinkType: "Coffee", size: "Medium", milk: false, sugar: false)),
        TeamMember(name: "Ava", favoriteOrder: CoffeeOrder(drinkType: "Latte", size: "Small", milk: true, sugar: false)),
        TeamMember(name: "Mike", favoriteOrder: CoffeeOrder(drinkType: "Cappuccino", size: "Large", milk: true, sugar: true)),
        TeamMember(name: "Sarah", favoriteOrder: CoffeeOrder(drinkType: "Espresso", size: "Small", milk: false, sugar: true))
    ]
    
    var body: some View {
        List {
            ForEach(teamMembers.indices, id: \.self) { i in
                NavigationLink(destination: OrderDetailView(member: $teamMembers[i])) {
                    HStack {
                        // Profile image using SF Symbol
                        Image(systemName: "person.circle.fill")
                            .font(.title2)
                            .foregroundColor(.brown)
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text(teamMembers[i].name)
                                .font(.headline)
                            
                            HStack {
                                Text("Favorite:")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                
                                Text("\(teamMembers[i].favoriteOrder.size) \(teamMembers[i].favoriteOrder.drinkType)")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                            
                            // Add-ons display
                            HStack {
                                if teamMembers[i].favoriteOrder.milk {
                                    Label("Milk", systemImage: "drop.fill")
                                        .font(.caption2)
                                        .foregroundColor(.blue)
                                }
                                
                                if teamMembers[i].favoriteOrder.sugar {
                                    Label("Sugar", systemImage: "cube.fill")
                                        .font(.caption2)
                                        .foregroundColor(.brown)
                                }
                            }
                        }
                        
                        Spacer()
                        
                        // Coffee cup symbol
                        Image(systemName: "cup.and.saucer")
                            .foregroundColor(.orange)
                    }
                    .padding(.vertical, 4)
                }
            }
        }
        .navigationTitle("Team Members")
    }
}

#Preview {
    NavigationStack {
        TeamMemberListView()
    }
}
