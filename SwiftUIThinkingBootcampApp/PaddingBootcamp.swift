//
//  PaddingBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 27.01.2023.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the discription of what we will do on this sreen.")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(20)
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
        )
        .padding(.horizontal, 10)
    }
}

struct PaddingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}
