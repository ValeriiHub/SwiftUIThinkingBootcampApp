//
//  SliderBootcamp42.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 15.03.2023.
//

import SwiftUI

struct SliderBootcamp42: View {
    
    @State private var sliderValue: Double = 3
    @State private var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(//"\(sliderValue)"
                String(format: "%.1f", sliderValue)
            )
            .foregroundColor(color)
//            Slider(value: $sliderValue)
            
//            Slider(value: $sliderValue, in: 0...100)
            
//            Slider(value: $sliderValue, in: 1...5, step: 1)
            
            Slider(value: $sliderValue,
                   in: 1...5,
                   step: 1,
                   onEditingChanged: { _ in
                color = .green
            },
                   minimumValueLabel:
                    Text("1")
                .font(.largeTitle)
                .foregroundColor(.orange),
                   maximumValueLabel: Text("5"),
                   label: {
                Text("Title")
            })
            
            .accentColor(.red)
        }
        
    }
}

struct SliderBootcamp42_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp42()
    }
}
