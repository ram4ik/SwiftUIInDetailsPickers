//
//  ContentView.swift
//  SwiftUIInDetailsPickers
//
//  Created by ramil on 28.01.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var colors = ["red", "green", "blue"]
    @State private var selectedColor = 0
    
    var body: some View {
        VStack {
            Picker(selection: $selectedColor, label:
                Text("Select Color")) {
                ForEach(0..<colors.count) {
                    Text(self.colors[$0])
                }
            }.pickerStyle(SegmentedPickerStyle())
            Text("Your choise: \(colors[selectedColor])")
        }
    .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
