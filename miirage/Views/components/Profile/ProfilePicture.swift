//
//  ProfilePicture.swift
//  ProfilePicture
//
//  Created by crks on 8/17/21.
//

import SwiftUI

struct ProfilePicture: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 150, height: 150)
            .clipShape(Circle())
    }
}

struct ProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicture(image: Image("profile"))
    }
}
