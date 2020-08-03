//
//  CellRow.swift
//  ListViewSwiftUIDemo
//
//  Created by prakash Maharjan on 8/3/20.
//  Copyright © 2020 pm. All rights reserved.
//

import SwiftUI

struct CellRow: View {
    
    let flower: Flower
    
    var body : some View {
        HStack{
            Image(flower.image)
                .resizable()
                //.clipped()
                .frame(width: 90, height: 90, alignment:
                    .center)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                //                .cornerRadius(45)
                .aspectRatio(contentMode: .fill)
            VStack (alignment: .leading, spacing: 10){
                Text(flower.name).font(.headline)
                
                Text(flower.description).foregroundColor(.gray).font(.subheadline).lineLimit(nil)
            }.padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
                .padding(.init(top: 12, leading: 0, bottom: 12, trailing: 0))
        }
    }
}
