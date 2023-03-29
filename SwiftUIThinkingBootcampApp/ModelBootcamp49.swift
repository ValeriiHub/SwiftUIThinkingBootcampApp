//
//  ModelBootcamp49.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 29.03.2023.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followCount: Int
    let isVerified: Bool
}

struct ModelBootcamp49: View {
    
    @State private var users = [
        UserModel(displayName: "Nick", userName: "nick23", followCount: 100, isVerified: true),
        UserModel(displayName: "Emily", userName: "itsemily1995", followCount: 55, isVerified: false),
        UserModel(displayName: "Samantha", userName: "ninja", followCount: 355, isVerified: false),
        UserModel(displayName: "Chris", userName: "chris2009", followCount: 88, isVerified: true)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15) {
                        Circle()
                            .frame(width: 35, height: 35)
                        
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followCount)")
                                .font(.headline)
                            
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Users")
        }
    }
}

struct ModelBootcamp49_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp49()
    }
}
