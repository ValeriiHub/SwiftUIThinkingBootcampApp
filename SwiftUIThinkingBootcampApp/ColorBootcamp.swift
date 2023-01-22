//
//  ColorBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 22.01.2023.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        Circle()
            .fill(
                Color.primary
//                Color(UIColor.red)
//                Color("MyColor")
            )
            .frame(width: 200, height: 200)
    }
}

struct ColorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootcamp()
    }
}
