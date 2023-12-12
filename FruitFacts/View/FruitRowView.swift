//
//  FruitRowView.swift
//  FruitFacts
//
//  Created by Jai  on 12/12/23.
//

import SwiftUI

struct FruitRowView: View {
    
    var fruit:Fruit
    var body: some View {
        HStack{
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()

            .frame(width: 80,height: 80 , alignment: .center)
            .shadow(color: Color(red:0 ,green: 0 ,blue: 0 , opacity: 0.3), radius: 3, x:2 ,y:2)
            .background( LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(8)
            VStack(alignment: .leading , spacing:  5){
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .foregroundColor(Color.secondary)
            }
        }
    }
}

#Preview {
    FruitRowView(fruit: fruitData[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
