//
//  ExtractedFunctionsBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 02.02.2023.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var background: Color = .pink
    
    var body: some View {
        ZStack {
            // background
            background
                .ignoresSafeArea()
            
            // content
            contenLayer
            
        }
    }
    
    var contenLayer: some View {
        VStack(spacing: 20) {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                buttonPressed()
            } label: {
                Text("Press me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
    }
    
    func buttonPressed() {
        background = .yellow
    }
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}
