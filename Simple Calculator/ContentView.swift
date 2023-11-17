//
//  ContentView.swift
//  Square Counter App
//
//  Created by Nikita Zhdanov on 2023-11-16.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstNumber: Int = 1
    @State var secondNumber: Int = 1
    var sum: Int {
        return firstNumber + secondNumber
    }
    
    var body: some View {
        VStack(spacing: 10) {
            
            Spacer()
            
            HStack() {
                
                Spacer()
                
                Text("\(firstNumber)")
                    .font(.system(size: 60))
                    .padding(.horizontal, 35)
            }
            
            Stepper(value: $firstNumber, label: {
                Text("Select first number")
            })
            
            
            HStack() {
                
                Text("+")
                    .font(.system(size: 60))
                    .padding(.horizontal, 35)
                
                Spacer()
                
                Text("\(secondNumber)")
                    .font(.system(size: 60))
                    .padding(.horizontal, 35)
            }
            
            Stepper(value: $secondNumber, label: {
                Text("Select second number")
            })
            
            Divider()
            
            HStack() {
                
                Spacer()
                
                Text("\(sum)")
                    .font(.system(size: 60))
                    .padding(.horizontal, 35)
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
