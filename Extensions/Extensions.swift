//
//  Extensions.swift
//  Extensions
//
//  Created by Felicity Johnson on 10/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


extension String {
    func whisper() -> String {
        
        return self.lowercased()
    }
    
}

extension String {
    func shout() -> String {
        
        return self.uppercased()
    }
}


extension String {
    
    var pigLatin : String {
        
        let lowercase = self.lowercased()
        let words = lowercase.components(separatedBy: " ")
        var finalSentorWord = ""
        
        var pigLatin = ""
        
        for word in words {
            
            pigLatin = word
            let removedItemIndex = pigLatin.startIndex
            let removedItem = pigLatin[removedItemIndex]
            pigLatin.remove(at: pigLatin.startIndex)
            pigLatin.insert(removedItem, at: pigLatin.endIndex)
            pigLatin.insert("a", at: pigLatin.endIndex)
            pigLatin.insert("y", at: pigLatin.endIndex)
            
            if finalSentorWord.isEmpty {
                
                finalSentorWord = pigLatin.capitalized
            } else {
                
                finalSentorWord = "\(finalSentorWord) \(pigLatin.capitalized)"
                
            }
        }
        
        return finalSentorWord
    }
}

extension String {
    
    var points : Int {
        
        let vowel = ["a", "e", "i", "o", "u", "y"]
        
        let lowerCaseString = self.lowercased()
        print(lowerCaseString)
        let wordArray = lowerCaseString.components(separatedBy: " ")
        print(wordArray)
        var finalPoints = 0
        var vowelCount = 0
        var consCount = 0
        
        for character in lowerCaseString.characters {
            
            if character == "a" || character == "e" || character == "i" || character == "o" || character == "u" || character == "u" || character == "y" {
                
                vowelCount += 1
                
            } else {
                
                consCount += 1
                
            }
            
            finalPoints = (vowelCount * 2) + consCount
        }
        
        
        return finalPoints
    }
}


extension Int {
    
    func half() -> Int {
        
        return self / 2
    }
}

extension Int {
    
    func isDivisible(by number: Int) -> Bool {
        
        
        if self % number == 0 {
            
            return true
        }
        
        return false
    }
}


extension Int {
    
    var squared: Int {
        
        return self * self
        
    }
}

extension Int {
    
    var halved : Int {
        
        return self / 2
    }
}


extension String {
    
    var unicornLevel : String {
        
        var newString = ""
        var stringNoSpace = self.replacingOccurrences(of: " ", with: "")
        
        for _ in stringNoSpace.characters {
            
            newString += "🦄"
        }
        
        return newString
        
    }
}
















