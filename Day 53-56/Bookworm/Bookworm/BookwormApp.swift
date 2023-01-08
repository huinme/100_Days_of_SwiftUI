//
//  BookwormApp.swift
//  Bookworm
//
//  Created by huin on 2023/01/08.
//

import SwiftUI

@main
struct BookwormApp: App {

    @StateObject private var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
