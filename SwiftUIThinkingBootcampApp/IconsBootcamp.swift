//
//  IconsBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 24.01.2023.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .resizable()
            .scaledToFit()
//            .font(.system(size: 200))
            .foregroundColor(.red)
            .frame(width: 200, height: 200)
//            .clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
