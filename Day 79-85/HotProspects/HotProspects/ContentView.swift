//
//  ContentView.swift
//  HotProspects
//
//  Created by huin on 2023/01/09.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        Image("example")
            .interpolation(.none)
            .resizable()
            .scaledToFit()
            .frame(maxHeight: .infinity)
            .background(.black)
            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
