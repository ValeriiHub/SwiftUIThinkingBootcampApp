//
//  FocusStateBootcamp60.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 25.04.2023.
//

import SwiftUI

struct FocusStateBootcamp60: View {
    
    enum OnboardingField: Hashable {
        case userName
        case password
    }
    
//    @FocusState private var isUserNameInFocus: Bool
//    @FocusState private var isPasswordInFocus: Bool
    
    @FocusState private var fieldInFocus: OnboardingField?
    
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 30) {
            TextField("Add your name here...", text: $userName)
//                .focused($isUserNameInFocus)
                .focused($fieldInFocus, equals: .userName)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your password here...", text: $password)
//                .focused($isPasswordInFocus)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("SIGN UP") {
                let isUserNameValid = !userName.isEmpty
                let isPasswordValid = !password.isEmpty
                
                if isUserNameValid && isPasswordValid {
                    print("Sing up")
                } else if isUserNameValid {
//                    isUserNameInFocus = false
//                    isPasswordInFocus = true
                    fieldInFocus = .password
                } else {
//                    isUserNameInFocus = true
//                    isPasswordInFocus = false
                    fieldInFocus = .userName
                }
            }
            
//            Button("TOGGLE FOCUS STATE") {
//                isUserNameInFocus.toggle()
//            }
        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.isUserNameInFocus = true
//            }
//        }
    }
}

struct FocusStateBootcamp60_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp60()
    }
}
