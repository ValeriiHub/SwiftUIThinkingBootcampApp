//
//  PopoverBootcamp29.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 19.02.2023.
//

import SwiftUI

struct PopoverBootcamp29: View {
    
    @State private var showNewScreen = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            
            VStack {
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)

                Spacer()
            }
            //MARK: 1 - SHEET
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
            
            //MARK: 2 - TRANSITION
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2)
            
            //MARK: 3 - ANIMATION OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea()
            
                Button {
//                    presentationMode.wrappedValue.dismiss()
                    showNewScreen.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding()
                }

        }
    }
}

struct PopoverBootcamp29_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp29()
    }
}
