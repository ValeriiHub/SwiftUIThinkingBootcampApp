//
//  StateBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 01.02.2023.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var background: Color = .green
    @State var myTitle = "My Title"
    @State var count = 0
    
    var body: some View {
        ZStack {
            // background
            background
                .ignoresSafeArea()
            
            // content
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        background = .red
                        myTitle = "Button 1 was pressed"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        background = .purple
                        myTitle = "Button 2 was pressed"
                        count -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
