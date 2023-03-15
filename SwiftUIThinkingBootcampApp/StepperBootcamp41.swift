//
//  StepperBootcamp41.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 15.03.2023.
//

import SwiftUI

struct StepperBootcamp41: View {
    
    @State var stepperValue = 10
    @State private var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
           Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Stepper 2") {
                // increment
                incrrementWidth(amount: 100)
//                widthIncrement += 10
            } onDecrement: {
                // decrement
                incrrementWidth(amount: -100)
//                widthIncrement -= 10
            }

        }
    }
    
    func incrrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

struct StepperBootcamp41_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp41()
    }
}
