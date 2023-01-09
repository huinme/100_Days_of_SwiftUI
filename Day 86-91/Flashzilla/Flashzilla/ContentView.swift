//
//  ContentView.swift
//  Flashzilla
//
//  Created by huin on 2023/01/09.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            Text("Hello")
            Spacer().frame(height: 100)
            Text("World")
        }
        .contentShape(Rectangle())
        .onTapGesture {
            print("VStack tapped!")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
