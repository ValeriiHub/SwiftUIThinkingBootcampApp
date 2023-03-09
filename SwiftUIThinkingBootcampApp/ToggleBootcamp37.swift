//
//  ToggleBootcamp37.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 09.03.2023.
//

import SwiftUI

struct ToggleBootcamp37: View {
    
    @State private var isToggleOn = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(isToggleOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(isOn: $isToggleOn) {
                Text("Change status")
            }
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleBootcamp37_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp37()
    }
}
