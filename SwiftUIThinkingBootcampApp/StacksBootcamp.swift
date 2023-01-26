//
//  StacksBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 26.01.2023.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .fill(Color.black)
                .frame(width: 350, height: 500)
            
            VStack(alignment: .leading, spacing: 0) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 150, height: 150)
                
                HStack(alignment: .bottom) {
                    Rectangle()
                        .fill(Color.green)
                    .frame(width: 100, height: 100)
                    
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 50, height: 50)
                }
            }
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
