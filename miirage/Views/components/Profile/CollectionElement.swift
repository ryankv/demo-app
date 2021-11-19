//
//  CollectionElement.swift
//  CollectionElement
//
//  Created by crks on 8/18/21.
//

import SwiftUI

struct CollectionElement: View {
    var image: String
    var body: some View {
        
        Button(action: {
            print("View Piece Modal")
        }, label: {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Rectangle())
        })
        
    }
}

struct CollectionElement_Previews: PreviewProvider {
    static var previews: some View {
        CollectionElement(image: "profile")
    }
}
