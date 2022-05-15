//
//  OrderRowView.swift
//  PizzaDemo
//
//  Created by IACD-013 on 2022/04/26.
//

import SwiftUI

struct OrderRowView: View {
    var orderItem:OrderItem
    var body: some View {
        VStack {
            HStack(alignment:.firstTextBaseline){
                Image(systemName: "\(orderItem.id + 1).square")
                Text(orderItem.description)
                    .font(.headline)
                Spacer()
                Text(orderItem.formattedExtendedPrice)
                    .fontWeight(.bold)
            }
            Text(orderItem.comments)
                .animation(.none)
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(orderItem: testOrderItem)
            .previewLayout(.sizeThatFits)
          
    }
}

