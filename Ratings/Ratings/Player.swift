//
//  Player.swift
//  Ratings
//
//  Created by Persistent on 05/07/16.
//  Copyright © 2016 JaysSwiftProject. All rights reserved.
//

import Foundation
import UIKit

struct Player {
    var name: String?
    var game: String?
    var rating: Int
    
    init(name: String?, game: String?, rating: Int) {
        self.name = name
        self.game = game
        self.rating = rating
    }
}