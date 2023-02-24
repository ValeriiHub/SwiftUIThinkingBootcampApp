//
//  NavigationViewBootcamp30.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 24.02.2023.
//

import SwiftUI

struct NavigationViewBootcamp30: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink {
                    MyOtherScreen()
                } label: {
                    Text("Hello world!")
                }
                
            }
            .navigationTitle("All inboxes")
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                trailing:
                    NavigationLink {
                        MyOtherScreen()
                    } label: {
                        Image(systemName: "gear")
                    }
                    .accentColor(.red)
            )
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
                .navigationTitle("Green screen")
                .navigationBarHidden(true)
            
            VStack {
                Button("BACK BUTTON") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click here", destination: Text("3rd screen"))
            }
            
        }
    }
}

struct NavigationViewBootcamp30_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp30()
    }
}
