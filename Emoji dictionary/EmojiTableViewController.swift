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
    var emojis : [Emoji] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = getEmojiObjects()

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        let tempEmoji = emojis[indexPath.row]
        cell.textLabel?.text = "\(tempEmoji.icon) - \(tempEmoji.category)"
        

        return cell
    }
 
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "ourSegue", sender: emoji)
    
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDefVC = segue.destination as! EmojiDefinitionViewController
        
        emojiDefVC.emoji = sender as! Emoji
    }
    
    
    func getEmojiObjects() -> [Emoji] {
        let smiley = Emoji()
        smiley.icon = "😀"
        smiley.category = "Faces"
        smiley.description = "My Happy Face"
        smiley.year = 2010

        let apple = Emoji()
        apple.icon = "🍏"
        apple.category = "Fruits"
        apple.description = "A green sour Apple"
        apple.year = 2015

        
        let auto = Emoji()
        auto.icon = "🚗"
        auto.category = "Automobiles"
        auto.description = "A cool red car"
        auto.year = 2007
        
        let watch = Emoji()
        watch.icon = "⏰"
        watch.category = "Chronometers"
        watch.description = "A durable alarm clock"
        watch.year = 2013
        
        
        let mcc = Emoji()
        mcc.icon = "🕌"
        mcc.category = "Places of Worship"
        mcc.description = "MCC East Bay in Pleasanton"
        mcc.year = 2009
        
        return [smiley, apple, auto, watch, mcc]
    }
    
}
