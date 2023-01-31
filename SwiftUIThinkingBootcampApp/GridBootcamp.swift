//
//  GridBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 30.01.2023.
//

import SwiftUI

struct GridBootcamp: View {
    
    let colums: [GridItem] = [
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(100), spacing: nil, alignment: nil),
//        GridItem(.fixed(75), spacing: nil, alignment: nil)
        
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        
//        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: 10, maximum: 200), spacing: 2, alignment: nil),
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(Color.orange)
                .frame(height: 300)
            
            LazyVGrid(columns: colums,
                      alignment: .center ,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders]) {
                
                Section {
                    ForEach(0..<12) { item in
                        Rectangle()
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue)
                }
                
                Section {
                    ForEach(0..<12) { item in
                        Rectangle()
                            .fill(Color.green)
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.red)
                }
            }
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
