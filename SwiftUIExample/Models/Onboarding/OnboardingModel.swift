//
//  OnboardingModel.swift
//  SwiftUIExample
//
//  Created by Jose Torronteras on 17/04/2021.
//

import SwiftUI

struct OnboardingModel {
    
    // MARK: - Variables
    let images: [Image]
    let title: String
    let description: String
    
    // MARK: - Init
    init(image: [Image], title: String, description: String) {
        self.images = image
        self.title = title
        self.description = description
    }
}
