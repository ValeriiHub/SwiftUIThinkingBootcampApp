//
//  ColorPickerBootcamp39.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 10.03.2023.
//

import SwiftUI

struct ColorPickerBootcamp39: View {
    
    @State var background = Color.green
    
    var body: some View {
        ZStack {
            background
                .ignoresSafeArea()
            
            ColorPicker("Select a color",
                        selection: $background,
                        supportsOpacity: true)
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

struct ColorPickerBootcamp39_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp39()
    }
}
