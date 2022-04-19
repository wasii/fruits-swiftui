//
//  OnboardingView.swift
//  Fruits
//
//  Created by NaheedPK on 19/04/2022.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            ForEach(0 ..< 5) { item in
                FruitCardView()
            }
        }// - TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
