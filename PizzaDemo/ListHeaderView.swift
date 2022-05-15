//
//  ListHeaderView.swift
//  PizzaDemo
//
//  Created by IACD-013 on 2022/04/29.
//

import SwiftUI

struct ListHeaderView: View {
    @ObservedObject var orderModel:OrderModel
    var text:String
    var body: some View {
        HStack {
            Text(text)
                .padding(10)
               
            Spacer()
            Text(orderModel.formattedTotal)
                .fontWeight(.heavy)
                .padding(.trailing)
        }
        .overlay(
            Rectangle().frame(height: 1).offset(y: 4)
            , alignment: .bottom)
        .padding(.bottom, 10)
        
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView(orderModel:OrderModel(), text: "Menu")
            .previewLayout(.sizeThatFits)
    }
}
