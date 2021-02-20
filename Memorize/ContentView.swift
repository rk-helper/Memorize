//
//  ContentView.swift
//  Memorize
//
//  Created by Rustem on 2/20/21.
//

import SwiftUI

// Struct in swift not only have variables, but functions and behaviours
// It will behaviour like a View
// This if functional programming
// We will talk about the concepts behind this behaviour using slides
// A view is just a rectangular area on the screen


struct ContentView: View {
    // This have is a neccessary if you have a View
    // var is the short for variable
    // Property means a var inside a struct or class
    // Syntaxis for property is the name
    // after : is the type of the property
    // Here this type is "some View"
    // Normally type looks like "var number: Int"
    // some View is any type and any struct as long it behaves like a view.
    // Views are like legos. You put all things together to make the lego universe.
    // There are special types of view to combine legoes.
    // combiner view can have tons and tons of views
    // This var is not stored in the memory, instead it is computed.
    var body: some View {
        // It puts an label
        // Range from lower bound(0) to upper bound(4), no intcluding the upper bound
        // HStack is arranged things horizontally, from left to right. That actually what H means.
        HStack(spacing: 0) {
            // If something is last argument, if the last of artgument is the curly bracing -> it can be put outside
            ForEach(0..<4) { index in
                CardView(isFaceUp: true)
        }
            .padding()
            // Foreground color passed inside the environment
            .foregroundColor(.purple)
            // It will set the font environemnt for all texts in ZStack
            .font(Font.largeTitle)
        }
        // MARK: Zstack is a struct and behaves like a view
        // This combined view is really important
    }
}

struct CardView: View {
    var isFaceUp: Bool
    var body: some View {
        ZStack {
            if isFaceUp {
            // Front of the card
            RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
            RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
            Text("🔥")
            } else {
                // Back of the card
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
