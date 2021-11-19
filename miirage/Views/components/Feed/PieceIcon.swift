//
//  PieceIcon.swift
//  PieceIcon
//
//  Created by crks on 8/24/21.
//

import SwiftUI

struct PieceIcon: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 60, height: 60)
            .clipShape(Rectangle())
    }
}

struct PieceIcon_Previews: PreviewProvider {
    static var previews: some View {
        PieceIcon(image: Image("van2"))
    }
}
