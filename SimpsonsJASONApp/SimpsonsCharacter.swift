//
//  SimpsonsCharacter.swift
//  SimpsonsJASONApp
//
//  Created by MAC Consultant on 3/2/19.
//  Copyright © 2019 MAC Consultant. All rights reserved.
//

import UIKit

class SimpsonsCharacters: Codable
{
    let RelatedTopics: [SimpsonsCharacter]
    
    init(RelatedTopics: [SimpsonsCharacter])
    {
        self.RelatedTopics = RelatedTopics
    }
}

class Icons: Codable
{
    let URL: String
    
    init(URL: String)
    {
        self.URL = URL
   }
}

class SimpsonsCharacter: Codable
{
    let Icon: Icons
    let Text: String
    
    init(Icon: Icons, Text: String)
    {
        self.Icon = Icon
        self.Text = Text
    }
}
