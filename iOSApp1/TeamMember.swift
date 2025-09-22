//
//  TeamMember.swift
//  iOSApp1
//
//  Created by Rahul Kurra on 2025-09-20.
//


import Foundation

struct TeamMember: Identifiable, Hashable {
    let id = UUID()
    var name: String
    var favoriteOrder: CoffeeOrder   // non-optional for simpler bindings
}
