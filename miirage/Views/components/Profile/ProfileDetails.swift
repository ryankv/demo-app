//
//  Followers.swift
//  Followers
//
//  Created by crks on 8/17/21.
//

import SwiftUI

struct ProfileDetails: View {
    var amount: String
    var isFollowers: Bool = true
    
    var body: some View {
        VStack {
            Text(amount)
                .font(.subheadline)
                .fontWeight(.bold)
            isFollowers ?
            Text("followers")
                .font(.subheadline) :
            Text("likes")
                .font(.subheadline)
        }
        .frame(minWidth: 0, maxWidth: .infinity)
    }
}

struct ProfileDetails_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetails(amount: "2.5k")
    }
}
