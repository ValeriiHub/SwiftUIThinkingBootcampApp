//
//  SheetsBootcamp28.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 09.02.2023.
//

import SwiftUI

struct SheetsBootcamp28: View {
    
    @State private var showSheet = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white)
                    .cornerRadius(10)
            }
//            .sheet(isPresented: $showSheet) {
//                SecondScreen()
//            }
            .fullScreenCover(isPresented: $showSheet) {
                SecondScreen()
            }
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

struct SheetsBootcamp28_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp28()
    }
}
