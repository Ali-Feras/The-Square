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
    @State var selectedColor: Color = .black
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let maxX = UIScreen.main.bounds.width
    let maxY = UIScreen.main.bounds.height
    let color = [17, 30, 50, 8, 10]
    
    var body: some View {
        Text("Tap the square")
            .padding()
        Text("Score: \(score)")
            .font(.title)
            .fontWeight(.bold)
        RoundedRectangle(cornerRadius: 0)
            .frame(width: 50, height: 50, alignment: .center)
            .position(x: x, y: y)
            .foregroundColor(selectedColor)
            .onTapGesture {
                selectedColor = getRandomColor()
                score += 1
                x = Double.random(in: 100...(maxX - 100))
                y = Double.random(in: 100...(maxY - 200))
            }
    }
    func getRandomColor() -> Color {
         let red:CGFloat = CGFloat(drand48())
         let green:CGFloat = CGFloat(drand48())
         let blue:CGFloat = CGFloat(drand48())

         return Color(red:red, green: green, blue: blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
