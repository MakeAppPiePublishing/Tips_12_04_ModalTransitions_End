//
//  ModalView.swift
//  ModalTransitions
//
//  Created by Steven Lipton on 8/13/20.
//

import SwiftUI

struct ModalView: View {
    @Binding var isPresented:Bool
    var body: some View {
            VStack{
                Image(systemName: "tv.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                Spacer()
                Button(action:{isPresented = false}){
                    Text("Dismiss")
                        .font(.headline)
                        
                }
                .padding(20)
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(10)
                .padding(.bottom)
            
        }
            .background(LinearGradient(gradient: Gradient(colors: [Color(white:0.8),Color(white:0.95)]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
            .shadow(radius: 15)
}
}
struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(isPresented: .constant(true))
    }
}
