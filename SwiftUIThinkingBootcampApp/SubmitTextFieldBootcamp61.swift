//
//  SubmitTextFieldBootcamp61.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 25.04.2023.
//

import SwiftUI

struct SubmitTextFieldBootcamp61: View {
    
    @State private var text = ""
    
    var body: some View {
        VStack {
            TextField("Placeholder", text: $text)
                .submitLabel(.route)
                .onSubmit {
                    print("Something to the console!")
            }
            
            TextField("Placeholder", text: $text)
                .submitLabel(.next)
                .onSubmit {
                    print("Something to the console!")
            }
            
            TextField("Placeholder", text: $text)
                .submitLabel(.search)
                .onSubmit {
                    print("Something to the console!")
            }
        }
        .padding()
    }
}

struct SubmitTextFieldBootcamp61_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextFieldBootcamp61()
    }
}
