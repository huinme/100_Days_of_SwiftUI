//
//  ContentView.swift
//  SnowSneaker
//
//  Created by huin on 2023/01/14.
//

import SwiftUI

struct UserView: View {

    @State private var searchText = ""
    let allNames = ["Subh", "Vina", "Melvin", "Stefanie"]

    var body: some View {
        NavigationView {
            List(filteredNames, id: \.self) { name in
                Text(name)
            }
                .searchable(text: $searchText, prompt: "Look for something")
                .navigationTitle("Searching")
        }
    }

            var filteredNames: [String] {
                if searchText.isEmpty {
                    return allNames
                } else {
                    return allNames.filter { $0.contains(searchText) }
                }
            }
}

struct ContentView: View {

    @Environment(\.horizontalSizeClass) var sizeClass

    var body: some View {
        Group {
            if sizeClass == .compact {
                VStack {
                    UserView()
                }
            } else {
                HStack {
                    UserView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
