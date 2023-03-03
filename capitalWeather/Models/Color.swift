//
//  Color.swift
//  capitalWeather
//
//  Created by Maria Kharybina on 03/02/2023.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let extra = Color("ExtraColor")
}
