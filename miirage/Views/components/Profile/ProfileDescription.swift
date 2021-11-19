//
//  ProfileDescription.swift
//  ProfileDescription
//
//  Created by crks on 8/18/21.
//

import SwiftUI

struct ProfileDescription: View {
    var name: String
    var description: String
    
    var body: some View {
        
        VStack {
            Text(name)
                .font(.headline)
                .padding()
            Text(description)
                .font(.subheadline)
                .multilineTextAlignment(.center)
            
        }
    }
}

struct ProfileDescription_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDescription(name: "Fiig", description: """
augmented street art ☁️ // blockchain developer
Boston, MA
"""
        )
    }
}
