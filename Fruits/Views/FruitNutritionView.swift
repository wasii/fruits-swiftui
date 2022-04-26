//
//  FruitNutritionView.swift
//  Fruits
//
//  Created by NaheedPK on 26/04/2022.
//

import SwiftUI

struct FruitNutritionView: View {
    var fruit: Fruit
    let nutrient: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrient.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrient[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                    
                }
            }
        }
    }
}

struct FruitNutritionView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutritionView(fruit: fruitData[2])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
