//
//  ImageView.swift
//  Drawing
//
//  Created by huin on 2023/01/07.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Capsule()
            .strokeBorder(ImagePaint(image: Image("Example"), scale: 0.1), lineWidth: 20)
            .frame(width: 300, height: 200)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
