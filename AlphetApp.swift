//
//  AlphetApp.swift
//  Alphet
//
//  Created by Renaissance Carr on 5/26/25.
//

import SwiftUI

@main
struct AlphetApp: App {
    
    init() {
        UITabBar.appearance().barTintColor = UIColor(Color.mirrorBlack)
        UITabBar.appearance().backgroundColor = UIColor(Color.mirrorBlack)
        UITabBar.appearance().tintColor = UIColor(Color.accentIridescent)

        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor(Color.textPrimary)
        ]
        UINavigationBar.appearance().titleTextAttributes = [
            .foregroundColor: UIColor(Color.textPrimary)
        ]
    }
    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
    }
}
