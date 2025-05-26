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
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
    }
}

