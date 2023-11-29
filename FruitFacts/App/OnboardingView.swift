//
//  OnboardingView.swift
//  FruitFacts
//
//  Created by Jai  on 29/11/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        
        TabView{
            ForEach(0..<5) { item in
                
                FruitCardView()
                
            }
        }
            .tabViewStyle(PageTabViewStyle())
            .padding(.vertical,20)
        }
    }


#Preview {
    OnboardingView()
}
