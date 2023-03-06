//
//  ContextMenuBootcamp34.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 06.03.2023.
//

import SwiftUI

struct ContextMenuBootcamp34: View {
    
    @State private var bacgroundColor = Color.blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill")
                .font(.title)
            
            Text("Sfiftful Thinking")
                .font(.headline)
            
            Text("How to use context menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(bacgroundColor)
        .cornerRadius(30)
        .contextMenu {
            Button {
                bacgroundColor = .yellow
            } label: {
                Label("Share post", systemImage: "flame.fill")
            }
            
            Button {
                bacgroundColor = .red
            } label: {
                Text("Report post")
            }
            
            Button {
                bacgroundColor = .green
            } label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            }
        }
    }
}

struct ContextMenuBootcamp33_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp34()
    }
}
