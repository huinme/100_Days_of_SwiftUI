//
//  ContentView.swift
//  Drawing
//
//  Created by huin on 2023/01/07.
//

import SwiftUI

struct Triangle: Shape {

    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxX))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midY, y: rect.minY))

        return path
    }
}

struct Arc: InsettableShape {

    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool

    var insetAmount = 0.0

    func path(in rect: CGRect) -> Path {
        let rotationAdjustment = Angle.degrees(90)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment

        var path = Path()
        path.addArc(center: CGPoint(x: rect.midY, y: rect.midY),
                    radius: rect.width / 2,
                    startAngle: modifiedStart,
                    endAngle: modifiedEnd,
                    clockwise: !clockwise)
        return path
    }

    func inset(by amount: CGFloat) -> some InsettableShape {
        var arc = self
        arc.insetAmount += amount
        return arc
    }
}

struct ContentView: View {

    var body: some View {
        Arc(startAngle: .degrees(-90),
            endAngle: .degrees(90),
            clockwise: true)
//        .stroke(.blue, lineWidth: 40)
        .strokeBorder(.blue, lineWidth: 40)

//        Circle()
//            .stroke(.blue, lineWidth: 40)
//            .strokeBorder(.blue, lineWidth: 40)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
