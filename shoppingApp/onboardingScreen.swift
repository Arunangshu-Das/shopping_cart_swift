//
//  onboardingScreen.swift
//  shoppingApp
//
//  Created by Arunangshu Das on 01/01/23.
//

import SwiftUI

struct onboardingScreen: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                Spacer()
                Image("img")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                VStack(alignment: .leading,spacing: 10){
                    Text("Order your favourite fruits")
                    .fontWeight(.bold)
                    .font(.system(.largeTitle))
                    Text("Eat fresh fruits")
                    .fontWeight(.bold)
                    .font(.system(.title2))
                    .foregroundColor(.black)
                    .opacity(0.7)
                }
                Spacer()
                NavigationLink(destination: HomeScreen()) {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("6"))
                        .frame(width: 280,height: 60,alignment: .trailing)
                        .overlay(
                            HStack(spacing: 10)
                            {
                                Text("Next")
                                    .font(.title2)
                                Image(systemName: "chevron.right")
                            }
                                .foregroundColor(.black)
                        )
                }
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct onboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        onboardingScreen()
    }
}
