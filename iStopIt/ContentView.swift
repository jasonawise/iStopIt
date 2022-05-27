//
//  ContentView.swift
//  iStopIt
//
//  Created by Jason Wise on 5/26/22.
//

import SwiftUI



struct ContentView: View {
    @State private var stopedDate = Date()
    @State private var today = Date()
    
    func numberOfDaysBetweenDates(from fromDate: Date, to toDate: Date) -> Date  {
         let delta = toDate.timeIntervalSince(fromDate)
         let today = Date()
         if delta < 0 {
             print(today)
             return today
         } else {
             print(today.addingTimeInterval(delta))
             return today.addingTimeInterval(delta)
         }
    }
    
    func typeCheck() {
        print(type(of: today))
    }
    
    
    
    var body: some View {
        VStack {
            Text("When did you stop it?")
                .font(.title2)
                .fontWeight(.light)
            DatePicker(
                "Date",
                selection: $stopedDate,
                displayedComponents: [.date]
            )
            .datePickerStyle(.graphical)
            .padding()
            
            Text("You stoped on: \(stopedDate.formatted(.dateTime.day().month().year()))")
            
            Text("Today is: \(today.formatted(.dateTime.day().month().year()))")
            
            Button(action: {numberOfDaysBetweenDates(from: stopedDate, to: today)}) {
                Text("ADD")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
