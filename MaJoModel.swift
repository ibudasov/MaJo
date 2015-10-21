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
        "As long as there are tests, there will be prayer in schools.",
        "What did one ocean say to the other ocean? Nothing, they just waved.",
        "A day without sunshine is like, night.",
        "Born free, taxed to death.",
        "For Sale: Parachute. Only used once, never opened.",
        "A bank is a place that will lend you money, if you can prove that you don’t need it.",
        "What is faster Hot or cold? Hot, because you can catch a cold.",
        "What’s the difference between a new husband and a new dog? After a year, the dog is still excited to see you.",
        "Why is it so hard for women to find men that are sensitive, caring, and good-looking? —Because those men already have boyfriends.",
        "What’s the difference between a paycheck and a pen*s? You don’t have to beg your wife to blow your paycheck.",
        "Love may be blind, but marriage is a real eye-opener.",
        "Why did the scientist install a knocker on his door? He wanted to win the No-bell prize!",
        "Having sex is like playing bridge. If you don’t have a good partner, you’d better have a good hand.",
        "When everything’s coming your way, you’re in the wrong lane.",
        "I say no to alcohol, it just doesn’t listen.",
        "If you can’t convince them, confuse them.",
        "Whenever I find the key to success, someone changes the lock.",
        "Why did the bee get married? Because he found his honey.",
        "What do you call a boomerang that doesn’t come back? A stick.",
        "Why is the man who invests all your money called a broker?",
        "My birth certificate was a letter of apology that my dad got from the condom company",
        "Time is what keeps things from happening all at once.",
        "Lottery: a tax on people who are bad at math.",
        "If at first you don’t succeed, destroy all evidence that you tried.",
        "Eat right. Stay fit. Die anyway.",
        "I just let my mind wander, and it didn’t come back.",
        "IRS: We’ve got what it takes to take what you have got.",
        "I can handle pain until it hurts.",
        "Time flies like an arrow; fruit flies like a banana.",
        "A bargain is something you don’t need at a price you can’t resist.",
        "You cannot taste me, until you undress me. -Banana",
        "You cannot eat me unless you lick me. -Ice-cream",
        "You cannot play with me unless you blow me. -Balloon",
        "You cannot eat me unless you spread me. -Butter",
        "Do not argue with an idiot. He will drag you down to his level and beat you with experience.",
        "A day without smiling is a day wasted.",
        "Sometimes we expect more from others because we would be willing to do that much more for them.",
        "When tempted to fight fire with fire, remember that the Fire Department usually uses water.",
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