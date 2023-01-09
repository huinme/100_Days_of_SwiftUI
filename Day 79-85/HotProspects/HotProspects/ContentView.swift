//
//  ContentView.swift
//  HotProspects
//
//  Created by huin on 2023/01/09.
//

import SwiftUI
import SamplePackage

struct ContentView: View {

    @StateObject var prospects = Prospects()

    var body: some View {
        TabView {
            ProspectsView(filter: .none)
                .tabItem {
                    Label("Everyone", systemImage: "person.3")
                }
            ProspectsView(filter: .contacted)
                .tabItem {
                    Label("Contacted", systemImage: "checkmark.circle")
                }
            ProspectsView(filter: .uncontaced)
                .tabItem {
                    Label("Uncontacted", systemImage: "questionmark.diamond")
                }
            MeView()
                .tabItem {
                    Label("Me", systemImage: "person.crop.square")
                }
        }
        .environmentObject(prospects)
    }
}

struct ContentView_Previews: PreviewProvider {

    static let prospects = Prospects()

    static var previews: some View {
        ContentView()
            .environmentObject(prospects)
    }
}
