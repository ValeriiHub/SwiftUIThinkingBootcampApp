//
//  AsyncImageBootcamp54.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 13.04.2023.
//

import SwiftUI

struct AsyncImageBootcamp54: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        VStack {
            AsyncImage(url: url) { returnedImage in
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .cornerRadius(20)
            } placeholder: {
                ProgressView()
            }
            
            AsyncImage(url: url) { phase in
                /*
                 case empty -> No image is loaded.
                 case success(Image) -> An image succesfully loaded.
                 case failure(Error) -> An image failed to load with an error.
                 */

                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                case .failure:
                    Image(systemName: "quedtionmark")
                        .font(.headline)
                @unknown default:
                    Image(systemName: "quedtionmark")
                        .font(.headline)
                }
            }
        }
    }
}

struct AsyncImageBootcamp54_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp54()
    }
}
