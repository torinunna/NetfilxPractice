//
//  ContentDetailView.swift
//  NetfilxPractice
//
//  Created by YUJIN KWON on 2023/02/08.
//

import SwiftUI

struct ContentDetailView: View {
    @State var item: Item?
    
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            ZStack(alignment: .bottom) {
                if let item = item {
                    Image(uiImage: item.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200)
                    Text(item.description)
                        .font(.caption)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding()
                        .foregroundColor(.primary)
                        .background(Color.primary.colorInvert().opacity(0.75))
                } else {
                    Color.white
                }
            }
        }
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let item0 = Item(description: "흥미진진", imageName: "poster0")
        ContentDetailView(item: item0)
    }
}
