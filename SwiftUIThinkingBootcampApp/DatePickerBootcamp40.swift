//
//  DatePickerBootcamp40.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 10.03.2023.
//

import SwiftUI

struct DatePickerBootcamp40: View {
    
    @State var selectedDate = Date()
    
    let startingDate = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endDate = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .full
        formatter.timeZone = .current
        return formatter
    }
    
    var body: some View {
//        DatePicker("Select a Date", selection: $selectedDate)
//            .accentColor(.red)
//            .datePickerStyle(.compact)
        
//        DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.date])
        
        VStack {
            Text("SELECTED DATE IS:")
            Text(selectedDate.description)
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            
            DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endDate, displayedComponents: [.date])
        }
    }
}

struct DatePickerBootcamp40_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp40()
    }
}
