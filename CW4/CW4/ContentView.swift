//
//  ContentView.swift
//  CW4
//
//  Created by Hessa AlMusafer on 11/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var items = ["acai berry" , "avocado" , "coconut water" , "granola bar" , "ice tea" , "matcha green tea" , "raspberry" , "sparkling water" , "strawberry" , "water"]
    @State var cart: [String] = []
    @State var name = ""
    
    var body: some View {
        VStack
        {
            List(cart, id: \.self)
            {
                item in
                HStack
                {
                Image(item)
                    .resizable()
                    .frame(width: 70, height: 70)
                    .scaledToFit()
            
                Text(item)
                }
            }
        
        
        HStack
        {
            Button(action: {
                cart.append(name)
                
            })
            {
                Image(systemName: "plus.app.fill")
                .font(.largeTitle)
                .foregroundColor(.green)
            }
                
            
            TextField("add new item" , text: $name)
       
        
        Button(action: {
            cart.remove(at: 0)
        })
        {
            Image(systemName: "minus.square.fill")
            .font(.largeTitle)
            .foregroundColor(.red)
        }
        
        Button(action: {
            cart.append(items.randomElement() ?? "" )
        })
        {
            Image(systemName: "questionmark.square.fill")
            .font(.largeTitle)
            .foregroundColor(.orange)
        }
    }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
