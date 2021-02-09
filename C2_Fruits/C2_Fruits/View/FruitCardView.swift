//
//  FruitCardView.swift
//  C2_Fruits
//
//  Created by minjoo on 2021/02/10.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: - PROPERTIES
    
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false    //ctive Image size
    
    //MARK: - BODY
    
    var body: some View {
       ZStack {
            VStack {
                // Fruit: IMAGE
                Image(fruit.image)  // 원본 크기
                    .resizable()    // 화면에 꽉 차게
                    .scaledToFit()  // 원본 비율
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6) //isAnimating이 False일 때 에니메이션을 한다.
                
                // Fruit: TITLE
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                // FRUIT: HEADLINE
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)    // 문장 가운데 정렬
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // BUTTON: START
                StartButtonView()
                
            }//: VStack
        } //: ZStack : 나중에 이거 없앤 다음에 차이 보기: 없는데?
       //active image size
       .onAppear {
        withAnimation(.easeOut(duration: 0.5)){
            isAnimating = true
        }
       }
       
       // Background View
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,
               maxHeight: .infinity, alignment: .center)
       .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

//MARK: - PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[2])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
