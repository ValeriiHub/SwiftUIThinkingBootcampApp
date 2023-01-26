//
//  Background&OverlayBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 26.01.2023.
//

import SwiftUI

struct Background_OverlayBootcamp: View {
    var body: some View {
        VStack(spacing: 120) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(
    //                Color.red
    //                LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing)
                    Circle()
                        .fill(LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing))
                        .frame(width: 100, height: 100)
                )
                .background(
                    Circle()
                        .fill(Color.red)
                        .frame(width: 120, height: 120)
            )
            
            Circle()
                .fill(Color.pink)
                .frame(width: 100, height: 100)
                .overlay (
                    Text("1")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                )
                .background(
                    Circle()
                        .fill(Color.purple)
                        .frame(width: 120, height: 120)
                )
            
            Rectangle()
                .frame(width: 100, height: 100)
                .overlay(
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 50, height: 50)
                    , alignment: .center
                )
                .background(
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 150, height: 150)
                )
            
            Image(systemName: "heart.fill")
                .font(.system(size: 50))
                .foregroundColor(.red)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(colors: [.yellow, .blue],
                                           startPoint: .leading,
                                           endPoint: .trailing)
                        )
                        .frame(width: 100, height: 100)
                        .shadow(color: .black, radius: 10, y: 10)
                        .overlay(
                            Circle()
                                .fill(Color.purple)
                                .frame(width: 35, height: 35)
                                .overlay(
                                    Text("5")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                )
                                .shadow(color: .black, radius: 5, y: 5)
                            , alignment: .bottomTrailing
                        )
                )
        }
    }
}

struct Background_OverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Background_OverlayBootcamp()
    }
}
