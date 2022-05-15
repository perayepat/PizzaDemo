    //
    //  ContentHeaderView.swift
    //  PizzaDemo
    //
    //  Created by IACD-013 on 2022/04/26.
    //

import SwiftUI

struct ContentHeaderView: View {
    var body: some View {
        VStack {
            ZStack{
                Image("1_100w")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 150, alignment: .center)
                    .shadow(color: .black.opacity(0.3), radius: 2, x:4, y: 5)
                
                Text("Big Body's Slice")
                    .font(Font.custom("Avinir-Black", size: 30))
                    .bold()
                    .font(.largeTitle)
                    .position(x: 180, y: -20)
                    .padding()
            }
        }
        .frame(width: 400, height: 200, alignment: .center)
    }
}
    
    struct ContentHeaderView_Previews: PreviewProvider {
        static var previews: some View {
            ContentHeaderView()
            
        }
    }


