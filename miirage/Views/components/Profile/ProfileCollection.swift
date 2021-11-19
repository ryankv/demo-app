//
//  ProfileCollection.swift
//  ProfileCollection
//
//  Created by crks on 8/18/21.
//

import SwiftUI

struct ProfileCollection: View {
    let data:[String] = ["van", "power", "dumpster", "dumpster2", "van2"]
    
    let columns = [
        GridItem(.flexible(minimum: 32), spacing: 1),
        GridItem(.flexible(minimum: 32), spacing: 1),
        GridItem(.flexible(minimum: 32), spacing: 1),
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columns, spacing: 1) {
                ForEach(data, id: \.self) { item in
                    CollectionElement(image: item)
                }
            }
//            .padding(.horizontal)
//            .frame(maxHeight: 300)
        }
    }
}
struct ProfileCollection_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCollection()
    }
}
