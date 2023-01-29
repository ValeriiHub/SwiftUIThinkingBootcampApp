//
//  InitializerBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 29.01.2023.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let titile: String
    
//    init(count: Int, titile: String) {
//        self.count = count
//        self.titile = titile
//
//        if titile == "Apples" {
//            self.backgroundColor = .red
//        } else {
//            self.backgroundColor = .orange
//        }
//    }
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            titile = "Apples"
            self.backgroundColor = .red
        } else {
            titile = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(titile)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        InitializerBootcamp(count: 5, fruit: .apple)
    }
}
