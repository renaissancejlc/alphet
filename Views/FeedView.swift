//
//  FeedView.swift
//  Alphet
//
//  Created by Renaissance Carr on 5/26/25.
//

import SwiftUI
import SwiftUIX

struct FeedView: View {
    var body: some View {
        ZStack {
            Color.mirrorBlack.ignoresSafeArea()
            VisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterialDark)) {
                EmptyView()
            }
            .ignoresSafeArea()
            .opacity(0.6)

            NavigationView {
                Text("Feed of outfit posts")
                    .foregroundColor(.mirrorBlack)
                    .navigationTitle("Alphet")
            }
        }
    }
}
