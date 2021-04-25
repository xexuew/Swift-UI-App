//
//  OnboardingView.swift
//  SwiftUIExample
//
//  Created by Jose Torronteras on 08/04/2021.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - Variables
    @ObservedObject private var viewModel = OnboardingViewModel()
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Color.Background.gradientBackground,
                           startPoint: .bottomLeading,
                           endPoint: .topTrailing)
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                VStack(alignment: .center, spacing: 17, content: {
                    HStack(alignment: .center, spacing: 12.0, content: {
                        Image("imagetiles1")
                            .resizable()
                            .imageTiles(width: 92, heigth: 157)

                        Image("imagetiles2")
                            .resizable()
                            .imageTiles(width: 190, heigth: 157)

                    })
                    HStack(alignment: .center, spacing: 12.0, content: {
                        Image("imagetiles3")
                            .resizable()
                            .imageTiles(width: 190, heigth: 157)
                        Image("imagetiles4")
                            .resizable()
                            .imageTiles(width: 92, heigth: 157)
                    })
                })
                
                VStack {
                    Text("e")
                    Text("e")
                    Text("e")
                    
                }
                
                .cornerRadius(28)
                .background(Color.red)
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
