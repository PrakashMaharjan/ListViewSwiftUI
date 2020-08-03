//
//  DetailView.swift
//  ListViewSwiftUIDemo
//
//  Created by prakash Maharjan on 8/3/20.
//  Copyright © 2020 pm. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var flowerName:String?
    var flowerImage:String?
    var flowerDescription:String?
    
    var body: some View {
        
        ScrollView{
            VStack (alignment: .center, spacing: 20, content:{
                Image(self.flowerImage ?? "")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(Color.black, lineWidth: 2))
                Text(self.flowerName ?? "")
                    .font(
                        .system(size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Text(self.flowerDescription ?? "")
                    .font(
                        .system(size: 17))
                    .fontWeight(.light)
                    .foregroundColor(.gray)
            }).padding(20)
        }
        .offset(x: 0, y: 0)
        .navigationBarTitle(Text(self.flowerName!))
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
