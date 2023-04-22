//
//  ContentView.swift
//  calendarApp
//
//  Created by Rishabh  Kumar on 20/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            //Changes to be made today
            Image(systemName: "car")
                .resizable()
                .frame(width: 200, height: 200)
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("This is rishabh")
                .font(.largeTitle)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
