//
//  FruitModel.swift
//  FruitFacts
//
//  Created by Jai  on 01/12/23.
//

import SwiftUI

struct Fruit:Identifiable {
    var id = UUID()
    var title:String
    var headline:String
    var image:String
    var gradientColors:[Color]
    var description:String
    var nutrition:[String]
}
