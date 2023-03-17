//
//  DarkModeBootcamp44.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 16.03.2023.
//

import SwiftUI

struct DarkModeBootcamp44: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This is color PIMARY")
                        .foregroundColor(.primary)
                    Text("This is color SECONDARY")
                        .foregroundColor(.secondary)
                    Text("This is color WHITE")
                        .foregroundColor(.white)
                    Text("This is color BLACK")
                        .foregroundColor(.black)
                    Text("This is color RED")
                        .foregroundColor(.red)
                    Text("This is color globally adaptive!")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This is color locally adaptive!")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

struct DarkModeBootcamp44_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkModeBootcamp44()
                .preferredColorScheme(.light)
            
            DarkModeBootcamp44()
                .preferredColorScheme(.dark)
        }
    }
}
