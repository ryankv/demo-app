//
//  ContentView.swift
//  miirage
//
//  Created by crks on 8/17/21.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var showingSheet = false
    
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().backgroundColor = UIColor.black
    }
    
    private let pieces: [Piece] = [
        Piece(coordinate: .init(latitude: 42.988863649387675, longitude: -71.46246972784682), width: 22, height: 22, color: generateColor()),
        // 42.988863649387675, -71.46246972784682
        Piece(coordinate: .init(latitude: 42.9893356658254, longitude: -71.46293024941994), width: 35, height: 35, color: generateColor()),
        // 42.9893356658254, -71.46293024941994
        Piece(coordinate: .init(latitude: 42.98935986356565, longitude: -71.46157348902086), width: 8, height: 8, color: generateColor()),
        // 42.98935986356565, -71.46157348902086
        Piece(coordinate: .init(latitude: 42.9894345051337, longitude: -71.4636196602817), width: 15, height: 15, color: generateColor()),
        // 42.9894345051337, -71.4636196602817
        Piece(coordinate: .init(latitude: 42.988500557921476, longitude: -71.46205057515921), width: 10, height: 10, color: generateColor()),
        // 42.988500557921476, -71.46205057515921
        Piece(coordinate: .init(latitude: 42.988068002968824, longitude: -71.46152186885367), width: 20, height: 20, color: generateColor()),
        // 42.988068002968824, -71.46152186885367
        Piece(coordinate: .init(latitude: 42.989365560582804, longitude: -71.46020412792011), width: 10, height: 10, color: generateColor()),
        // 42.989365560582804, -71.46020412792011
        Piece(coordinate: .init(latitude: 42.99003242612495, longitude: -71.46364762025841), width: 15, height: 15, color: generateColor()),
        //42.99003242612495, -71.46364762025841
        Piece(coordinate: .init(latitude: 42.98997749145093, longitude: -71.46366907824955), width: 10, height: 10, color: generateColor()),
        //42.98997749145093, -71.46366907824955
        Piece(coordinate: .init(latitude: 42.99078581789957, longitude: -71.46421624822854), width: 15, height: 15, color: generateColor()),
        //42.99078581789957, -71.46421624822854
        Piece(coordinate: .init(latitude: 42.990550378799256, longitude: 71.4630789850009), width: 15, height: 15, color: generateColor()),
        //42.990550378799256, -71.4630789850009
        Piece(coordinate: .init(latitude: 42.98987545541258, longitude: -71.46224215094965), width: 15, height: 15, color: generateColor()),
        //42.98987545541258, -71.46224215094965
        Piece(coordinate: .init(latitude: 42.999859477355244, longitude: -71.47081784432679), width: 25, height: 25, color: generateColor())
        //42.999859477355244, -71.47081784432679
    ]
    
    
    
    var body: some View {
        TabView {
            MapView(pieces: pieces)
                .ignoresSafeArea()
                .tabItem {
                    Image(systemName: "map.fill")
                    Text("Explore")
                }
            
            AR()
                .onTapGesture {
                    showingSheet.toggle()
                }
                .sheet(isPresented: $showingSheet) {
                    PieceModal()
                        .background(Color.black)
                        .ignoresSafeArea()
                }
                .ignoresSafeArea()
                .tabItem {
                    Image(systemName: "eyeglasses")
                    Text("Collect")
                }
            
            FeedView()
                .tabItem {
                    Image(systemName: "square.3.stack.3d.top.fill")
                    Text("Feed")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Exhibit")
                }
        }
        .accentColor(.white)
        .ignoresSafeArea(edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 12").preferredColorScheme(.dark)
    }
}

