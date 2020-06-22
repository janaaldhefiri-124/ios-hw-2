//
//  ViewController.swift
//  iOSHomework2
//
//  Created by Bodour Alrashidi on 6/7/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var membersNamesArray  : [String] = []
    
    var convertToLetter = true
    @IBOutlet weak var secretSocietyNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBAction func addMember(_ sender: Any) {
        
        let member = nameTextField.text!
        
        // MARK: -   1️⃣ تحت الخط membersNamesArray إلي المصفوفه memberقم بإضافة المتغير
   
        
        membersNamesArray.append(member)
        
        
        
        
        // MARK: -   النهاية
        
        nameTextField.text = ""
    }
    
    
    
    
    @IBAction func letterButton(_ sender: Any) {
        
        // MARK: -  4️⃣ functionCall داخل المتغير  secretNameLetter قم باستدعاء الدالة
        
        var functionCall = secretNameLetter(members: membersNamesArray)
        
        
        // MARK: -   النهاية
        
        
        secretSocietyNameLabel.text =  functionCall
    }
    
    
    
    
    @IBAction func emojiButton(_ sender: Any) {
        
        
        
        // MARK: -  5️⃣ functionCall داخل المتغير  secretNameEmoji قم باستدعاء الدالة
        
        var functionCall = secretNametoEmoji(array: membersNamesArray)
        
        // MARK: -   النهاية
        
        secretSocietyNameLabel.text =  functionCall
        
        
    }
    
    
    
    
    // MARK: - 2️⃣ تحت هذا الخط secretNameLetter قم بكتابة الداله
    
    func secretNameLetter(members : [String]) -> String {
        var secret = ""
        
        for member in members {
            secret += String(member.prefix(1)).uppercased()
             }
      return secret
    }
    

    // MARK: -   النهاية
    
    
    
    
    
    // MARK: - 3️⃣ تحت هذا الخط secretNameEmoji قم بكتابة الداله
    func secretNametoEmoji(array : [String]) -> String {
        var secret: String = ""
        let emojiLetter: [String: String] = [
            "a" : "😃",
            "b" : "😄",
            "c" : "😁",
            "d" : "😚",
            "e" : "😳",
            "f" : "🧚🏼‍♀️",
            "g" : "🙆🏻‍♀️",
            "h" : "👚",
            "i" : "👜",
            "j" : "🎒",
            "k" : "🦚",
            "l" : "🌿",
            "m" : "🐲",
            "n" : "🐾",
            "o" : "🐳",
            "p" : "🎄",
            "q" : "🍥",
            "r" : "🍣",
            "s" : "🎹",
            "t" : "🎲",
            "u" : "🎳",
            "v" : "🛵",
            "w" : "🕰",
            "x" : "🔨",
            "y" : "🗜",
            "z" : "🎁" ]
         
        for member in array{
            let prefix = String(member.prefix(1))
            let emoji = emojiLetter[prefix] ?? "⁉️"
            secret += emoji
        }
        return secret
    }
    
    // MARK: -   النهاية
    
    
    
}
