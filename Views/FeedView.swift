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
                ScrollView {
                    VStack(spacing: 24) {
                        GlassCard {
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Welcome to Alphet")
                                    .font(.title2)
                                    .foregroundColor(.accentIridescent)
                                Text("Daily fit inspiration from the community")
                                    .font(.caption)
                                    .foregroundColor(.textSecondary)
                            }
                        }

                        ForEach(0..<5) { index in
                            GlassCard {
                                VStack(alignment: .leading, spacing: 8) {
                                    HStack(spacing: 12) {
                                        Image(systemName: "person.crop.circle.fill")
                                            .resizable()
                                            .frame(width: 36, height: 36)
                                            .foregroundColor(.accentIridescent)
                                            .overlay(Circle().stroke(Color.white.opacity(0.2), lineWidth: 1))
                                        Text("@user\(index)")
                                            .foregroundColor(.accentIridescent)
                                            .font(.subheadline)
                                    }

                                    Image("sample-outfit")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(height: 240)
                                        .clipped()
                                        .cornerRadius(10)

                                    Text("Loving this layered look 🌫️ #mirrorcore")
                                        .font(.caption)
                                        .foregroundColor(.textSecondary)
                                }
                            }
                        }
                    }
                    .padding()
                }
                .navigationTitle("Alphet")
            }
            .accentColor(.accentIridescent)
        }
    }
}
