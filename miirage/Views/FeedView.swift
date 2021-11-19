//
//  FeedView.swift
//  FeedView
//
//  Created by crks on 8/24/21.
//

import SwiftUI

struct FeedItem: Identifiable {
    let id = UUID()
    let userImage: Image
    let userName: String
    let description: String
    let pieceIcon: Image
    let follow: Bool
}

struct FeedView: View {
    
    private let feed: [FeedItem] = [
        FeedItem(userImage: Image("profile"), userName: "fiigmnt", description: "minted a new piece in Boston, USA", pieceIcon: Image("dumpster"), follow: false),
        FeedItem(userImage: Image("coopa"), userName: "coopa", description: "liked the piece you minted in LA, USA", pieceIcon: Image("queen"), follow: false),
        FeedItem(userImage: Image("boi"), userName: "BOI", description: "minted a new piece 24 miles from you ", pieceIcon: Image(""), follow: true),
        FeedItem(userImage: Image("dthinkum"), userName: "dthinkum", description: "purchased your piece 'Power' for 1.4Ξ", pieceIcon: Image("power"), follow: false),
        FeedItem(userImage: Image("pranksy"), userName: "pranksy", description: "minted a new piece in LA", pieceIcon: Image("prankp"), follow: false),
        FeedItem(userImage: Image("pranksy"), userName: "pranksy", description: "started following you", pieceIcon: Image(""), follow: true),
        FeedItem(userImage: Image("BRANES"), userName: "BRANES", description: "minted a new piece ✌️", pieceIcon: Image("BRANESp"), follow: false),
        FeedItem(userImage: Image("profile"), userName: "dthinkum", description: "started following you", pieceIcon: Image(""), follow: true),
        FeedItem(userImage: Image("coopa"), userName: "coopa", description: "started following you", pieceIcon: Image(""), follow: true),
        FeedItem(userImage: Image("boi"), userName: "BOI", description: "minted a new piece 24 miles from you ", pieceIcon: Image("boip"), follow: false),
        FeedItem(userImage: Image("profile"), userName: "fiigmnt", description: "minted a new piece in Boston, USA", pieceIcon: Image("dumpster"), follow: false),
        FeedItem(userImage: Image("coopa"), userName: "coopa", description: "liked the piece you minted in LA, USA", pieceIcon: Image("queen"), follow: false),
        FeedItem(userImage: Image("boi"), userName: "BOI", description: "minted a new piece 24 miles from you ", pieceIcon: Image(""), follow: true),
        FeedItem(userImage: Image("dthinkum"), userName: "dthinkum", description: "purchased your piece 'Power' for 1.4Ξ", pieceIcon: Image("power"), follow: false),
        FeedItem(userImage: Image("pranksy"), userName: "pranksy", description: "minted a new piece in LA", pieceIcon: Image("prankp"), follow: false),
        FeedItem(userImage: Image("pranksy"), userName: "pranksy", description: "started following you", pieceIcon: Image(""), follow: true),
        FeedItem(userImage: Image("BRANES"), userName: "BRANES", description: "minted a new piece ✌️", pieceIcon: Image("BRANESp"), follow: false),
        FeedItem(userImage: Image("profile"), userName: "dthinkum", description: "started following you", pieceIcon: Image(""), follow: true),
        FeedItem(userImage: Image("coopa"), userName: "coopa", description: "started following you", pieceIcon: Image(""), follow: true),
        FeedItem(userImage: Image("boi"), userName: "BOI", description: "minted a new piece 24 miles from you ", pieceIcon: Image("boip"), follow: false),
    ]
    
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(feed) { item in
                FeedElement(item: item)
            }
            Spacer()
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView().previewDevice("iPhone 12").preferredColorScheme(.dark)
    }
}
