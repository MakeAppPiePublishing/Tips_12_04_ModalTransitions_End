//
//  ContentView.swift
//  ModalTransitions
//
//  Created by Steven Lipton on 8/13/20.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented:Bool = false
    var body: some View {
        VStack{
            if !isPresented{
                VStack{
                        Text("Hello, Modal!")
                            .font(.title)
                            .padding()
                        Button(action:{self.isPresented = true})
                        {
                          Text("Modal Button")
                            .font(.headline)
                        }
                        .padding(20)
                        .foregroundColor(.black)
                        .background(Color.green)
                        .cornerRadius(10)
                }
                .transition(.scale)
                
            }
            if isPresented{
                ModalView(isPresented: $isPresented)
                    .padding()
                    //.transition(.slide)
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .scale))
                    .animation(.spring())
            }
            Spacer()
        }
        .animation(.easeIn)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
