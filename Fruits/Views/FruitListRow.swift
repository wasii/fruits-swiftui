//
//  FruitListRow.swift
//  Fruits
//
//  Created by NaheedPK on 26/04/2022.
//

import SwiftUI

struct FruitListRow: View {
    var fruit: Fruit
    var body: some View {
//        VStack {
            HStack {
                Image(fruit.image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80, alignment: .center)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 3)
                    .background(
                        LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
                    )
                        .cornerRadius(8)
                VStack(alignment: .leading) {
                    Text(fruit.title)
                        .font(.title)
                        .fontWeight(.bold)
                    Text(fruit.headline)
                        .font(.caption)
                        .foregroundColor(.secondary)
                        
                }
            }
//        }
    }
}

struct FruitListRow_Previews: PreviewProvider {
    static var previews: some View {
        FruitListRow(fruit: fruitData[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
