//
//  RoomStore.swift
//  Rooms
//
//  Created by Manoli on 19/07/2020.
//  Copyright © 2020 macForce. All rights reserved.
//

import SwiftUI
import Combine

class RoomStore: ObservableObject {
    var rooms: [Room] {
        didSet {
            didChange.send()
        }
    }
    
    init(rooms: [Room] = []) {
        self.rooms = rooms
    }
    
    var didChange = PassthroughSubject<Void, Never>()
}
