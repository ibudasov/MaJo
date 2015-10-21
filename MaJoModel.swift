//
//  MaJoModel.swift
//  MaJo
//
//  Created by Igor Budasov on 18.10.15.
//  Copyright (c) 2015 Igor Budasov. All rights reserved.
//

import Foundation

class MaJoModel {
    let pullOfMamaJokes = [
        "Yo mama's so big her belly button's got an echo.",
        "Yo mama's so big she cant wear an X jacket cause choppers keep landing on her back",
        "Yo mama's so big she uses I-95 for a Slip 'n Slide",
        "Yo mama's so big that they had to change 'One size fit's all' to 'One size fits most'",
        "Yo mama's so big when she goes to the movie theatre she sits next to everybody.",
        "Yo mama's so big when she went to the airport and said she wanted to fly they stamped Goodyear on her and sent her out to the runway",
        "Yo mama's so big, it takes her 2 hours just to haul ass.",
        "Yo mama's so fat a picture of her would fall off the wall!",
        "Yo mama's so fat and old that when God said 'Let there be Light', he told her to move her fat butt out of the way.",
        "Yo mama's so fat at the zoo, the elephants started throwing her peanuts.",
        "Yo mama's so fat every time she wears high heels, she strikes oil.",
        "Yo mama's so fat her blood type is ragu",
        "Yo mama's so fat her college graduation picture was an airial. ",
        "Yo mama's so fat her yearbook picture is an arial",
        "Yo mama's so fat if she got her shoes shined, she'd have to take his word for it!",
        "Yo mama's so fat if she wears fishnet stockings, they'd better be 50 pound test!",
        "Yo mama's so fat if she weighed five more pounds, she could get group insurance!",
        "Yo mama's so fat n black she jumped in the ocean and they ungee jumped and went straight to hell",
        "Yo mama's so fat she can't even tie her own shoes.",
        "Yo mama's so fat she can't reach her back pocket.",
        "Yo mama's so fat she can't wear Dazzey Dukes. She has to wear Boss Hoggs",
        "Yo mama's so fat she dries her pants in the driveway",
        "Yo mama's so fat she eats biscuits like tic tacs",
        "Yo mama's so fat she eats wheat thicks.",
        "Yo mama's so fat she fell in love and broke it.",
        "Yo mama's so fat she gets clothes in three sizes: extra large, jumbo, and oh-my-god-it's-coming-towards-us!"
    ]
    
    let pullOfSafeJokes = [
        "Some safe joke",
        "Another one"
    ]
    
    func getRandomJoke(easternEuropeMode: Bool) -> String {
        return (easternEuropeMode)
            ? pullOfSafeJokes[getRandomId(pullOfSafeJokes)]
            : pullOfMamaJokes[getRandomId(pullOfMamaJokes)]
    }
    
    func getRandomId(pullOfJokes: [String]) -> Int {
        return Int(arc4random_uniform(UInt32(pullOfJokes.count)))
    }
    
}