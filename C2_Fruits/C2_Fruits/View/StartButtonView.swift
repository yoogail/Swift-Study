//
//  StartButtonView.swift
//  C2_Fruits
//
//  Created by minjoo on 2021/02/10.
//

import SwiftUI

struct StartButtonView: View {
    
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    
    var body: some View {
        Button(action: {
            print("Exit the onboarding")
        }) {
            HStack {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            } //HStack
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        } //Button
        .accentColor(Color.white)
    }
}
    //MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
          .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
          .previewLayout(.sizeThatFits)
    }
}
