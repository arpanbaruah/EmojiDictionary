//
//  DefinitionViewController.swift
//  EmojiDictionary
//
//  Created by ARPAN BARUAH on 8/27/17.
//  Copyright © 2017 ARPAN BARUAH. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinition: UILabel!
    @IBOutlet weak var emojiCategory: UILabel!
    @IBOutlet weak var emojiBirthYear: UILabel!
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       emojiLabel.text = emoji.stringEmoji
       emojiDefinition.text = "Definition : \(emoji.definition)"
       emojiCategory.text = "Category : \(emoji.category)"
       emojiBirthYear.text = "Origination Date : \(emoji.birthYear)"
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
