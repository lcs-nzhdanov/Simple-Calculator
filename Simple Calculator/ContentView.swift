//
//  ContentView.swift
//  Square Counter App
//
//  Created by Nikita Zhdanov on 2023-11-16.
//

import SwiftUI

struct ContentView: View {
    
    @State var base: Int = 1
    var squared: Int {
        return base * base
    }
    
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack(alignment: .top) {
                
                Text("(\(base))")
                    .font(.system(size: 96))
                
                Text("2")
                    .font(.system(size: 44))
                
                Text("=")
                    .font(.system(size: 96))
                
                Text("\(squared)")
                    .font(.system(size: 96))
            }
            
            Stepper(value: $base, label: {
                Text("Base")
            })
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
