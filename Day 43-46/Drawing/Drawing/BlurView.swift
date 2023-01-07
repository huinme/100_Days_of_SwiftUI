//
//  BlurView.swift
//  Drawing
//
//  Created by huin on 2023/01/07.
//

import SwiftUI

struct BlurView: View {

    @State private var amount = 0.0

    var body: some View {
        VStack {
                Image("PaulHudson")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .saturation(amount)
                    .blur(radius: (1 - amount) * 20)

            Slider(value: $amount)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        .ignoresSafeArea()
    }
}

struct BlurView_Previews: PreviewProvider {
    static var previews: some View {
        BlurView()
    }
}
