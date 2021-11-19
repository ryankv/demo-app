//
//  ProfileView.swift
//  ProfileView
//
//  Created by crks on 8/17/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            HStack {
                Link(destination: URL(string: "https://www.instagram.com/fiigmnt")!, label: {
                    Image("twitter")
                        .resizable()
                        .frame(width: 20, height: 20)
                })
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                Text("@fiigmnt")
                    .frame(maxWidth: .infinity)
                Image(systemName: "ellipsis")
                    .frame(maxWidth: .infinity)
                
            }
            .padding(EdgeInsets(top: 10, leading: 0, bottom: 20, trailing: 0))
            
            HStack {
                ProfileDetails(amount: "2.5k")
                ProfilePicture(image: Image("profile"))
                ProfileDetails(amount: "25k", isFollowers: false)
            }
            ProfileDescription(name: "Fiig", description:
                                """
                               augmented street art ☁️ // blockchain developer
                               Boston, MA
                               """
            )
            FollowButton(following: true)
            ProfileCollection()
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView().previewDevice("iPhone 12").preferredColorScheme(.dark)
    }
}
