//
//  BindingBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 02.02.2023.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var background: Color = .green
    @State var title = "Title"
    
    var body: some View {
        ZStack {
            background
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                
                ButtonView(background: $background, title: $title)
            }
        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}

struct ButtonView: View {
    
    @Binding var background: Color
    @State var buttonColor: Color = .blue
    @Binding var title: String
    
    var body: some View {
        Button {
            background = .orange
            buttonColor = .red
            title = "New title"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}
