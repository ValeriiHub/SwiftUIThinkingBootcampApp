//
//  TextfieldBootcamp35.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 06.03.2023.
//

import SwiftUI

struct TextfieldBootcamp35: View {
    
    @State private var textFieldText = ""
    @State private var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
//                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button {
                    if textIsApppropriate() {
                        saveText()
                    }
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsApppropriate() ? Color.blue : .gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!textIsApppropriate())
                                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp!")
        }
    }
    
    func textIsApppropriate() -> Bool {
        // check text
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextfieldBootcamp35_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldBootcamp35()
    }
}
