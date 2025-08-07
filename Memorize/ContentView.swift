//
//  ContentView.swift
//  Memorize
//
//  Created by Coding on 8/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
            
        }
        
        .padding()
        .imageScale(.large)
    }
    
    struct CardView: View {
        var isFaceUp: Bool = false
        var body: some View {
            if isFaceUp{
                ZStack {
                    RoundedRectangle(cornerRadius: 25).foregroundColor(.white)
                    RoundedRectangle(cornerRadius: 25).strokeBorder(lineWidth: 10)
                    Text("🍾").font(.largeTitle)
                    
                }
            } else {
                ZStack {
                    RoundedRectangle(cornerRadius: 25).foregroundColor(.orange)
                    RoundedRectangle(cornerRadius: 25).strokeBorder(lineWidth: 10)
                    
                }
            }
            
        }
    }
    
    
}

#Preview {
    ContentView()
}
