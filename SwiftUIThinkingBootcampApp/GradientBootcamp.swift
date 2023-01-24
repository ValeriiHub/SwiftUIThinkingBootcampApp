//
//  GradientBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 24.01.2023.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
//                LinearGradient(gradient: Gradient(colors: [.blue, .red]),
//                               startPoint: .leading,
//                               endPoint: .trailing)
                
//                RadialGradient(gradient: Gradient(colors: [.blue, .red]),
//                               center: .topLeading,
//                               startRadius: 5,
//                               endRadius: 250)
                
                AngularGradient(gradient: Gradient(colors: [.blue, .red]),
                                center: .center,
                                angle: .degrees(45))
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientBootcamp()
    }
}
