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
            let emojis: Array<String> = ["🦮", "🍇", "🍾", "🏀"]
            
            ForEach(emojis.indices, id: \.self){ index in
                CardView(content: emojis[index])
            }
            
        }
        
        .padding()
        .imageScale(.large)
    }
    
    struct CardView: View {
        
        let content: String
        
        @State var isFaceUp: Bool = false
        
        var body: some View {
            ZStack {
                let base = RoundedRectangle(cornerRadius: 25)
            
                if isFaceUp{
                
                    base.foregroundColor(.white)
                    base.strokeBorder(lineWidth: 5)
                    Text(content).font(.largeTitle)
                    
                }
                else {
                    base.foregroundColor(.orange)
                }
            }
            .onTapGesture{
                print("Tapped")
                isFaceUp.toggle()
            }
        }
    }
    
    
}

#Preview {
    ContentView()
}
