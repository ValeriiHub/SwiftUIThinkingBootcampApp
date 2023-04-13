//
//  IntroView.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 12.04.2023.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signedIn") var currentUserSignedIn = false
    
    var body: some View {
        ZStack {
            // background
            RadialGradient(colors: [.purple, .blue],
                           center: .topLeading,
                           startRadius: 5,
                           endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea()
            
            // if user is signed in
            // profile view
            // else
            // onboarding view
            if currentUserSignedIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom),
                                            removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom),
                                            removal: .move(edge: .top)))
            }
            
            
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
