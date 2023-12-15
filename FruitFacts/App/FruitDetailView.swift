//
//  FruitDetailView.swift
//  FruitFacts
//
//  Created by Jai  on 15/12/23.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    var body: some View {
        NavigationView{
            ScrollView(.vertical ,showsIndicators:false){
                VStack(alignment: .center , spacing: 20) {
                    
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading , spacing: 20) {
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        SourceLinkView()
                            .padding(.top , 10)
                            .padding(.bottom , 40)
                    }
                    .padding(.horizontal , 20 )
                    .frame(maxWidth:640 , alignment: .center)
                    
                }
                .navigationBarTitle(fruit.title , displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

#Preview {
    FruitDetailView(fruit: fruitData[0])
}
