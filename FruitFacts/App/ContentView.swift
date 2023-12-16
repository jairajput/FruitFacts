//
//  ContentView.swift
//  FruitFacts
//
//  Created by Jai  on 25/11/23.
//

import SwiftUI

struct ContentView: View {
  
  
  @State private var isShowingSettings: Bool = false
  
  var fruits: [Fruit] = fruitData



  var body: some View {
    NavigationView {
      List {
        ForEach(fruits.shuffled()) { item in
          NavigationLink(destination: FruitDetailView(fruit: item)) {
            FruitRowView(fruit: item)
              .padding(.vertical, 4)
          }
        }
      }
      .navigationTitle("Fruits")
      .navigationBarItems(
        trailing:
          Button(action: {
            isShowingSettings = true
          }) {
            Image(systemName: "slider.horizontal.3")
          } 
          .sheet(isPresented: $isShowingSettings) {
            SettingsView()
          }
      )
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}

#Preview {
    ContentView()
}
