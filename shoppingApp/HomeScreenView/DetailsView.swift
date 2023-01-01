//
//  DetailsView.swift
//  shoppingApp
//
//  Created by Arunangshu Das on 01/01/23.
//

import SwiftUI

struct RoundedCornerShape:Shape{
    let corners:UIRectCorner
    let radius:CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path=UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}

struct counter:View{
    @State var count=0
    
    var body:some View{
        HStack{
            Spacer()
            Button {
                count+=1
            } label: {
                Image(systemName: "plus")
            }
            Spacer()
            Text("\(count)")
            Spacer()
            Button {
                if count != 0{
                    count-=1
                }
            } label: {
                Image(systemName: "minus")
            }
            Spacer()
        }
    }
}

struct DetailsView: View {
    
    @State var fruit:fruittitle

    var body: some View {
        VStack(alignment: .leading, spacing: 25){
            Image("bg")
                .resizable()
                .clipShape(RoundedCornerShape.init(corners: [.bottomLeft,.bottomRight], radius: 50))
                .edgesIgnoringSafeArea(.all)
                .frame(width: .infinity,height: .infinity,alignment: .top)
                .shadow(color: .gray,radius: 5,x: 5,y: 5)
                .overlay(
                    Image("\(fruit.rawValue)")
                        .resizable()
                        .frame(width: 250,height: 250,alignment: .center)
                        .shadow(color: .gray, radius: 10,x: 5,y: 5)
                        .offset(y:10)
                )
            Spacer()
            Text("\(fruit.rawValue) -Medium")
                .fontWeight(.medium)
                .font(.system(.title))
                .padding(.horizontal)
                .textCase(.uppercase)
            Text("Each (500g - 700g)")
                            .padding(.horizontal)
            Text("Organic agriculture is intended to produce high quality, nutritious food that contributes to preventive health care and well-being. In view of this, it avoids the use of fertilizers, pesticides, animal drugs and food additives that may have adverse health effects.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .lineLimit(6)
                .padding(.horizontal)
            
            HStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color("bgColor"))
                    .opacity(0.25)
                    .overlay(Image(systemName: "hourglass"))
                    .font(.system(size: 40))
                    .frame(width: 60,height: 60)
                VStack(alignment: .leading){
                    Text("Delivery Time")
                    Text("25-30 Min")
                }
            }
            .padding(.horizontal)
            
            HStack{
                Text("$1.99")
                    .fontWeight(.medium)
                    .font(.title2)
                    .padding(.horizontal)
                Spacer()
                
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color("bgColor"))
                    .opacity(0.15)
                    .overlay(counter())
                    .font(.system(size: 20))
                    .frame(width: 100,height: 40)
                    .padding(.horizontal)
                    .foregroundColor(.black)
            }
            
            Image("bg")
                .resizable()
                .frame(width: 350,height: 50,alignment: .center)
                .cornerRadius(50)
                .shadow(color: .gray,radius: 5,x: 5,y: 5)
                .overlay(
                    Text("Add to cart")
                        .font(.system(.title2))
                )
                .padding(.horizontal)
            
        }
        
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(fruit:.orange)
//        counter()
    }
}
