//
//  TernaryBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 02.02.2023.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting state!!!" : "Ending state")
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: isStartingState ? 200 : 50,
                       height: isStartingState ? 400 : 50)
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
