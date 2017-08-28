//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by ARPAN BARUAH on 8/26/17.
//  Copyright © 2017 ARPAN BARUAH. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {

    
    //var emojis = ["🤡","😿","🤑","👺","🙏","✊","🐹"]
    var emojis : [Emoji] = []
    
    @IBOutlet weak var daTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        daTableView.dataSource = self
        daTableView.delegate = self
        
        emojis = makeEmojiArray()
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let check = emojis[indexPath.row]
        cell.textLabel?.text = check.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      let defVC = segue.destination as! DefinitionViewController
        
        defVC.emoji = sender as! Emoji
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🐹"
        emoji1.definition = "This is a Hamster"
        emoji1.category = "Animal"
        emoji1.birthYear = 2014
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "👺"
        emoji2.definition = "An angry person"
        emoji2.category = "Smiley"
        emoji2.birthYear = 2011
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "✊"
        emoji3.definition = "We are one"
        emoji3.category = "Smiley"
        emoji3.birthYear = 2010
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😿"
        emoji4.definition = "A sad cat"
        emoji4.category = "Animal"
        emoji4.birthYear = 2014
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🤡"
        emoji5.definition = "A funny Clown"
        emoji5.category = "Smiley"
        emoji5.birthYear = 1986
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🤑"
        emoji6.definition = "Money all the way"
        emoji6.category = "Smiley"
        emoji6.birthYear = 2009
        
        
       return [emoji1,emoji2,emoji3,emoji4,emoji5, emoji6]
        
    }


}

