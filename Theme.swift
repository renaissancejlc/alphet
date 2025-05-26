//
//  Theme.swift
//  Alphet
//
//  Created by Renaissance Carr on 5/26/25.
//

import SwiftUI

extension Color {
    static let mirrorBlack = Color(red: 5/255, green: 5/255, blue: 8/255)
    static let glassWhite = Color.white.opacity(0.03)
    static let accentIridescent = Color(red: 180/255, green: 85/255, blue: 255/255)
    static let highlightNeon = Color(red: 0/255, green: 255/255, blue: 200/255)
    static let textPrimary = Color(red: 240/255, green: 240/255, blue: 255/255)
    static let textSecondary = Color(red: 150/255, green: 150/255, blue: 180/255)
}
extension Font {
    static let heading = Font.system(size: 24, weight: .semibold, design: .rounded)
    static let bodyText = Font.system(size: 16, weight: .regular, design: .rounded)
    static let caption = Font.system(size: 12, weight: .light, design: .rounded)
}
