//
//  ContentView.swift
//  Rooms
//
//  Created by Manoli on 18/07/2020.
//  Copyright © 2020 macForce. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var store = RoomStore()
    
    var body: some View {
        NavigationView {
            List(store.rooms) { room in
                RoomCell(room: room)
            }
            .navigationBarTitle(Text("Rooms"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: RoomStore(rooms: testData))
    }
}

struct RoomCell: View {
    let room: Room
    
    var body: some View {
        NavigationLink(destination: RoomDetail(room: room)) {
            Image(room.thumbnailName)
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(room.name)
                Text("\(room.capacity) people")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
