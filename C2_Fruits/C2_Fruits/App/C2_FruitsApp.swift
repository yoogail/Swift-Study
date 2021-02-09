//
//  C2_FruitsApp.swift
//  C2_Fruits
//
//  Created by minjoo on 2021/02/07.
//

import SwiftUI

@main
struct C2_FruitsApp: App {
 
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
