//
//  FruitFactsApp.swift
//  FruitFacts
//
//  Created by Jai  on 25/11/23.
//

import SwiftUI

@main
struct FruitFactsApp: App {
    @AppStorage("isOnbarding") var isOnbarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnbarding{
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
