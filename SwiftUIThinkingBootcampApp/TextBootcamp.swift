//
//  TextBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 22.01.2023.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text( "Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! ")
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .italic()
//            .strikethrough()
//            .font(.system(size: 20, weight: .bold, design: .monospaced))
//            .multilineTextAlignment(.leading)
//            .lineSpacing(45)
//            .baselineOffset(30)
//            .kerning(15)
//            .background(Color.blue)
            .frame(height: 200)
            .minimumScaleFactor(0.5)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
