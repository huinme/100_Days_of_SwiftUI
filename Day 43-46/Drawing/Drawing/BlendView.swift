//
//  EffectView.swift
//  Drawing
//
//  Created by huin on 2023/01/07.
//

import SwiftUI

struct BlendView: View {

    @State private var amount = 0.0
    @State private var useScreen = false

    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(.red)
                    .frame(width: 200 * amount)
                    .offset(x: -50, y: -80)
                    .blendMode(useScreen ? .screen : .multiply)

                Circle()
                    .fill(.green)
                    .frame(width: 200 * amount)
                    .offset(x: 50, y: -80)
                    .blendMode(useScreen ? .screen : .multiply)

                Circle()
                    .fill(.blue)
                    .frame(width: 200 * amount)
                    .blendMode(useScreen ? .screen : .multiply)
            }
            .frame(width: 300, height: 300)

            Slider(value: $amount)
                .padding()

            Toggle("UseScreen", isOn: $useScreen)
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(useScreen ? .black : .white)
        .ignoresSafeArea()
    }
}

struct EffectView_Previews: PreviewProvider {
    static var previews: some View {
        BlendView()
    }
}
