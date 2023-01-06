//
//  ContentView.swift
//  Animations
//
//  Created by huin on 2023/01/06.
//

import SwiftUI

struct ContentView: View {

    @State private var isShowingRed = false

    var body: some View {
        VStack {
            Button("Tap me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }

            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro"))
    }
}
