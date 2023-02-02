//
//  ConditionalBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 02.02.2023.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle = false
    @State var showRectangle = false
    @State var isLoading = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("Is loading: \(showRectangle.description)") {
                isLoading.toggle()
            }
            
            
            if isLoading {
                ProgressView()
            } else {
                Button("Circle button: \(showCircle.description)") {
                    showCircle.toggle()
                }
                
                Button("Rectangle button: \(showRectangle.description)") {
                    showRectangle.toggle()
                }
                
                if showCircle {
                    Circle()
                        .frame(width: 100, height: 100)
                }
                
                if showRectangle {
                    Rectangle()
                        .frame(width: 100, height: 100)
                }
                
                if showCircle || showRectangle {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 200, height: 100)
                }
            }
            Spacer()
        }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
