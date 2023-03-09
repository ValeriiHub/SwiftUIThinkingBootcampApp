//
//  TextditorBootcamp36.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 08.03.2023.
//

import SwiftUI

struct TexEtditorBootcamp36: View {
    
    @State private var textEditorText = "This is the starting text"
    @State private var savedText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundColor(.red)
                    .colorMultiply(.green)
                
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
                Text(savedText)
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextEditorBootcamp")
        }
    }
}

struct TextEditorBootcamp36_Previews: PreviewProvider {
    static var previews: some View {
        TexEtditorBootcamp36()
    }
}
