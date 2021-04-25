//
//  ImageTiles.swift
//  SwiftUIExample
//
//  Created by Jose Torronteras on 14/04/2021.
//

import SwiftUI

/// Description
struct ImageTiles: ViewModifier {
    let width: CGFloat
    let heigth: CGFloat
    
    /// Description
    /// - Parameter content: content description
    /// - Returns: description
    func body(content: Content) -> some View {
        content
        //.resizable()
        .scaledToFill()
        .frame(width: self.width, height: self.heigth, alignment: .center)
        .background(Color.gray)
        .cornerRadius(24)
        .shadow(color: Color.Shadows.imageTilesShadowColor, radius: 12, x: 0.0, y: 16.0)
    }
}

extension View {
    /// Description
    /// - Parameters:
    ///   - width: width description
    ///   - heigth: heigth description
    /// - Returns: description
    public func imageTiles(width: CGFloat = 50, heigth: CGFloat = 50) -> some View {
        modifier(ImageTiles(width: width, heigth: heigth))
    }
}
