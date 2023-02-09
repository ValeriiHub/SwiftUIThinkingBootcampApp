//
//  AnimationTimingBootcamp27.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 09.02.2023.
//

import SwiftUI

struct AnimationTimingBootcamp27: View {
    
    @State private var isAnimated = false
    let timing: Double = 10
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimated.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350: 50, height: 100)
                .animation(.linear(duration: timing), value: isAnimated)

            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350: 50, height: 100)
                .animation(.easeIn(duration: timing), value: isAnimated)

            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350: 50, height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimated)

            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350: 50, height: 100)
                .animation(.easeOut(duration: timing), value: isAnimated)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 300: 50, height: 100)
                .animation(.spring(response: 0.5,
                                   dampingFraction: 0.7,
                                   blendDuration: 1),
                           value: isAnimated)
        }
    }
}

struct AnimationTimingBootcamp27_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp27()
    }
}
