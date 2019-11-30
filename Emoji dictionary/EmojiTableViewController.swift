//
//  EmojiTableViewController.swift
//  Emoji dictionary
//
//  Created by Syed Ahmad on 11/30/19.
//  Copyright © 2019 Syed Ahmad. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    // use Ctrl + Command + space bar to pring up the pop-up of emojis to enter them as below
    var emojis = ["😀", "🚗", "⏰","🏖","🍏", "🕌"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = emojis[indexPath.row]
        

        return cell
    }
 
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "ourSegue", sender: emoji)
    
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDefVC = segue.destination as! EmojiDefinitionViewController
        emojiDefVC.emoji = sender as!String
    }
    
}
