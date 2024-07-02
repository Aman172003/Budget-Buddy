//
//  Budget_BuddyApp.swift
//  Budget Buddy
//
//  Created by Aman on 26/04/24.
//

import SwiftUI
import Firebase

@main
struct Budget_BuddyApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationView{
                WelcomeView()
            }
        }
    }
}
