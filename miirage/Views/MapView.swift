//
//  MapView.swift
//  Landmarks
//
//  Created by crks on 8/16/21.
//

import SwiftUI
import MapKit
import RealityKit

struct Piece: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
    let width: CGFloat
    let height: CGFloat
    let color: Color
}

func generateColor() -> Color {
    let colors = [
        Color(red: 0.84, green: 0.67, blue: 0.55),
        //                Color(red: 0.31, green: 0.24, blue: 0.17),
        //                Color(red: 0.34, green: 0.17, blue: 0.16),
        Color(red: 0.65, green: 0.48, blue: 0.35)
    ]
    
    let index = Int.random(in: 0...1)
    
    return colors[index]
}


struct MapView: View {
    
    var pieces: [Piece]
    
    @State private var userTrackingMode: MapUserTrackingMode = .follow
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 42.99003242612495,
            longitude: -71.46364762025841
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 0.01,
            longitudeDelta: 0.01
        )
    )
    
    var body: some View {
        
        Map(coordinateRegion: $region,
            interactionModes: .all,
            showsUserLocation: true,
            userTrackingMode: $userTrackingMode,
            annotationItems: pieces) { piece in
            MapAnnotation(
                coordinate: piece.coordinate,
                anchorPoint: CGPoint(x: 0.5, y: 0.5)
            ) {
                HStack {
                    Circle()
                        .fill(piece.color)
                        .frame(width: piece.width, height: piece.height)
                        .opacity(0.8)
                    if (pieces.count > 1 && piece.id == pieces[12].id) {
                        VStack {
                            Text("@fiigmnt")
                                .font(.system(size: 10))
                                .underline()
                                .bold()
                            Text("24.5k likes")
                                .font(.system(size: 8))
                        }
                    }
                }
            }
            
        }
            .brightness(-0.2)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(pieces: [Piece(coordinate: .init(latitude: 42.988863649387675, longitude: -71.46246972784682), width: 22, height: 22, color: Color(red: 0.65, green: 0.48, blue: 0.35))]).previewDevice("iPhone 12").preferredColorScheme(.dark)
    }
}

