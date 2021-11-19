//
//  PieceModal.swift
//  PieceModal
//
//  Created by crks on 8/23/21.
//

import SwiftUI

struct CustomDivider: View {
    var body: some View {
        Group {
            Rectangle()
        }
        .frame(width: 1, height: 100)
        .foregroundColor(.white)
        .padding(.leading, 10)
        .padding(.trailing, 4)
    }
}

struct PieceModal: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "info.circle")
                    .font(.system(size: 20))
                    .padding(.trailing, 70)
                    .frame(maxWidth: .infinity)
                Text("The Queen")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity)
                Image(systemName: "xmark.circle.fill")
                    .font(.system(size: 20))
                    .padding(.leading, 70)
                    .frame(maxWidth: .infinity)
                    .onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                    }
                
            }
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
            
            Image("queen")
                .resizable()
                .frame(width: 150, height: 200)
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 20, trailing: 0))
            HStack {
                VStack(alignment: .leading) {
                    Text("@dthinkum")
                        .font(.headline)
                        .underline()
                    Text("collector")
                        .font(.subheadline)
                        .padding(.bottom, 10)
                    Text("@fiigmnt")
                        .font(.headline)
                        .underline()
                    Text("artist")
                        .font(.subheadline)
                }
                CustomDivider()
                VStack(alignment: .leading) {
                    Text("Current Price")
                        .font(.system(size: 22))
                    Text("4.59 Ξ")
                        .font(.system(size: 25))
                        .bold()
                    Text("$15,166.23")
                        .font(.system(size: 20))
                }
            }
            HStack(alignment: .top) {
                VStack {
                    Button(action: {
                        print("Purchase")
                        
                    }) {
                        Text("Purchase*")
                            .padding(EdgeInsets(top: 10, leading: 70, bottom: 10, trailing: 70))
                            .background(Color.black)
                            .foregroundColor(.white)
                            .border(Color.white)
                            .font(.subheadline)
                    }
                    Text("*purchasing only available to registered collectors")
                        .font(.system(size: 8))
                    
                }
                VStack {
                    Button(action: {
                        print("like")
                        
                    }) {
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 38, height: 34)
                            .overlay(
                                Image(systemName: "heart.fill")
                                    .font(.system(size: 20))
                                    .foregroundColor(.black)
                                    .background(Color.white)
                            )
                    }
                    Text("10.5k")
                        .font(.system(size: 10))
                }
            }
            MapView(pieces: [Piece(coordinate: .init(latitude: 42.988863649387675, longitude: -71.46246972784682), width: 22, height: 22, color: Color(red: 0.65, green: 0.48, blue: 0.35))])
                .padding()
                .padding()
            Spacer()
        }
    }
}

struct PieceModal_Previews: PreviewProvider {
    static var previews: some View {
        PieceModal().previewDevice("iPhone 12").preferredColorScheme(.dark)
    }
}
