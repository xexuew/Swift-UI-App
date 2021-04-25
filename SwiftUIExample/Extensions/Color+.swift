//
//  Color+.swift
//  SwiftUIExample
//
//  Created by Jose Torronteras on 08/04/2021.
//

import SwiftUI

let defaultColor: Color = .white

extension Color {
    
    // MARK: - Background
    public struct Background {
        /// #FFFFFF 100%
        public static var linearBackground1: Color {
            return Color("backgroundColorLG1")
        }
        /// #F4F7FF 100%
        public static var linearBackground2: Color {
            return Color("backgroundColorLG2")
        }
        /// Gradient
        public static var gradientBackground: Gradient {
            return Gradient(colors: [self.linearBackground1, self.linearBackground2])
        }
    }
    
    // MARK: - Shadows
    public struct Shadows {
        /// #0D253C, 100 %
        public static var imageTilesShadowColor: Color {
            return Color(.sRGB, red: 0.051, green: 0.145, blue: 0.235, opacity: 0.24)
        }
    }
    
    // MARK
}
