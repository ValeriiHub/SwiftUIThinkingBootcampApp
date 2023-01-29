//
//  SpacerBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 28.01.2023.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        HStack(spacing: 0) {
            Spacer(minLength: 50)
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
        }
        .background(Color.blue)
//        .background(Color.blue)
        .padding(.horizontal, 200)
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
