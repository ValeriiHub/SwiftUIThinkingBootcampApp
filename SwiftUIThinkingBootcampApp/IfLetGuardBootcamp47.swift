//
//  IfLetGuardBootcamp47.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 23.03.2023.
//

import SwiftUI

struct IfLetGuardBootcamp47: View {
    
    @State private var currentUseID: String? = "testuser123"
    @State private var displayText: String?
    @State private var isLoading = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding!")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                // DO NOT USE! EVER!!!
//                Text(displayText!)
//                    .font(.title)
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
        }
    }
    
    func loadData() {
        if let userID =  currentUseID  {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error. There is no User ID!"
        }
    }
    
    func loadData2() {
        guard let userID = currentUseID else {
            displayText = "Error. There is no User ID!"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User id is: \(userID)"
            isLoading = false
        }
    }
}

struct IfLetGuardBootcamp47_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp47()
    }
}
