//
//  OnboardingView.swift
//  FruitFacts
//
//  Created by Jai  on 29/11/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        var fruits: [Fruit] = fruitData
        
        TabView{
            ForEach(fruits[0...5]) { item in
                
                FruitCardView(fruit: item)
            
                
            }
        }
            .tabViewStyle(PageTabViewStyle())
            .padding(.vertical,20)
        }
    }


#Preview {
    OnboardingView()
}
