//
//  UserIcon.swift
//  UserIcon
//
//  Created by crks on 8/24/21.
//

import SwiftUI

struct UserIcon: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 45, height: 45)
            .clipShape(Circle())
    }
}

struct UserIcon_Previews: PreviewProvider {
    static var previews: some View {
        UserIcon(image: Image("profile"))
    }
}
