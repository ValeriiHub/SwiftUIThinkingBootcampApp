//
//  ForEachBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 29.01.2023.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hola"]
    
    var body: some View {
        VStack {
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//
//                    Text("Index is: \(index)")
//                }
//            }
            
            ForEach(data.indices) { index in
                Text("New item: \(index) \(data[index])")
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
