//
//  AlertBootcamp32.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 02.03.2023.
//

import SwiftUI

struct AlertBootcamp32: View {
    
    @State private var isAlertShow = false
//    @State private var alertTitle = ""
//    @State private var alertMessage = ""
    @State private var backgroundColor = Color.yellow
    @State private var alertType: MyAlert?
    
    enum MyAlert {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            
            VStack {
                Button {
//                    alertTitle = "ERROR UPLOADING VIDEO"
//                    alertMessage = "The video could not be upload"
                    alertType = .error
                    isAlertShow.toggle()
                } label: {
                    Text("Button 1")
                }
                
                Button {
//                    alertTitle = "Succesful upload video 🎊"
//                    alertMessage = "Your video is now public!"
                    alertType = .success
                    isAlertShow.toggle()
                } label: {
                    Text("Button 2")
                }
                
            }
            .alert(isPresented: $isAlertShow) {
                getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
//        return Alert(title: Text("There was an error"))
        
//        return Alert(title: Text("There is the title"),
//                     message: Text("Here we discribe the error"),
//                     primaryButton: .destructive(Text("Delete"), action: { backgroundColor = .purple }),
//                     secondaryButton: .cancel())
        
//        return Alert(title: Text(alertTitle),
//                     message: Text(alertMessage),
//                     dismissButton: .destructive(Text("Ok")))
        
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error"))
        case .success:
            return Alert(title: Text("This was success!"),
                         message: nil,
                         dismissButton: .default(Text("Ok"), action: {
                backgroundColor = .purple
            }))
        default:
            return Alert(title: Text("ERROR"))
        }
    }
}

struct AlertBootcamp32_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp32()
    }
}
