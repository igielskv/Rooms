//
//  ContentView.swift
//  Rooms
//
//  Created by Manoli on 18/07/2020.
//  Copyright © 2020 macForce. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var rooms: [Room] = []
    
    var body: some View {
        NavigationView {
            List(rooms) { room in
                NavigationLink(destination: Text(room.name)) {
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
            .navigationBarTitle(Text("Rooms"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rooms: testData)
    }
}
