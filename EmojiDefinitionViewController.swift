//
//  EmojiDefinitionViewController.swift
//  Emoji dictionary
//
//  Created by Syed Ahmad on 11/30/19.
//  Copyright © 2019 Syed Ahmad. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {
    
    var emoji = ""

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
        
       // "😀", "🚗", "⏰","🏖","🍏", "🕌"
        
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
        }else if emoji == "🕌" {
            emojiDefLabel.text = "This is the MCC Masjid Pleasanton"
        }
        
    }


}
