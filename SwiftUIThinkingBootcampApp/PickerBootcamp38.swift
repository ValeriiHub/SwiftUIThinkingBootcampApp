//
//  PickerBootcamp38.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 09.03.2023.
//

import SwiftUI

struct PickerBootcamp38: View {
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .blue
        
        let attributes: [NSAttributedString.Key : Any] = [ .foregroundColor : UIColor.white ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .normal)
    }
    
    @State private var selection = "Most Recent"
    let filterOptions = ["Most Recent", "Most Popular", "Most Liked"]
    
    var body: some View {
        VStack {
            HStack {
                Text("Age:")
                Text(selection)
            }
            
            Picker(selection: $selection) {
//                Text("1")
//                    .tag("1")
//                Text("2")
//                    .tag("2")
//                Text("3")
//                    .tag("3")
//                Text("4")
//                    .tag("4")

                ForEach(18..<100) { number in
                    Text("\(number)")
                        .tag("\(number)")
                        .font(.headline)
                        .foregroundColor(.red)
                }
            } label: {
                Text(selection)
            }
//            .background(Color.gray.opacity(0.3))
            .pickerStyle(.wheel)
            
            
            Picker(selection: $selection) {
                ForEach(filterOptions, id: \.self) { option in
                    HStack {
                        Text(option)
                        Image(systemName: "heart.fill")
                    }
                    .tag(option)
                }
            } label: {
                HStack {
                    Text("Filter:")
                    Text(selection)
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue)
            }
            .pickerStyle(.menu)
            
            
            Picker(selection: $selection) {
                ForEach(filterOptions.indices) { index in
                    Text(filterOptions[index])
                        .tag(filterOptions[index])
                }
            } label: {
                Text("Picker")
            }
            .pickerStyle(.segmented)
            .background(Color.red)
        }
    }
}

struct PickerBootcamp38_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp38()
    }
}
