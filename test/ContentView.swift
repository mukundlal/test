//
//  ContentView.swift
//  test
//
//  Created by Mukund Lal on 20/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var number1: String = ""
        @State private var number2: String = ""
        @State private var result: Int = 0

        var body: some View {
            VStack {
                Image(systemName: "swift")
                    .resizable()
                    .frame(width: 100, height: 100)
                Text("SwiftUI Example")
                    .font(.title3)
                    .padding()

                TextField("Enter number 1", text: $number1)
                    .padding()
                    .keyboardType(.numberPad)
                TextField("Enter number 2", text: $number2)
                    .padding()
                    .keyboardType(.numberPad)

                Button("Add Numbers") {
                    if let num1 = Int(number1), let num2 = Int(number2) {
                        result = num1 + num2
                    }
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.black)
                .cornerRadius(20)

                if result != 0 {
                    Text("Result: \(result)")
                        .padding()
                }
            }
            .padding()
        }
}

#Preview {
    ContentView()
}
