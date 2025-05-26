//
//  Theme.swift
//  Alphet
//
//  Created by Renaissance Carr on 5/26/25.
//

import SwiftUI

extension Color {
    static let mirrorBlack = Color(red: 10/255, green: 10/255, blue: 10/255)
    static let glassWhite = Color.white.opacity(0.05)
    static let accentBlue = Color.blue.opacity(0.6)
    static let textPrimary = Color.white
    static let textSecondary = Color.gray
}
extension Font {
    static let heading = Font.system(size: 24, weight: .semibold, design: .rounded)
    static let bodyText = Font.system(size: 16, weight: .regular, design: .rounded)
    static let caption = Font.system(size: 12, weight: .light, design: .rounded)
}
