//
//  ContentView.swift
//  Square Counter App
//
//  Created by Nikita Zhdanov on 2023-11-16.
//

import SwiftUI

struct Plus: View {
    
    @State var firstNumber: Int = 1
    @State var secondNumber: Int = 1
    var result: Int {
        return firstNumber + secondNumber
    }
    
    var body: some View {
        VStack(
            spacing: 10
        ) {
            
            Spacer()
            
            HStack() {
                
                Spacer()
                
                Text(
                    "\(firstNumber)"
                )
                .font(
                    .system(
                        size: 60
                    )
                )
                .padding(
                    .horizontal,
                    35
                )
            }
            
            Stepper(value: $firstNumber,
                    label: {
                Text(
                    "Select first number"
                )
            })
            
            
            HStack() {
                
                Image(
                    systemName: "plus"
                )
                .font(
                    .system(
                        size: 50
                    )
                )
                .padding(
                    .horizontal,
                    35
                )
                
                Spacer()
                
                Text(
                    "\(secondNumber)"
                )
                .font(
                    .system(
                        size: 60
                    )
                )
                .padding(
                    .horizontal,
                    35
                )
            }
            
            Stepper(value: $secondNumber,
                    label: {
                Text(
                    "Select second number"
                )
            })
            
            Divider()
            
            HStack() {
                
                Spacer()
                
                Text(
                    "\(result)"
                )
                .font(
                    .system(
                        size: 60
                    )
                )
                .padding(
                    .horizontal,
                    35
                )
            }
            
            Spacer()
        }
        .padding()
    }
}

struct Minus: View {
    
    @State var firstNumber: Int = 1
    @State var secondNumber: Int = 1
    var result: Int {
        return firstNumber - secondNumber
    }
    
    var body: some View {
        VStack(
            spacing: 10
        ) {
            
            Spacer()
            
            HStack() {
                
                Spacer()
                
                Text(
                    "\(firstNumber)"
                )
                .font(
                    .system(
                        size: 60
                    )
                )
                .padding(
                    .horizontal,
                    35
                )
            }
            
            Stepper(value: $firstNumber,
                    label: {
                Text(
                    "Select first number"
                )
            })
            
            
            HStack() {
                
                Image(
                    systemName: "minus"
                )
                .font(
                    .system(
                        size: 50
                    )
                )
                .padding(
                    .horizontal,
                    35
                )
                
                Spacer()
                
                Text(
                    "\(secondNumber)"
                )
                .font(
                    .system(
                        size: 60
                    )
                )
                .padding(
                    .horizontal,
                    35
                )
            }
            
            Stepper(value: $secondNumber,
                    label: {
                Text(
                    "Select second number"
                )
            })
            
            Divider()
            
            HStack() {
                
                Spacer()
                
                Text(
                    "\(result)"
                )
                .font(
                    .system(
                        size: 60
                    )
                )
                .padding(
                    .horizontal,
                    35
                )
            }
            
            Spacer()
        }
        .padding()
    }
}

struct Multiply: View {
    
    @State var firstNumber: Int = 1
    @State var secondNumber: Int = 1
    var result: Int {
        return firstNumber * secondNumber
    }
    
    var body: some View {
        VStack(
            spacing: 10
        ) {
            
            Spacer()
            
            HStack() {
                
                Spacer()
                
                Text(
                    "\(firstNumber)"
                )
                .font(
                    .system(
                        size: 60
                    )
                )
                .padding(
                    .horizontal,
                    35
                )
            }
            
            Stepper(value: $firstNumber,
                    label: {
                Text(
                    "Select first number"
                )
            })
            
            
            HStack() {
                
                Image(
                    systemName: "multiply"
                )
                .font(
                    .system(
                        size: 50
                    )
                )
                .padding(
                    .horizontal,
                    35
                )
                
                Spacer()
                
                Text(
                    "\(secondNumber)"
                )
                .font(
                    .system(
                        size: 60
                    )
                )
                .padding(
                    .horizontal,
                    35
                )
            }
            
            Stepper(value: $secondNumber,
                    label: {
                Text(
                    "Select second number"
                )
            })
            
            Divider()
            
            HStack() {
                
                Spacer()
                
                Text(
                    "\(result)"
                )
                .font(
                    .system(
                        size: 60
                    )
                )
                .padding(
                    .horizontal,
                    35
                )
            }
            
            Spacer()
        }
        .padding()
    }
}

struct Divide: View {
    
    @State var firstNumber: Int = 1
    @State var secondNumber: Int = 1
    var result: String {
        if secondNumber == 0 {
            return "Cannot divide by zero" // Return an error message as a String
        } else {
            return "\(firstNumber / secondNumber)"
        }
    }
    
    var body: some View {
        VStack(
            spacing: 10
        ) {
            
            Spacer()
            
            HStack() {
                
                Spacer()
                
                Text(
                    "\(firstNumber)"
                )
                .font(
                    .system(
                        size: 60
                    )
                )
                .padding(
                    .horizontal,
                    35
                )
            }
            
            Stepper(value: $firstNumber,
                    label: {
                Text(
                    "Select first number"
                )
            })
            
            
            HStack() {
                
                Image(
                    systemName: "divide"
                )
                .font(
                    .system(
                        size: 50
                    )
                )
                .padding(
                    .horizontal,
                    35
                )
                
                Spacer()
                
                Text(
                    "\(secondNumber)"
                )
                .font(
                    .system(
                        size: 60
                    )
                )
                .padding(
                    .horizontal,
                    35
                )
            }
            
            Stepper(value: $secondNumber,
                    label: {
                Text(
                    "Select second number"
                )
            })
            
            Divider()
            
            HStack() {
                
                Spacer()
                
                Text(
                    result
                )
                .font(
                    .system(
                        size: 60
                    )
                )
                .padding(
                    .horizontal,
                    35
                )
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    //ContentView()
    
    TabView() {
        
        Plus()
            .tabItem {
                Image(
                    systemName: "plus"
                )
                Text(
                    "Plus"
                )
            }
            .tag(
                1
            )
        
        Minus()
            .tabItem {
                Image(
                    systemName: "minus"
                )
                Text(
                    "Minus"
                )
            }
            .tag(
                2
            )
        
        Multiply()
            .tabItem {
                Image(
                    systemName: "multiply"
                )
                Text(
                    "Multiply"
                )
            }
            .tag(
                3
            )
        
        Divide()
            .tabItem {
                Image(
                    systemName: "divide"
                )
                Text(
                    "Divide"
                )
            }
            .tag(
                4
            )
    }
    .accentColor(
        .blue
    )
}
