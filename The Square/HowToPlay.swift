//
//  HowToPlay.swift
//  The Square
//
//  Created by  Ali and Ethan on 3/8/22.
//

import SwiftUI

struct HowToPlay: View {
    var body: some View {
        VStack{
            Text("The Square Game")
                .rainbow()
                .font(.system(size: 40))
            Text("Directions")
                .fontWeight(.bold)
                .padding(2)
                .font(.system(size:25))
            HStack {
                Text(" How to Play")
                    .foregroundColor(.mint)
                Spacer()
            }
            HStack{
                Text("--------------")
                Spacer()
            }
            Text("Click the square to earn 1 point, and avoid clicking the bomb, otherwise you will lose 2 points. You have 30 seconds to click as many squares as you can to get a new high score! Good luck!")
            HStack{
                Text("        ")
                Image("bomb")
                .resizable()
                .frame(width: 70, height: 70, alignment: .center)
                
                Text("                              ")
                RoundedRectangle(cornerRadius: 0)
                .frame(width: 70, height: 70, alignment: .center)
                .foregroundColor(.blue)
                Spacer()
            }
            HStack{
                Text("     ")
                Text("-2 score")
                Text("                                  ")
                Text("+1 score")
                Spacer()
            }
            Spacer()
        }
    }
}



struct HowToPlay_Previews: PreviewProvider {
    static var previews: some View {
        HowToPlay()
    }
}

extension View {
    func rainbow() -> some View {
        self.modifier(Rainbow())
    }
}


struct Rainbow: ViewModifier {
    let hueColors = stride(from: 0, to: 1, by: 0.01).map {
        Color(hue: $0, saturation: 1, brightness: 1)
    }
    
    func body(content: Content) -> some View {
        content
            .overlay(GeometryReader { (proxy: GeometryProxy) in
                ZStack {
                    LinearGradient(gradient: Gradient(colors: self.hueColors),
                                   startPoint: .leading,
                                   endPoint: .trailing)
                        .frame(width: proxy.size.width)
                }
            })
            .mask(content)
    }
}
