//
//  OrderListView.swift
//  PizzaDemo
//
//  Created by IACD-013 on 2022/04/26.
//

import SwiftUI

struct OrderListView: View {
    var orderModel:OrderModel
    var body: some View {
        VStack {
          //Better implimentation of a list as its allows multiple sections in the same area
            List{
                Section(
                    header:   ListHeaderView(orderModel: self.orderModel,text: "Your Order")
                ){
                    ForEach(orderModel.orders){item in
                        OrderRowView(orderItem:item)
                    }
                    .onDelete(perform: delete)
                }
            }
            .listStyle(.inset)
        }
    }
    //MARK: You have to write your own delete function when using it
    func delete(at offsets:IndexSet){
        orderModel.orders.remove(atOffsets: offsets)
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: OrderModel())
    }
}


