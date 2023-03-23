//
//  OnAppearBootcamp46.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 23.03.2023.
//

import SwiftUI

struct OnAppearBootcamp46: View {
    
    @State private var myText = "Start text"
    @State private var count = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text"
                }
            }
            .onDisappear {
                myText = "Ending text"
            }
            .navigationTitle("On Appear \(count)")
        }
    }
}

struct OnAppearBootcamp46_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp46()
    }
}
