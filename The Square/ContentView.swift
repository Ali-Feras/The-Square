//
//  ContentView.swift
//  The Square
//
//  Created by Ali on 01/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var score = 0
    @State var x = 100.0
    @State var y = 100.0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let maxX = UIScreen.main.bounds.width
    let maxY = UIScreen.main.bounds.height
    
    
    var body: some View {
        Text("Tap the square")
            .padding()
        Text("Score: \(score)")
            .font(.title)
            .fontWeight(.bold)
        RoundedRectangle(cornerRadius: 0)
            .frame(width: 50, height: 50, alignment: .center)
            .position(x: x, y: y)
            .onTapGesture {
                score += 1
                x = Double.random(in: 100...(maxX - 100))
                y = Double.random(in: 100...(maxY - 200))
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
