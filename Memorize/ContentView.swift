//
//  ContentView.swift
//  Memorize
//
//  Created by Coding on 8/6/25.
//

import SwiftUI

struct ContentView: View {
    @State var cardCount: Int = 4
    
    var body: some View {
        VStack{
            HStack {
                let emojis: Array<String> = ["🦮", "🍇", "🍾", "🏀", "⚽️", "🥊","🥌","🥎","🎲","🎱"]
                
                ForEach(0..<cardCount, id: \.self){ index in
                    CardView(content: emojis[index])
                }
                
            }
            
            HStack{
                
                Button("Add Card"){
                    cardCount += 1
                    print(cardCount)
                }
                .frame(width: 150, height: 50)
                .background(Color.blue)
                .clipShape(Capsule())
                
                
                Spacer()
                    
                Button("Remove Card"){
                    cardCount -= 1
                }
                .frame(width: 150, height: 50)
                .background(Color.red)
                .clipShape(Capsule())
                
            }
            
            .foregroundStyle(.white)
            .font(.headline)
            
            
        }.padding()
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
