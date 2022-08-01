//
//  HomeScreen.swift
//  The Square
//
//  Created by Ali on 01/08/2022.
//

import SwiftUI

struct HomeScreen: View {
    @State var time = 30
    var body: some View {
        NavigationView {
                VStack {
            Text("The Square")
                .font(.title)
                .fontWeight(.bold)
                .padding(20)
                    Spacer()
                    }
                }
            }
        }

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
