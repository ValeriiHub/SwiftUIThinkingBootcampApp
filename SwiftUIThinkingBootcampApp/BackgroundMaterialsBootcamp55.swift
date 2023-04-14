//
//  BackgroundMaterialsBootcamp55.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 14.04.2023.
//

import SwiftUI

struct BackgroundMaterialsBootcamp55: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("diagram")
                .resizable()
        )
    }
}

struct BackgroundMaterialsBootcamp55_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsBootcamp55()
    }
}
