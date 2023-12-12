//
//  ContentView.swift
//  FruitFacts
//
//  Created by Jai  on 25/11/23.
//

import SwiftUI


struct ContentView: View {
    var fruits:[Fruit] = fruitData
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                    
                }
            }
            .navigationTitle("Fruits")
        }
        
    }
}

#Preview {
    ContentView()
}
