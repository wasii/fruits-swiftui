//
//  ContentView.swift
//  Fruits
//
//  Created by NaheedPK on 19/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitData
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitListRow(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Fruits")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
