//
//  ContentView.swift
//  iStopIt
//
//  Created by Jason Wise on 5/26/22.
//

import SwiftUI



struct ContentView: View {
    @State private var date = Date()
    @State private var today = Date().formatted(.dateTime.day().month().year())
    
    var body: some View {
        VStack {
            Text("When did you stop it?")
                .font(.title2)
                .fontWeight(.light)
            DatePicker(
                "Date",
                selection: $date,
                displayedComponents: [.date]
            )
            .datePickerStyle(.graphical)
            .padding()
            
            Text("You stoped on: \(date.formatted(.dateTime.day().month().year()))")
            
            Text("Today is: \(today)")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
