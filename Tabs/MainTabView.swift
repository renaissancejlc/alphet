//
//  MainTabView.swift
//  Alphet
//
//  Created by Renaissance Carr on 5/26/25.
//

import SwiftUI
import SwiftUIX

struct MainTabView: View {
    var body: some View {
        ZStack {
            Color.mirrorBlack.ignoresSafeArea()
            VisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterialDark)) {
                EmptyView()
            }
            .ignoresSafeArea()
            .opacity(0.6)

            TabView {
                FeedView()
                    .tabItem {
                        Label("Feed", systemImage: "house")
                    }

                CameraView()
                    .tabItem {
                        Label("Post", systemImage: "camera")
                    }

                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.circle")
                    }
            }
        }
    }
}
