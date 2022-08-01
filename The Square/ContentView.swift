//
//  ContentView.swift
//  The Square
//
//  Created by Ali and Ethan on 01/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var score = 0
    @State var lives = 3
    @State var x = 100.0
    @State var y = 100.0
    @State var time = 30
    @State var selectedColor: Color = .blue
    @State var timerRunning = false
    @State var thing = ""
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let maxX = UIScreen.main.bounds.width
    let maxY = UIScreen.main.bounds.height
    
    
    var body: some View {
        VStack {
            Text("Tap the square")
            RoundedRectangle(cornerRadius: 0)
            .frame(width: 70, height: 70, alignment: .center)
            .position(x: x, y: y)
            .foregroundColor(selectedColor)
            .onTapGesture {
                selectedColor = getRandomColor()
                score += 1
                x = Double.random(in: 100...(maxX - 100))
                y = Double.random(in: 100...(maxY - 200))
              }
            
            HStack {
                Text("Score: \(score)")
                    .font(.title)
                .fontWeight(.bold)
                .position(x: 70, y: 300)
                Text("Lives: \(lives)")
                    .font(.title)
                    .fontWeight(.bold)
                    .position(x: 120, y: 300)
                    .padding(2)
            }

        }
    }
    func getRandomColor() -> Color {
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
        
        return Color(red:red, green: green, blue: blue)
    }
    
    func resetGame(){
        time = 30
        score = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.landscapeRight)
            ContentView()
        }
    }
}

