//
//  ExtractSubviewsBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 02.02.2023.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItemView(title: "Apples", count: 1, color: .red)
            MyItemView(title: "Oranges", count: 10, color: .orange)
            MyItemView(title: "Bananas", count: 34, color: .yellow)
        }
    }
}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

struct MyItemView: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
