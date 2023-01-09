//
//  ContentView.swift
//  Flashzilla
//
//  Created by huin on 2023/01/09.
//

import SwiftUI

struct ContentView: View {

    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State private var counter = 0

    var body: some View {
        VStack {
            Text("Hello, World")
                .onReceive(timer) { time in
                    if counter == 5 {
                        timer.upstream.connect().cancel()
                    } else {
                        print("The time is now \(time)")
                    }
                    counter += 1
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
