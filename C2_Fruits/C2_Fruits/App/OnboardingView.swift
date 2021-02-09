//
//  OnboardingView.swift
//  C2_Fruits
//
//  Created by minjoo on 2021/02/10.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        TabView{
            ForEach(fruits[0...5]) { item in //0,1,2,3,4,5 : 6장
                FruitCardView(fruit: item)

            }//: Loop
        }//: Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

    //MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
