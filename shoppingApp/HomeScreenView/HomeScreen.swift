//
//  HomeScreen.swift
//  shoppingApp
//
//  Created by Arunangshu Das on 01/01/23.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ScrollView{
            HStack{
                Image(systemName: "line.3.horizontal")
                Spacer()
                Image(systemName: "cart.badge.plus")
            }
            .font(.system(size: 20))
            .padding()
            Text("Hey,")
                .fontWeight(.bold)
                .font(.title)
            Text("Find fresh fruits")
                .font(.title3)
            RoundedRectangle(cornerRadius: 15)
                .fill(.gray.opacity(0.23))
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search fresh fruits")
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                    }
                )
                .frame(width:350,height: 50,alignment: .center)
            Spacer()
            Text("Top selling")
                .font(.title)
                .fontWeight(.bold)
            TopSellingView()
            Spacer()
            Text("Near you")
                .font(.title)
                .fontWeight(.bold)
            NearYou()
        }.padding()
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
