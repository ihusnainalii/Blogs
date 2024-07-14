//
//  ContentView.swift
//  SwiftLint
//
//  Created by Husnain Ali on 14/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            calculateSum()
        }
    }
    
    func calculateSum() {
//        Produce an error
//        let array: NSArray = NSArray(array: [5, 6, 7])
//        let numbers = array as! [Int]
//        print(numbers.reduce(0, +))
        
//        Soltuon
        let array: NSArray = NSArray(array: [5, 6, 7])
        let numbers = array as? [Int]
        print(numbers?.reduce(0, +) as Any)
    }
}

#Preview {
    ContentView()
}
