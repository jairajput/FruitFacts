//
//  FruitHeaderView.swift
//  FruitFacts
//
//  Created by Jai  on 15/12/23.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit : Fruit
    @State private var isAnimatingImage:Bool = false
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)

            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color:Color(red:0 , green: 0,blue:0, opacity: 0.15),radius: 8 , x:6 , y: 8)
                .padding(.vertical , 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)

        }
        .frame(height:440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatingImage = true
            }
        }
        
        
    }
}

#Preview {
    FruitHeaderView(fruit: fruitData[0])
        .previewLayout(.fixed(width: 375, height: 440))
}
