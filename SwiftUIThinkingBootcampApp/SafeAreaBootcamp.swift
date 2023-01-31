//
//  SafeAreaBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 31.01.2023.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
//        ZStack {
//            Color.blue
//                .ignoresSafeArea()
//
//
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity)
//        .background(Color.red)
//        }
        
//        ZStack {
//            Color.blue
//                .ignoresSafeArea()
            
            ScrollView {
                VStack {
                    Text("Title")
                        .font(.largeTitle)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    
                    ForEach(0..<10) { index in
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding(20)
                    }
                }
            }
            .background(
                Color.red
                    .ignoresSafeArea()
            )
//        }
        
        
        
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
