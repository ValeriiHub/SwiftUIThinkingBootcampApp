//
//  TransitionBootcamp28.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 09.02.2023.
//

import SwiftUI

struct TransitionBootcamp28: View {
    
    @State private var showView = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("BUTTON") {
                    showView.toggle()
                }
                
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(.slide)
//                    .transition(.move(edge: .bottom))
                    .transition(.asymmetric(insertion: .slide,
                                            removal: .move(edge: .bottom)))
                
                
                    .animation(.easeInOut)
//                    .transition(.opacity.animation(.easeInOut))
//                    .transition(.scale.animation(.easeInOut))
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct TransitionBootcamp28_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp28()
    }
}
