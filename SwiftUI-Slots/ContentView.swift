//
//  ContentView.swift
//  SwiftUI-Slots
//
//  Created by Kyle Sherrington on 2021-01-23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var credits = 1000
    @State private var slot1 = 1
    @State private var slot2 = 2
    @State private var slot3 = 3
    
    var body: some View {
        
        
        VStack {
            
            Text("SwiftUI Slots!")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 40.0)
            
            Spacer()
            
            HStack {
                Text("Credits \(credits)")
            }
            
            Spacer()
            
            HStack {
                Spacer()
                
                Image("fruit\(slot1)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("fruit\(slot2)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Image("fruit\(slot3)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            Spacer()
            
            
            Button("Spin") {
                
                // randomize the numbers
                slot1 = Int.random(in: 1...3)
                slot2 = Int.random(in: 1...3)
                slot3 = Int.random(in: 1...3)
                
                if slot1 == slot2 && slot2 == slot3 {
                    credits += 15
                }
                else {
                    credits -= 5
                }
            }
            // Set padding for all edges
            .padding()
            // Then adjust the left and right padding to be bigger
            .padding([.leading, .trailing], 40)
            .foregroundColor(.white)
            .background(Color(.systemPink))
            .cornerRadius(25)
            .font(.system(size: 18, weight: .bold, design: .default))
            Spacer()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
