//
//  SwiftUIView.swift
//  AnimationsSwiftUI
//
//  Created by Paul Matar on 31/05/2022.
//

import SwiftUI

struct LogoView: View {
    @Binding var moving: Bool
    
    var body: some View {
        
        GeometryReader { reader in
            let width = reader.size.width
            let height = reader.size.height
            let size = min(width, height)
            let middle = size / 2
            let nearLine = size * 0.1
            let farLine = size - nearLine
            
            Path { path in
                path.move(to: CGPoint(x: nearLine, y: farLine))
                path.addLine(to: CGPoint(x: nearLine, y: nearLine))
                path.addArc(center: CGPoint(x: nearLine, y: middle - nearLine),
                            radius: farLine / 3.36,
                            startAngle: .degrees(90),
                            endAngle: .degrees(270),
                            clockwise: true)
            }
            .stroke(
                Color.blue, lineWidth: 20
            )
            .offset(x: nearLine + nearLine, y: moving ? 0 : -800)
            .animation(.interpolatingSpring(
                mass: 1,
                stiffness: 100,
                damping: 10,
                initialVelocity: 0
            ).delay(0.6), value: moving)
            
            Path { path in
                path.move(to: CGPoint(x: nearLine + nearLine, y: farLine))
                path.addLine(to: CGPoint(x: nearLine + nearLine, y: middle - nearLine))
                path.addLine(to: CGPoint(x: middle, y: farLine - nearLine))
                path.addLine(to: CGPoint(x: farLine - nearLine, y: middle - nearLine))
                path.addLine(to: CGPoint(x: farLine - nearLine, y: farLine))
            }
            .stroke(
                Color.yellow, lineWidth: 20
            )
            .offset(x: moving ? 0 : -800, y: 0)
            .animation(.spring(
                response: 0.65,
                dampingFraction: 0.65,
                blendDuration: 0
            ), value: moving)
            
        }
    }
    
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView(moving: .constant(true))
            .frame(width: 300, height: 300)
    }
}
