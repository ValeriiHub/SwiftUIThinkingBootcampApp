//
//  ListSwipeActionsBootcamp58.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 19.04.2023.
//

import SwiftUI

struct ListSwipeActionsBootcamp58: View {
    
    @State private var fruits = ["apple", "peach", "banana", "orange"]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }
                        .tint(.green)
                        
                        Button("Save") {
                            
                        }
                        .tint(.blue)
                        
                        Button("Junk") {
                            
                        }
                        .tint(.black)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button("Share") {
                            
                        }
                        .tint(.yellow)
                    }
            }
//            .onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

struct ListSwipeActionsBootcamp58_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsBootcamp58()
    }
}
