//
//  ProfileView.swift
//  Alphet
//
//  Created by Renaissance Carr on 5/26/25.
//

import SwiftUI
import SwiftUIX

struct ProfileView: View {
    @State private var selectedPhoto: String? = nil
    @State private var showModal = false
    @State private var showSettings = false

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
                    VStack(spacing: 20) {
                        GlassCard {
                            HStack(spacing: 16) {
                                Image(systemName: "person.crop.circle.fill")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .foregroundColor(.white)
                                    .overlay(
                                        Circle()
                                            .stroke(Color.white.opacity(0.4), lineWidth: 2)
                                    )

                                VStack(alignment: .leading, spacing: 4) {
                                    Text("@renycarr")
                                        .font(.headline)
                                        .foregroundColor(.textPrimary)
                                    Text("Mirrorcore + Streetwear")
                                        .font(.caption)
                                        .foregroundColor(.textSecondary)
                                }

                                Spacer()
                            }
                        }

                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                            ForEach(0..<10) { index in
                                let imageName = "sample-outfit"
                                Image(imageName)
                                    .resizable()
                                    .aspectRatio(3/4, contentMode: .fill)
                                    .frame(height: 200)
                                    .clipped()
                                    .cornerRadius(12)
                                    .onTapGesture {
                                        selectedPhoto = imageName
                                        showModal = true
                                    }
                            }
                        }
                        .padding(.horizontal)
                    }
                    .padding()
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            showSettings = true
                        }) {
                            Image(systemName: "gearshape")
                                .foregroundColor(.white)
                        }
                    }
                }
                .background(
                    NavigationLink(destination: SettingsView(), isActive: $showSettings) {
                        EmptyView()
                    }
                )
                .navigationTitle("My Profile")
            }
            .sheet(isPresented: $showModal) {
                if let imageName = selectedPhoto {
                    ZStack {
                        Color.black.ignoresSafeArea()
                        Image(imageName)
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }
                }
            }
        }
    }
}
