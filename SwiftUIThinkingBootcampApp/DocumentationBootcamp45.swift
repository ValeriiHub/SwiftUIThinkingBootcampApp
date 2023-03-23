//
//  DocumentationBootcamp45.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 17.03.2023.
//

import SwiftUI

struct DocumentationBootcamp45: View {
    
    //MARK: PROPERTIES
    
    @State private var data = ["Apple", "Oranges", "Bananas"]
    @State private var showAlert = false
    
    //MARK: BODY
    
    // NICK - Working copy - things to do:
    /*
     1) Fix title
     */
    
    var body: some View {
        NavigationView { // START: NAV
            ZStack {
                // background
                Color.yellow.ignoresSafeArea()
                
                // foreground
                foregroundLayer
                    .navigationTitle("Documentation")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button("ALERT", action: { showAlert.toggle() })
                        }
                    }
                    .alert(isPresented: $showAlert) {
                        getAlert(text: "This is the alert")
                    }
            }
        } // END: NAV
    }
    
    /// This is foregroundLayer that holds a scrollview
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            Text("Hello")
            
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLLV
    }
    
    //MARK: FUNCTIONS
    
    /// Gets an alert with a specified title.
    ///
    ///This function creates and returns an alert immediately.
    ///```
    ///getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    ///```
    ///
    /// - Warning: There is no additional message in this Alert
    /// - Parameter text: This is the title fir the alert.
    /// - Returns: Returns an alert with a title
    private func getAlert(text: String) -> Alert {
        Alert(title: Text(text))
    }
}

//MARK: PREVIEW

struct DocumentationBootcamp45_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp45()
    }
}
