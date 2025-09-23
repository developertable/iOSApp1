//
//  ContentView.swift
//  iOSApp1
//
//  Created by Rahul Kurra on 2025-09-19.




import SwiftUI

struct ContentView: View {
    @State private var myOrder = CoffeeOrder(drinkType: "Coffee", size: "Medium", milk: false, sugar: false)
    
    var body: some View {
        NavigationStack {
            ZStack {
                // Background gradient
                LinearGradient(
                    gradient: Gradient(colors: [Color.brown.opacity(0.2), Color.orange.opacity(0.1)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 24) {
                    // Header with HStack
                    HStack {
                        Image(systemName: "cup.and.saucer.fill")
                            .font(.title)
                            .foregroundColor(.brown)
                        
                        Text("Coffee App")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.brown)
                        
                        Image(systemName: "cup.and.saucer.fill")
                            .font(.title)
                            .foregroundColor(.brown)
                    }
                    
                    // Coffee image or symbol
                    VStack {
                        Image(systemName: "mug.fill")
                            .font(.system(size: 100))
                            .foregroundColor(.brown)
                        
                        Text("Welcome to Coffee Shop")
                            .font(.title2)
                            .foregroundColor(.secondary)
                    }
                    .padding(.bottom, 20)
                    
                    // Navigation buttons in VStack
                    VStack(spacing: 16) {
                        NavigationLink("Order for Me") {
                            CoffeeOrderView(order: $myOrder)
                        }
                        .buttonStyle(.borderedProminent)
                        .controlSize(.large)
                        
                        NavigationLink("Team Members") {
                            TeamMemberListView()
                        }
                        .buttonStyle(.bordered)
                        .controlSize(.large)
                        
                        // Additional info in HStack
                        HStack {
                            Image(systemName: "clock")
                                .foregroundColor(.secondary)
                            Text("Open 7 AM - 6 PM")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                    
                    Spacer()
                }
                .padding()
            }
            .navigationTitle("Welcome")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
