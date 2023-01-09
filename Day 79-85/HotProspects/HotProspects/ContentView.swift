//
//  ContentView.swift
//  HotProspects
//
//  Created by huin on 2023/01/09.
//

import SwiftUI
import UserNotifications

struct ContentView: View {

    var body: some View {
        VStack(spacing: 20.0) {
            Button("Request Permission") {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                    if success {
                        print("All set!")
                    } else if let error = error {
                        print(error.localizedDescription)
                    }
                }
            }

            Button("Schedule Notification") {
                let content = UNMutableNotificationContent()
                content.title = "Feed the cat"
                content.subtitle = "It looks hungry"
                content.sound = UNNotificationSound.default

                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)

                let request = UNNotificationRequest(identifier: UUID().uuidString,
                                                    content: content,
                                                    trigger: trigger)

                UNUserNotificationCenter.current().add(request)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
