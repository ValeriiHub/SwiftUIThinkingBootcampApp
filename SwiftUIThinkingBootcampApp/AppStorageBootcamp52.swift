//
//  AppStorageBootcamp52.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 05.04.2023.
//

import SwiftUI

struct AppStorageBootcamp52: View {
    
//    @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button {
                let name = "Nick"
                currentUserName = name
//                UserDefaults.standard.set(name, forKey: "name")
            } label: {
                Text("Save".uppercased())
            }
//            .onAppear {
//                currentUserName = UserDefaults.standard.string(forKey: "name")
//            }
        }
    }
}

struct AppStorageBootcamp52_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp52()
    }
}
