//
//  AnimationBootcamp26.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 06.02.2023.
//

import SwiftUI

struct AnimationBootcamp26: View {
    
    @State private var isAnimated = false
    
    var body: some View {
        VStack {
            Button("Button") {
//                withAnimation(
//                    .default
//                        .delay(2)
//                        .repeatCount(5, autoreverses: false)
//                        .repeatForever()
//                ) {
                    isAnimated.toggle()
//                }
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : .green)
                .frame(width: isAnimated ? 100 : 300,
                       height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(.default)
            
            Spacer()
        }
    }
}

struct AnimationBootcamp26_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp26()
    }
}
