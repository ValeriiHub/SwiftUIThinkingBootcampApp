//
//  ShapesBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 22.01.2023.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.blue)
//            .foregroundColor(Color.red)
//            .stroke(Color.red, lineWidth: 20)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
//            .trim(from: 0, to: 0.5)
            .frame(width: 200, height: 100)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
