//
//  FollowButton.swift
//  FollowButton
//
//  Created by crks on 8/18/21.
//

import SwiftUI

struct FollowButton: View {
    var following: Bool = false
    
    var body: some View {
        Button(action: {
            print("Hello")
            
        }) {
            following
            ? Text("Following")
                .padding(EdgeInsets(top: 8, leading: 50, bottom: 8, trailing: 50))
                .background(Color.black)
                .foregroundColor(.white)
                .border(Color.white)
                .font(.subheadline)
            : Text("Follow")
                .padding(EdgeInsets(top: 8, leading: 50, bottom: 8, trailing: 50))
                .background(Color.white)
                .foregroundColor(.black)
                .border(Color.black)
                .font(.subheadline)
            
        }
        .padding()
    }
}

struct FollowButton_Previews: PreviewProvider {
    static var previews: some View {
        FollowButton().previewDevice("iPhone 12").preferredColorScheme(.dark)
    }
}
