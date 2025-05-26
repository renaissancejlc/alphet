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
            VisualEffectView(effect: UIBlurEffect(style: .systemThinMaterialDark)) {
                EmptyView()
            }
            .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.white.opacity(0.1), lineWidth: 1)
            )
            .shadow(color: Color.black.opacity(0.6), radius: 10, x: 0, y: 10)

            content()
                .padding()
        }
        .padding(.horizontal)
    }
}
