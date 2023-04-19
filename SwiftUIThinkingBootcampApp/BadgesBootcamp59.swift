//
//  BadgesBootcamp59.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 19.04.2023.
//

import SwiftUI

struct BadgesBootcamp59: View {
    var body: some View {
        TabView {
            List{
                Text("Hello")
                    .badge("New")           // баджи для листа
                Text("Hello")
                Text("Hello")
                Text("Hello")
            }
            .tabItem {
                Image(systemName: "heart.fill")
                Text("Hello")
            }
            .badge(2)                     // баджи для таббара
            
            Color.green
                .tabItem {
                Image(systemName: "heart.fill")
                Text("Hello")
            }
            .badge("Hi")
            
            Color.blue
                .tabItem {
                Image(systemName: "heart.fill")
                Text("Hello")
            }
        }
    }
}

struct BadgesBootcamp59_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp59()
    }
}
