//
//  RoomDetail.swift
//  Rooms
//
//  Created by Manoli on 18/07/2020.
//  Copyright © 2020 macForce. All rights reserved.
//

import SwiftUI

struct RoomDetail: View {
    let room: Room
    @State private var zoomed = false
    
    var body: some View {
        Image(room.imageName)
            .resizable()
            .aspectRatio(contentMode: zoomed ? .fill : .fit)
            .navigationBarTitle(Text(room.name), displayMode: .inline)
            .onTapGesture {
                withAnimation { self.zoomed.toggle() }
            }
    }
}

struct RoomDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView { RoomDetail(room: testData[0]) }
    }
}
