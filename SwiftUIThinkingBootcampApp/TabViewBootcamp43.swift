//
//  TabViewBootcamp43.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 16.03.2023.
//

import SwiftUI

struct TabViewBootcamp43: View {
    
    @State private var selectedTab = 0
    
    let icons: [String] = [
        "heart.fill", "house.fill", "globe", "person.fill"
    ]
    
    var body: some View {
//        TabView(selection: $selectedTab) {
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//
//            Text("BROWSE TAB")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//
//            Text("PROFILE TAB")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//            }
//                .tag(2)
//        }
//        .accentColor(.green)
        
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(
            RadialGradient(colors: [.red, .blue],
                           center: .center,
                           startRadius: 5,
                           endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
    }
}

struct TabViewBootcamp43_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp43()
    }
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            
            VStack {
                Text("HOME TAB")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                }

            }
        }
    }
}
