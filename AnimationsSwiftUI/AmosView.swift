//
//  AmosView.swift
//  MyAnimation
//
//  Created by Paul Matar on 30/05/2022.
//

import SwiftUI

// © by Amos Gyamfi

struct AmosView: View {
    @Binding var awardIsShowing: Bool
    
    var body: some View {
        
        ZStack{
            Circle()
                .stroke(lineWidth: 5)
                .frame(width: 20, height: 20)
                .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                .offset(y: awardIsShowing ? 150 : -800)
                .animation(.interpolatingSpring(stiffness: 100, damping: 5), value: awardIsShowing)
            
            Circle()
                .stroke(lineWidth: 5)
                .frame(width: 50, height: 50)
                .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                .offset(y: awardIsShowing ? 150 : -800)
                .animation(.interpolatingSpring(stiffness: 100, damping: 5).delay(0.05), value: awardIsShowing)
            
            Circle()
                .stroke(lineWidth: 5)
                .frame(width: 80, height: 80)
                .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                .offset(y: awardIsShowing ? 150 : -800)
                .animation(.interpolatingSpring(stiffness: 100, damping: 5).delay(0.1), value: awardIsShowing)
            
            Circle()
                .stroke(lineWidth: 5)
                .frame(width: 110, height: 110)
                .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                .offset(y: awardIsShowing ? 150 : -800)
                .animation(.interpolatingSpring(stiffness: 100, damping: 5).delay(0.15), value: awardIsShowing)
            
            Circle()
                .stroke(lineWidth: 5)
                .frame(width: 140, height: 140)
                .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                .offset(y: awardIsShowing ? 150 : -800)
                .animation(.interpolatingSpring(stiffness: 100, damping: 5).delay(0.2), value: awardIsShowing)
            
            Circle()
                .stroke(lineWidth: 5)
                .frame(width: 170, height: 170)
                .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                .offset(y: awardIsShowing ? 150 : -800)
                .animation(.interpolatingSpring(stiffness: 100, damping: 5).delay(0.25), value: awardIsShowing)
            
            Circle()
                .stroke(lineWidth: 5)
                .frame(width: 200, height: 200)
                .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                .offset(y: awardIsShowing ? 150 : -800)
                .animation(.interpolatingSpring(stiffness: 100, damping: 5).delay(0.3), value: awardIsShowing)
            
            Circle()
                .stroke(lineWidth: 5)
                .frame(width: 230, height: 230)
                .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                .offset(y: awardIsShowing ? 150 : -800)
                .animation(.interpolatingSpring(stiffness: 100, damping: 5).delay(0.35), value: awardIsShowing)
        }

    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AmosView(awardIsShowing: .constant(true))
    }
}
