//
//  TapGestureBootcamp48.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 23.03.2023.
//

import SwiftUI

struct TapGestureBootcamp48: View {
    
    @State private var isSelected = false
    
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : .red )
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            }
            
            Text("Tap Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
            
            Spacer()
        }
        .padding(40)
    }
}

struct TapGestureBootcamp48_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBootcamp48()
    }
}
