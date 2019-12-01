//
//  EmojiDefinitionViewController.swift
//  Emoji dictionary
//
//  Created by Syed Ahmad on 11/30/19.
//  Copyright © 2019 Syed Ahmad. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {
    
    var emoji = Emoji()

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var emojiDefLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji.icon
        emojiDefLabel.text = emoji.description
        categoryLabel.text = "Category: \(emoji.category)"
        birthLabel.text = "Birth Year: \(emoji.year)"
        
       // "😀", "🚗", "⏰","🏖","🍏", "🕌"
        /*
        if emoji == "😀" {
            emojiDefLabel.text = "This is my happy face"
        } else if emoji == "🚗"{
            emojiDefLabel.text = "This is my favorite red car"
        } else if emoji == "⏰" {
            emojiDefLabel.text = "This is the workd clock"
        } else if emoji == "🏖" {
            emojiDefLabel.text = "This is Cartagena beach at Bocagrande"
        }else if emoji == "🍏" {
            emojiDefLabel.text = "This is sour apple"
            birthLabel.text = "Birth Year: 2017"
            categoryLabel.text = "Category: Food"
        }else if emoji == "🕌" {
            emojiDefLabel.text = "This is the MCC Masjid Pleasanton"
            birthLabel.text = "Birth Year:2010"
            categoryLabel.text = "Category: Places of Worship"
        }
        */
        
        
        
    }


}
