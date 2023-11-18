//
//  Card.swift
//  CardWorkout
//
//  Created by Tomas O'Brien on 11/17/23.
//

import UIKit

struct Card {
    static var allValues: [UIImage] = {
        let suits = ["H", "S", "D", "C"]
        let ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        // Use flatMap to iterate over suits and compactMap to iterate over ranks,
        // creating an array of UIImage instances for each card combination
        return suits.flatMap { suit in
            ranks.compactMap { rank in
                UIImage(named: "\(rank)\(suit)")
            }
        }
    }()
}
