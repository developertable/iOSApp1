Coffee Shop App ☕
A simple iOS coffee ordering application built with SwiftUI for team members to create and manage their coffee orders.
📱 About
This app is being developed as part of an iOS Development Course Assignment. The current version demonstrates fundamental SwiftUI concepts and user interface elements, with plans for additional functionality in future updates.
✨ Features
Current Functionality

Welcome Screen: Clean home interface with navigation options
Team Member Management: View list of team members with their favorite orders
Coffee Ordering System:

Select drink type (customizable text input)
Choose coffee size (Small, Medium, Large)
Add milk and sugar options
Order summary display


Individual Member Orders: Each team member can create personalized coffee orders
Navigation: Seamless navigation between different screens

UI Components Implemented

✅ HStack, VStack, ZStack: For flexible layouts
✅ Text & SF Symbols: Typography and iconography
✅ Navigation Stack: Screen navigation with NavigationLink
✅ List: Display team members in organized list format
✅ Form: Structured input forms for order creation
✅ Buttons & Toggles: Interactive controls for user input
✅ Pickers: Segmented picker for size selection

🏗️ Architecture
Models

TeamMember: Represents individual team members with favorite orders
CoffeeOrder: Defines coffee order structure (drink type, size, milk, sugar)

Views

ContentView: Main welcome screen and navigation hub
TeamMemberListView: Displays list of team members
CoffeeOrderView: Reusable coffee order form component
OrderDetailView: Individual member order management

🚀 Getting Started
Prerequisites

Xcode 15.0 or later
iOS 17.0 or later
Swift 5.9 or later

Installation

Clone the repository

bash   git clone https://github.com/developertable/iOSApp1.git

Open iOSApp1.xcodeproj in Xcode
Build and run the project on simulator or device

📚 Learning Objectives Achieved
This project demonstrates proficiency in:

SwiftUI fundamentals and layout systems
Navigation between multiple screens
Form handling and user input management
Data modeling with Swift structs
State management with @State and @Binding
Reusable component architecture
SF Symbols integration
iOS app structure and organization

🛣️ Roadmap
Planned Features for Future Updates:

 Order history and persistence
 Price calculation system
 Order status tracking
 Push notifications for order updates
 User authentication
 Advanced coffee customization options
 Order analytics and reporting
 Dark mode support
 Accessibility improvements
 Unit and UI testing implementation

🛠️ Technical Stack

Framework: SwiftUI
Language: Swift
Platform: iOS
Architecture: MVVM pattern
Development Environment: Xcode

📄 Project Structure
iOSApp1/
├── Models/
│   ├── TeamMember.swift
│   └── CoffeeOrder.swift
├── Views/
│   ├── ContentView.swift
│   ├── TeamMemberListView.swift
│   ├── CoffeeOrderView.swift
│   └── OrderDetailView.swift
└── iOSApp1.swift
🎓 Assignment Context
This application was developed as part of an iOS Development Course to demonstrate:

Understanding of SwiftUI layout systems (HStack, VStack, ZStack)
Navigation implementation using NavigationStack
Form creation and data binding
Model-View architecture
User interface design principles
Code organization and project structure

🤝 Contributing
This is an educational project, but suggestions and improvements are welcome! Please feel free to:

Report bugs or issues
Suggest new features
Contribute code improvements
Provide feedback on UI/UX

📝 License
This project is created for educational purposes as part of an iOS Development Course assignment.
👨‍💻 Author
[Rahul Kurra]

GitHub: @developertable


This app is actively being developed as part of an iOS Development Course. More features and improvements will be added regularly as the course progresses.

Current Version: 1.0.0
Last Updated: [Sep 22 2025]
Course: iOS Development
Status: Active Development 🚧
