    //
    //  ConfirmView.swift
    //  HuliPizza
    //
    //  Created by Steven Lipton on 9/13/19.
    //  Copyright © 2019 Steven Lipton. All rights reserved.
    //

import SwiftUI

struct ConfirmView: View {
    var menuID:Int
    @Binding var isPresented:Bool
    @ObservedObject var orderModel:OrderModel
    @Binding var quantity:Int
    @Binding var size:Size
    @State var comments:String = ""
    
    
        ///extracts the menu item name based on `menuID`
    var name:String{
        orderModel.menu(menuID)?.name ?? ""
    }
    
    func addItem(){
        orderModel.add(menuID: menuID,size: size, quantity: quantity, comments: comments)
        isPresented = false
        
    }
    
    var body: some View {
        VStack{
            Text("Confirm Order")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.leading)
            Divider()
            SelectedImageView(image: "\(menuID)_250w")
                .padding(1)
                .gesture(
                    TapGesture(count: 2)
                        .onEnded{
                            self.isPresented = false
                        }
                )
            Divider()
            Text("Confirm your order of \(quantity) \(size.formatted()) ,\n\n \(name) pizza")
                .font(.headline)
            TextField("Add your comments here,",text:$comments)
                .background(.white)
                .foregroundColor(.black)
                .cornerRadius(5)
                .padding()
       
            
            //MARK: Stepper
//            Stepper(value:$quantity, in:1...10){
//                //More content can be put in this closure
//                Text("Quantity: \(quantity)")
//                    .bold()
//            }
            QuantityStepperView(quantity: $quantity)
            
                //MARK: Picker
            SizePickerView(size: $size)
            Spacer()
            
            HStack{
                Button(action: addItem){
                    Text("Add")
                        .font(.title2)
                        .padding()
                        .frame(width:150)
                        .background(.black.opacity(0.8))
                        .cornerRadius(30)
                }.padding([.bottom])
                
                Spacer()
                
                Button("Canel"){
                    self.isPresented = false
                }
                    .font(.title2)
                    .padding()
                    .frame(width:150)
                    .background(.black.opacity(0.8))
                    .cornerRadius(30)
                    .padding([.bottom])
            }
            .padding()
        }
        .background(Color("G2"))
        .foregroundColor(Color("IP"))
        .cornerRadius(20)
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView(menuID: 0, isPresented: .constant(true), orderModel: OrderModel(), quantity: .constant(1),size: .constant(.medium))
    }
}
