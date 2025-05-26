//
//  GlassCard.swift
//  Alphet
//
//  Created by Renaissance Carr on 5/26/25.
//

import SwiftUI
import SwiftUIX

struct GlassCard<Content: View>: View {
    var content: () -> Content

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.glassWhite)
                .background(
                    VisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterialDark)) {
                        EmptyView()
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.accentIridescent.opacity(0.2), lineWidth: 1.2)
                )
                .shadow(color: Color.accentIridescent.opacity(0.35), radius: 8, x: 0, y: 6)

            content()
                .padding()
        }
        .padding(.horizontal)
    }
}
