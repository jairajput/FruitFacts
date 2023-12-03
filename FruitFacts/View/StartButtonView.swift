//
//  StartButtonView.swift
//  FruitFacts
//
//  Created by Jai  on 29/11/23.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage ("isOnbarding") var isOnboarding:Bool?
    var body: some View {
        
        Button(action: {
            isOnboarding = false
        }) {
            
            HStack(spacing:8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal ,16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white , lineWidth:1.25)
            )
            
    }
        .accentColor(Color.white)
        
    }
}

#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
}
