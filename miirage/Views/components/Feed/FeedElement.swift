//
//  FeedElement.swift
//  FeedElement
//
//  Created by crks on 8/24/21.
//

import SwiftUI

struct FeedElement: View {
    
    var item: FeedItem
    
    var body: some View {
        HStack {
            UserIcon(image: item.userImage)
                .padding(5)
            HStack(alignment: .top) {
                Text(item.userName)
                    .bold()
                    .font(.subheadline)
                + Text(" ")
                + Text(item.description)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            if (item.follow) {
                Button(action: {
                    print("Hello")
                    
                }) {
                    Text("follow")
                        .padding(EdgeInsets(top: 6, leading: 30, bottom: 6, trailing: 30))
                        .background(Color.black)
                        .foregroundColor(.white)
                        .border(Color.white)
                        .font(.subheadline)
                }
            } else {
                PieceIcon(image: item.pieceIcon)
            }
        }
        .padding(5)
    }
}

struct FeedElement_Previews: PreviewProvider {
    static var previews: some View {
        FeedElement(item: FeedItem(
            userImage: Image("profile"),
            userName: "fiigmnt",
            description: "sample text here",
            pieceIcon: Image(""),
            follow: true)
        ).previewDevice("iPhone 12").preferredColorScheme(.dark)
    }
}
