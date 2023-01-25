//
//  ImageBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 25.01.2023.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("diagram")
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .scaledToFill()
//            .scaledToFit()
            .frame(width: 300, height: 200)
//            .foregroundColor(.red)
//            .clipped()
            .cornerRadius(20)
            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 25)
                Ellipse()
            )
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
