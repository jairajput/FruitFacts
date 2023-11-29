//
//  FruitCardView.swift
//  FruitFacts
//
//  Created by Jai  on 29/11/23.
//

import SwiftUI

struct FruitCardView: View {
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing:20) {
                
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red:0 , green: 0 , blue: 0,opacity: 0.15), radius: 8 , x:6 ,y:8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                Text("BlueBerry") // Title
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red:0 , green: 0 , blue: 0,opacity: 0.15), radius: 2 , x:2 ,y:2)
                
                Text("BlueBerry Are Sweet And Nutritious and also they are popular all over the world")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal , 16)
                    .frame(maxWidth: 480)
                
                StartButtonView()
            }
        }
        .onAppear{
            withAnimation(.easeInOut(duration: 0.5)){
                isAnimating = true
            }
        }
        
        
        .frame(minWidth: 0, maxWidth: .infinity ,minHeight: 0 , maxHeight: .infinity,alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueBerryLight"), Color("ColorBlueBerryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal,20)
    }
}

#Preview {
    FruitCardView()
        .previewLayout(.fixed(width: 320, height: 640))
}
