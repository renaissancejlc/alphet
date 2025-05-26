//
//  SettingsView.swift
//  Alphet
//
//  Created by Renaissance Carr on 5/26/25.
//

import SwiftUI
import SwiftUIX

struct SettingsView: View {
    @State private var isPrivate = false

    var body: some View {
        ZStack {
            Color.mirrorBlack.ignoresSafeArea()
            VisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterialDark)) {
                EmptyView()
            }
            .ignoresSafeArea()
            .opacity(0.6)

            Form {
                Section(header: Text("Privacy")) {
                    Toggle("Private Account", isOn: $isPrivate)
                }

                Section(header: Text("Account")) {
                    Button("Change Password") {
                        // TODO: Handle password change
                    }
                    Button("Log Out") {
                        // TODO: Handle logout logic
                    }
                }
            }
            .scrollContentBackground(.hidden)
            .background(Color.clear)
            .foregroundColor(.textPrimary)
            .accentColor(.highlightNeon)
        }
        .navigationTitle("Settings")
    }
}
