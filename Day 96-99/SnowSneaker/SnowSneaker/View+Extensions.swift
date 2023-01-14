//
//  View+Extensions.swift
//  SnowSneaker
//
//  Created by huin on 2023/01/14.
//

import SwiftUI

extension View {

    @ViewBuilder func phoneOnlyStackNavigationView() -> some View {
        if UIDevice.current.userInterfaceIdiom == .phone {
            self.navigationViewStyle(.stack)
        } else {
            self
        }
    }
}
