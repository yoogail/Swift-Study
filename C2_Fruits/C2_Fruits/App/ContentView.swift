//
//  ContentView.swift
//  C2_Fruits
//
//  Created by minjoo on 2021/02/07.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    var fruit : [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(fruit){ item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }//: Loop
            }//: List
            .navigationTitle("Fruits")
        }//: NavigationVeiw
        
    }//: NBodty
}
    //MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit: fruitsData)
    }
}
