//
//  Quote.swift
//  splash-screen-demo
//
//  Created by Michael Pujol on 8/5/18.
//  Copyright © 2018 Michael Pujol. All rights reserved.
//

import UIKit

class VideoGameQuote: NSObject {

    var quote: String
    var author: String

    init(quote: String, author: String) {
        self.quote = "\"\(quote)\""
        self.author = author.capitalized
    
    }
    
    static func loadSampleQuotes() -> [VideoGameQuote] {
        let sampleQuotes = [VideoGameQuote(quote: "This foe is beyond any of you... Run!", author: "Gandalf the Gray"),
                            VideoGameQuote(quote: "We're still friends, right?", author: "Hawkeye"),
                            VideoGameQuote(quote: "The Answers you seek shall be yours, once I claim what is mine.", author: "Thor"),
                            VideoGameQuote(quote: "I'm like a dog chasing cars. I wouldn't know what to do if I caught one.", author: "The Joker"),
                            VideoGameQuote(quote: "Nothing goes over my head! My reflexes are too fast, I would catch it.", author: "Drax the Destroyer"),
                            VideoGameQuote(quote: "I'm Mary Poppins, y'all!", author: "Yondu"),
                            VideoGameQuote(quote: "I can't do that Dave...", author: "HAL 9000"),
                            VideoGameQuote(quote: "Even the smallest person can change the course of the future.", author: "Galadriel"),
                            VideoGameQuote(quote: "When in doubt, go to the library.", author: "Ron Weasley"),
                            VideoGameQuote(quote: "Wit beyond measure is a man's greatest treasure.", author: "Luna Lovegood"),
                            VideoGameQuote(quote: "We are only as strong as we are united, as weak as we are divided.", author: "Albus Dumbledore"),
                            VideoGameQuote(quote: "It does not do to dwell on dreams and forget to live", author: "Albus Dumbledore"),
                            VideoGameQuote(quote: "It takes a great deal of bravery to stand up to our enemies, but just as much to stand up to our friends", author: "Albus Dumbledore"),
                            VideoGameQuote(quote: "Oh, I'm sorry. I don't know how this machine works...", author: "Peter Quill"),
                            VideoGameQuote(quote: "I am Groot.", author: "Groot"),
                            VideoGameQuote(quote: "We're just like Kevin Bacon!", author: "Peter Quill"),
                            VideoGameQuote(quote: "You just wanna suck the joy outta everything.", author: "Rocket Raccoon"),
                            VideoGameQuote(quote: "Die, spaceship!", author: "Drax The Destroyer"),
                            VideoGameQuote(quote: "I swear, I left him right here.", author: "Loki"),
                            VideoGameQuote(quote: "I'm not doing 'Get Help'.", author: "Loki"),
                            VideoGameQuote(quote: "Welcome, Strongest Avenger.", author: "Quinjet Computer"),
                            VideoGameQuote(quote: "Goodbye, New Doug!", author: "Korg"),
                            VideoGameQuote(quote: "No, I don't have a phone but you could have sent me an electronic letter. It's called an email.", author: "Thor"),
                            VideoGameQuote(quote: "Sometimes you gotta run before you can walk.", author: "Tony Stark"),
                            VideoGameQuote(quote: "Peggy...I'm gonna need a rain check on that dance.", author: "Steve Rogers"),
                            VideoGameQuote(quote: "Just because something works doesn't mean it can't be improved.", author: "Shuri"),
                            VideoGameQuote(quote: "When you said you would take me to California for the first time, I thought you meant Coachella.", author: "Shuri"),
                            VideoGameQuote(quote: "I never freeze.", author: "T'Challa"),
                            VideoGameQuote(quote: "Are you done? Are you, are you done?", author: "M'Baku"),
                            VideoGameQuote(quote: "I'll be back.", author: "T-101"),
                            VideoGameQuote(quote: "Live long and prosper.", author: "Spock"),
                            VideoGameQuote(quote: "It's only a flesh wound.", author: "Knight of Knee"),
                            VideoGameQuote(quote: "Alright everyone: Chill!", author: "Mr. Freeze"),
                            VideoGameQuote(quote: "I volunteer as tribute!", author: "Katniss Everdeen"),
                            VideoGameQuote(quote: "I'm a leaf on the wind.", author: "Wash"),
                            VideoGameQuote(quote: "Leeloo Dallas Multipass.", author: "Leeloo"),
                            VideoGameQuote(quote: "There is no spoon.", author: "Child"),
                            VideoGameQuote(quote: "Witness me!", author: "Bloodbag"),
                            VideoGameQuote(quote: " Do... or do not. There is no try.", author: "Yoda"),
                            VideoGameQuote(quote: "The Force will be with you. Always.", author: "Obi-Wan Kenobi"),
                            VideoGameQuote(quote: "Never tell me the odds!", author: "Han Solo"),
                            VideoGameQuote(quote: "No. I am your father.", author: "Darth Vader"),
                            VideoGameQuote(quote: "...Pass on what you have learned.", author: "Yoda"),
                            VideoGameQuote(quote: "There's always a bigger fish.", author: "Qui-Gon Jinn"),
                            VideoGameQuote(quote: "Power! Unlimited power!", author: "Darth Sidious"),
                            VideoGameQuote(quote: "Chewie, we're home.", author: "Han Solo"),
                            VideoGameQuote(quote: "Judge me by my size, do you?", author: "Yoda"),
                            VideoGameQuote(quote: "These aren't the droids you're looking for.", author: "Obi-Wan Kenobi"),
                            VideoGameQuote(quote: "Into the garbage chute, fly boy!", author: "Leia Organa"),
                            VideoGameQuote(quote: "It's a trap!", author: "Admiral Ackbar"),
                            VideoGameQuote(quote: "The garbage will do.", author: "Rey"),
                            VideoGameQuote(quote: "So who talks first, you talk first, I talk first?", author: "Poe Dameron"),
                            VideoGameQuote(quote: "That's not how the Force works!", author: "Han Solo"),
                            VideoGameQuote(quote: "I know.", author: "Han Solo"),
                            VideoGameQuote(quote: "Let the Wookie win.", author: "C-3PO"),
                            VideoGameQuote(quote: "What an incredible smell you've discovered.", author: "Han Solo"),
                            VideoGameQuote(quote: "Who's the more foolish; the fool, or the fool who follows him?", author: "Obi-Wan Kenobi"),
                            VideoGameQuote(quote: "There's an Ant-Man and a Spider-Man?", author: "Bruce Banner"),
                            VideoGameQuote(quote: "Thank you, sweet rabbit.", author: "Thor"),
                            VideoGameQuote(quote: "Oh, we're using our made-up names. I'm Spider-Man then.", author: "Peter Parker"),
                            VideoGameQuote(quote: "I'll do YOU one better! WHY is Gamora?", author: "Drax The Destoryer"),
                            VideoGameQuote(quote: "Bring me a bucket, and I'll show you a bucket!", author: "Psycho"),
                            VideoGameQuote(quote: "No gods or kings. Only man.", author: "Andrew Ryan"),
                            VideoGameQuote(quote: "...", author: "Link"),
                            VideoGameQuote(quote: "It's dangerous to go alone, take this!", author: "Old Man"),
                            VideoGameQuote(quote: "Endure and survive.", author: "Ellie"),
                            VideoGameQuote(quote: "You are here, and it's beautiful, and escaping isn't always something bad.", author: "Delilah"),
                            VideoGameQuote(quote: "Stay awhile, and listen!", author: "Deckard Cain"),
                            VideoGameQuote(quote: "Thank you Mario! But our Princess is in another castle!", author: "Toad"),
                            VideoGameQuote(quote: "...", author: "Doomguy"),
                            VideoGameQuote(quote: "Finish him!", author: "Shang Tsung"),
                            VideoGameQuote(quote: "Snake? Snake? SNAAAAAAAAAAAAAAKE!!!", author: "The Colonel"),
                            VideoGameQuote(quote: "Wake me when you need me.", author: "John-117"),
                            VideoGameQuote(quote: "Hey! Listen!", author: "Na'vi"),
                            VideoGameQuote(quote: "Do a barrel roll!", author: "Peppy Hare"),
                            VideoGameQuote(quote: "Boy!", author: "Kratos"),
                            VideoGameQuote(quote: "There was a HOLE here. It's gone now.", author: "Silent Hill"),
                            VideoGameQuote(quote: "You are not a good person. You know that, right? Good people don't end up here.", author: "GLaDOS"),
                            VideoGameQuote(quote: "Praise the sun!", author: "Solaire of Astora"),
                            VideoGameQuote(quote: "You have died of dysentery.", author: "Oregon Trail"),
                            VideoGameQuote(quote: "I've struggled a long time with survivin', but no matter what you have to find something to fight for.", author: "Joel"),
                            VideoGameQuote(quote: "Man, this is like trying to find a bride in a brothel.", author: "Victor Sullivan"),
                            VideoGameQuote(quote: "Elena Fisher. Last year's model.", author: "Elena Fisher"),
                            VideoGameQuote(quote: "Oh man, I'm so tired of climbing s**t", author: "Nathan Drake"),
                            VideoGameQuote(quote: "That's my blood. That's a lot of my blood.", author: "Nathan Drake"),
                            VideoGameQuote(quote: "DRAAAAAAAAAAAAAAAAAAAKE!!!!!", author: "Victor Sullivan"),
                            VideoGameQuote(quote: "Kitty Got Wet", author: "Nathan Drake"),
                            VideoGameQuote(quote: "I'm-a-Wario! I'ma gonna win!", author: "Wario"),
                            VideoGameQuote(quote: "It's a-me, Mario!", author: "Mario Auditore"),
                            VideoGameQuote(quote: "If our lives are already written, it would take a courageous man to change the script.", author: "Alan Wake"),
                            VideoGameQuote(quote: "This is your fault. I'm going to kill you. And all the cake is gone. You don't even care, do you?", author: "GLaDOS"),
                            VideoGameQuote(quote: "Would you kindly...", author: "Atlas"),
                            VideoGameQuote(quote: "Wakka wakka wakka.", author: "Pac-Man"),
                            VideoGameQuote(quote: "RAZOR HAIL", author: "Marcus Fenix"),
                            VideoGameQuote(quote: "You were almost a Jill sandwich!", author: "Barry Burton"),
                            VideoGameQuote(quote: "The genius of the hole: No matter how long you spend climbing out, you can still fall back down in an instant.", author: "Max Payne"),
                            VideoGameQuote(quote: "A winner is you", author: "Pro Wrestling"),
                            VideoGameQuote(quote: "All your base are belong to us.", author: "CATS"),
                            VideoGameQuote(quote: "Jacked up and good to go.", author: "Marine"),
                            VideoGameQuote(quote: "Zeus your son has returned?", author: "Kratos"),
                            VideoGameQuote(quote: "Shall I find something to kill to cheer ourselves up?", author: "HK-47"),
                            VideoGameQuote(quote: "I will move your controller using only the power of my mind.", author: "Psycho Mantis"),
                            VideoGameQuote(quote: "Your soul is mine.", author: "Shang Tsung"),
                            VideoGameQuote(quote: "I'm Commander Shepard, and this my favorite store on the citadel", author: "Commandar Shepard"),
                            VideoGameQuote(quote: "You exist because we allow it, and you will end because we demand it.", author: "Sovereign"),
                            VideoGameQuote(quote: "Why did I move here? I guess it was the weather.", author: "Michael De Santa"),
                            VideoGameQuote(quote: "Jason! Jaaaaaaaason!", author: "Ethan Mars"),
                            VideoGameQuote(quote: "Maaaaaaaaario?", author: "Luigi"),
                            VideoGameQuote(quote: "Medals don't help me sleep at night, Lambert.", author: "Sam Fisher"),
                            VideoGameQuote(quote: "I'm Sorry I don't like the way you are looking at me", author: "Vass"),
                            VideoGameQuote(quote: "The monster you created has returned", author: "Kratos"),
                            VideoGameQuote(quote: "Wait, that's not how it happened.", author: "The Prince of Persia"),
                            VideoGameQuote(quote: "Hey dudes thanks, for rescuing me. Let's go for a burger....Ha! Ha! Ha! Ha!", author: "The President"),
                            VideoGameQuote(quote: "Shoryuken!", author: "Ken"),
                            VideoGameQuote(quote: "Hadoken!", author: "Ryu"),
                            VideoGameQuote(quote: "Let's Blow This Joint", author: "Lucca"),
                            VideoGameQuote(quote: "War has changed.", author: "Old Snake"),
                            VideoGameQuote(quote: "Prepare for Unforeseen Consequences.", author: "G-Man"),
                            VideoGameQuote(quote: "C-c-c-combo breaker!", author: "Killer Instinct"),
                            VideoGameQuote(quote: "Congratulation. This story is happy end. Thank you.", author: "Ghosts 'N Globlins"),
                            VideoGameQuote(quote: "Conglaturation! You have completed a great game!", author: "Ghostbusters"),
                            VideoGameQuote(quote: "People who live in glass houses get pretty good at ducking", author: "Manuel \"Manny\" Calavera"),
                            VideoGameQuote(quote: "...", author: "Gordon Freeman"),
                            VideoGameQuote(quote: "Hulk SMASH!", author: "The Hulk"),
                            VideoGameQuote(quote: "Hodor", author: "Hodor"),
                            VideoGameQuote(quote: "That's my secret Captain, I'm always angry.", author: "Bruce Banner"),
                            VideoGameQuote(quote: "If you cage the beast, the east will get angry.", author: "Wolverine"),
                            VideoGameQuote(quote: "A day may come when the courage of men fails... but it is not THIS day.", author: "Aragorn"),
                            VideoGameQuote(quote: "It is the quality of one's convictions that determines success, not the number of followers.", author: "Remus Lupin"),
                            VideoGameQuote(quote: "If you want to know what a man's like, take a good look at how he treats his inferiors, not his equals.", author: "Sirius Black"),
                            VideoGameQuote(quote: "Hey man, I'm Korg. We're gonna get out of here. Wanna come?", author: "Korg"),
                            VideoGameQuote(quote: "What happens now determines what happens to the rest of the world.", author: "T'Challa"),
                            VideoGameQuote(quote: "By Grabthar's hammer, by the suns of Worvan, you shall be avenged.", author: "Dr. Lazarus"),
                            VideoGameQuote(quote: "I need your clothes, your boots and your motorcycle.", author: "T-800"),
                            VideoGameQuote(quote: "Are you the keymaster?", author: "Dana"),
                            VideoGameQuote(quote: "Where we're going, we don't need roads.", author: "Doc Brown"),
                            VideoGameQuote(quote: "Help me, Obi-Wan Kenobi. You're my only hope.", author: "Leia Organa"),
                            VideoGameQuote(quote: "You can't stop the change, any more than you can stop the suns from setting.", author: "Shmi Skywalker"),
                            VideoGameQuote(quote: "Well, if droids could think, there'd be none of us here, would there?", author: "Obi-Wan Kenobi"),
                            VideoGameQuote(quote: "Traveling through hyperspace ain't like dusting crops, farm boy.", author: "Han Solo"),
                            VideoGameQuote(quote: "We all make choices in life, but in the end our choices make us.", author: "Andrew Ryan"),
                            VideoGameQuote(quote: "The right man in the wrong place can make all the difference in the world.", author: "G-Man"),
                            VideoGameQuote(quote: "A man chooses; a slave obeys.", author: "Andrew Ryan"),
                            VideoGameQuote(quote: "The President Has Been Kidnapped By Ninjas.", author: "Blade and Striker"),
                            VideoGameQuote(quote: "With Great Power, Comes Great Responsibility", author: "Spiderman"),
                            VideoGameQuote(quote: "It Dosen't Matter Who we are, what matters is our plan", author: "Bane"),
                            VideoGameQuote(quote: "I Have seen the future Captain! There are no flags.", author: "Red Skull"),
                            VideoGameQuote(quote: "This city is afraid of me, for I have seen it's true face.", author: "Rorschach"),
                            VideoGameQuote(quote: "I don't like bullies, I don't care where they're from.", author: "Captain America"),
                            VideoGameQuote(quote: "I'm sorry, Dave. I'm afraid I can't do that.", author: "HAL 9000"),
                            VideoGameQuote(quote: "Your time will come. You will face the same Evil, and you will defeat it.", author: "Arwen"),
                            VideoGameQuote(quote: "Many that live deserve death. Some that die deserve life.", author: "Gandalf the Grey"),
                            VideoGameQuote(quote: "You are protected, in short, by your ability to love!", author: "Albus Dumbledore"),
                            VideoGameQuote(quote: "Fear of a name increases fear of the thing itself", author: "Albus Dumbledore"),
                            VideoGameQuote(quote: "After all these years, I've found you.", author: "Ego"),
                            VideoGameQuote(quote: "No, I won. Easily.", author: "Thor"),
                            VideoGameQuote(quote: "YES! That's what it feels like!", author: "Loki"),
                            VideoGameQuote(quote: "Don't win the war 'til I get there.", author: "Steve Rogers"),
                            VideoGameQuote(quote: "Guns. So primitive.", author: "Okoye"),
                            VideoGameQuote(quote: "I invite you to my lab and you just kick things around.", author: "Shuri"),
                            VideoGameQuote(quote: "I am loyal to the throne. What are you loyal to?", author: "Okoye"),
                            VideoGameQuote(quote: "It's hard for a good man to be king.", author: "T 'Chaka"),
                            VideoGameQuote(quote: "It was my duty to fight for what I love.", author: "Nakia"),
                            VideoGameQuote(quote: "Take your stinking paws off me, you damned dirty ape!", author: "Taylor"),
                            VideoGameQuote(quote: "The needs of the many outweigh... the needs of the few... Or the one.", author: "Spock"),
                            VideoGameQuote(quote: "Apes together strong.", author: "Ceasar"),
                            VideoGameQuote(quote: "I find your lack of faith disturbing.", author: "Darth Vader"),
                            VideoGameQuote(quote: "Why, you stuck-up, half-witted, scruffy-looking nerf herder!", author: "Leia Organa"),
                            VideoGameQuote(quote: "Fear leads to anger; anger leads to hate; hate leads to suffering. I sense much fear in you.", author: "Yoda"),
                            VideoGameQuote(quote: "I'm just a simple man trying to make my way in the universe.", author: "Jango Fett"),
                            VideoGameQuote(quote: "Aren't you a little short for a stormtrooper?", author: "Leia Organa"),
                            VideoGameQuote(quote: "I am altering the deal, pray I do not alter it further.", author: "Darth Vader"),
                            VideoGameQuote(quote: "No! I don't think he likes you at all... No, I don't like you either.", author: "C-3PO"),
                            VideoGameQuote(quote: "I'm Luke Skywalker and I'm here to rescue you!", author: "Luke Skywalker"),
                            VideoGameQuote(quote: "I recognized your foul stench when I was brought on board.", author: "Leia Organa"),
                            VideoGameQuote(quote: "Why was she up there this whole time?!", author: "Okoye"),
                            VideoGameQuote(quote: "I'm sorry. Earth is closed today. So pack it up, and get out of here.", author: "Tony Stark"),
                            VideoGameQuote(quote: "Get over here!", author: "Scorpion"),
                            VideoGameQuote(quote: "It's easy to forget what a sin is in the middle of a battlefield.", author: "Solid Snake"),
                            VideoGameQuote(quote: "I used to be an adventurer like you, until I took an arrow to the knee.", author: "Town Guard"),
                            VideoGameQuote(quote: "Fighting was the only thing I was ever good at, but at least I always fought for what I believed in.", author: "Gray Fox"),
                            VideoGameQuote(quote: "Your words are as empty as your future. I am the vanguard of your destruction. This exchange is over.", author: "Sovereign"),
                            VideoGameQuote(quote: "Micro changes in air density, my a**.", author: "Ellen Ripley"),
                            VideoGameQuote(quote: "That's it, man. Game over, man. Game over! What the f**k are we gonna do now? What are we gonna do?", author: "Private Hudson"),
                            VideoGameQuote(quote: "Some men just want to watch the world burn", author: "Alfred Pennyworth"),
                            VideoGameQuote(quote: "The Ring has awoken, it's heard its masters call.", author: "Gandalf"),
                            VideoGameQuote(quote: "What is your goal here? To get everybody to hate you? Because it's working.", author: "Peter Quill"),
                            VideoGameQuote(quote: "Everybody dies, it's just the way it is around here.", author: "Killmonger"),
                            VideoGameQuote(quote: "Hold on to your butts.", author: "Mr. Arnod"),
                            VideoGameQuote(quote: "Klaatu barada nikto", author: "Helen Benson"),
                            VideoGameQuote(quote: "Now, young Skywalker, you will die.", author: "Emperor Palpatine"),
                            VideoGameQuote(quote: "Just for once, let me look on you with my own eyes.", author: "Anakin Skywalker"),
                            VideoGameQuote(quote: "So this is how liberty dies. With thunderous applause.", author: "Padme Amidala"),
                            VideoGameQuote(quote: "I felt a great disturbance in the Force, as if millions of voices suddenly cried out in terror and were suddenly silenced.", author: "Obi-Wan Kenobi"),
                            VideoGameQuote(quote: "I'm a huge fan of the way you lose control and turn into an enormous green rage monster.", author: "Tony Stark"),
                            VideoGameQuote(quote: "I need scissors! 61!", author: "Colonel Campbell"),
                            VideoGameQuote(quote: "I know, but I found this weapon. It's really powerful, especially against living things!", author: "Barry Burton"),
                            VideoGameQuote(quote: "It's not just a snake... it's a MONSTER!", author: "Richard Aiken"),
                            VideoGameQuote(quote: "Flawless victory.", author: "Shang Tsung"),
                            VideoGameQuote(quote: "Every story must have an ending.", author: "Auron"),
                            VideoGameQuote(quote: "Just one question... What if we miss?", author: "Cortana"),
                            VideoGameQuote(quote: "Now, in front of you, I can finally die.", author: "Gray Fox"),
                            VideoGameQuote(quote: "From the moment we're thrown into this world, we're fated to bring each other nothing but pain and misery.", author: "Psycho Mantis"),
                            VideoGameQuote(quote: "You are a fool to come back here, stupid man.", author: "Sniper Wolf"),
                            VideoGameQuote(quote: "I never felt truly alive unless I was staring death in the face.", author: "Solid Snake"),
                            VideoGameQuote(quote: "Hey. Are you trying to bake me?", author: "Ken Marinaris"),
                            VideoGameQuote(quote: "You must defeat Sheng Long to stand a chance!", author: "Ryu"),
                            VideoGameQuote(quote: "I'm the strongest woman in the world!", author: "Chun Li"),
                            VideoGameQuote(quote: "Cake, and grief counseling, will be available at the conclusion of the test.", author: "GLaDOS"),
                            VideoGameQuote(quote: "Oh, hey! You're the lady from the test. Hi!", author: "Curiosity Sphere"),
                            VideoGameQuote(quote: "When everyone says it can't be done, ducks fly together!", author: ">Gordon Bombay")]
        
        return sampleQuotes
    }
    
    static func generateRandomQuote() -> VideoGameQuote {
        let arrayOfVideoGameQuotes = loadSampleQuotes()
        let randomQuote = arrayOfVideoGameQuotes[Int(arc4random_uniform(UInt32(arrayOfVideoGameQuotes.count)))]
        
        return randomQuote
    }
    
}