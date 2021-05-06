//
//  model.swift
//  DemoV11
//
//  Created by Yotaro Ito on 2021/03/10.
//

import Foundation


struct Quotes {
    let quote: String
    let quoteMp3name: String
    let character: String
    let imageName: String

   static func configureBeginsQuotes() -> [Quotes] {
        return [
    
            Quotes(quote: "\"I'm Batman\"", quoteMp3name: "batman1", character: "BATMAN", imageName: "batman"),
            
            Quotes(quote: "\"Do I look like a cop\"", quoteMp3name: "batman2", character: "BATMAN", imageName: "batman2"),
            
            Quotes(quote:  """
Jim Gordon: I never said thank you.
    Batman: And you’ll never have to.
""",quoteMp3name: "gordon1", character: "Gim Gordon", imageName: "gordon_begins"),
            
            Quotes(quote: "\"Why do we fall? We fall so that we can learn to pick ourselves up.\"",
                   
                   quoteMp3name: "alfred1", character: "Alfred Pennyworth", imageName: "alfred1"),
            
            Quotes(quote: "\"Did\'t you get the Memo?\"",
                   quoteMp3name:  "fox1", character: "Lucius Fox", imageName: "fox1"),
            
            Quotes(quote: """
                "If you make yourself more than just a man, if you devote yourself to an ideal, and if they can’t stop you, then you become something else entirely....Legend, Mr. Wayne."
                """,
                   quoteMp3name: "ras1",
                   character: "Ra\'s al Ghul",
                   imageName: "ras"),
            
            Quotes(quote: """
"You look like a man who takes himself too seriously. Do you want my opinion? You need to lighten up."
""", quoteMp3name: "scarecrow", character: "SCARECROW", imageName: "scarecrow_begins")
        ]
   }
    
    static func configureDarkknightQuotes() -> [Quotes] {
        return [
            
            Quotes(quote: "\"I'm not wearing hockey pad\"", quoteMp3name: "im not wearing hocky pads", character: "BATMAN", imageName: "batman_darkknight"),
            
            Quotes(quote: "\"Why so serious son\"", quoteMp3name: "joker7", character: "JOKER", imageName: "joker7"),

            Quotes(quote: """
"Good luck."
""", quoteMp3name: "fox2", character: "Lucius Fox", imageName: "fox2"),
            
            Quotes(quote: """
"If you want order in Gotham, Batman must take off his mask and turn himself in. Oh, and every day he doesn’t, people will die, starting tonight. I’m a man of my word."
""", quoteMp3name: "joker2", character: "JOKER", imageName: "joker2"),
            
            Quotes(quote: "\"Look at me!\"", quoteMp3name: "joker3", character: "JOKER", imageName: "joker_darkknight"),
            
            Quotes(quote: """
"Some men aren’t looking for anything logical, like money. They can’t be bought, bullied, reasoned, or negotiated with. Some men just wanna watch the world burn."
""", quoteMp3name: "alfred2", character: "Alfred Pennyworth", imageName: "alfred_darkknight"),
            
            Quotes(quote: "\"And you\'re gonna love me\"", quoteMp3name: "and you gonna love me", character: "BATMAN", imageName: "batman9"),

            Quotes(quote:  """
                "Introduce a little anarchy. Upset the established order, and everything becomes chaos. I’m an agent of chaos. Oh, and you know the thing about chaos? It’s fair!"
                """, quoteMp3name: "joker1", character: "JOKER", imageName: "joker1"),
            
            Quotes(quote: "\"Where are they\"", quoteMp3name: "batman7", character: "BATMAN", imageName: "batman4"),

            Quotes(quote: """
"All you care about is money. This city deserves a better class of criminal. And I’m gonna give it to them!"
""", quoteMp3name: "joker6", character: "JOKER", imageName: "joker5"),
            
            Quotes(quote: "\"Here We go\"", quoteMp3name: "joker5", character: "JOKER", imageName: "joker4"),

            Quotes(quote: """
"I took Gotham’s white knight and I brought him down to our level. It wasn’t hard. You see, madness, as you know, is like gravity. All it takes is a little push."
""", quoteMp3name: "joker4", character: "JOKER", imageName: "joker6"),
            
            Quotes(quote: "\"Bath man\"", quoteMp3name: "bathman", character: "The Chechen", imageName: "Chechen"),
            
            Quotes(quote: """
"The world is cruel. And the only morality in a cruel world is chance. Unbiased, unprejudiced, fair."
""", quoteMp3name: "twoface", character: "TwoFace", imageName: "twoface"),
            
            Quotes(quote: """
"Because he’s not our hero. He’s a silent guardian, a watchful protector...A Dark Knight."
""", quoteMp3name: "the_Dark_Knight", character: "A Dark Knight", imageName: "gordon2")
            ]
    }

    static func configureRisesQuotes() -> [Quotes] {
            return [
                
                Quotes(quote: """
"It doesn't matter who we are. What matters is our plan."
""", quoteMp3name:  "bane1", character: "BANE", imageName: "bane1"),
                
                Quotes(quote: """
"No one cared who I was ‘til I put on the mask."
""", quoteMp3name: "bane6", character: "BANE", imageName: "bane_rises"),
                
                Quotes(quote: """
  Batman:  No guns, no killing.
Catwoman:  Where's the fun in that?
""", quoteMp3name: "batman3", character: "BATMAN", imageName: "batman7"),
                
                Quotes(quote: """
"I won't bury you. I've buried enough members of the Wayne family."
""", quoteMp3name: "alfred4", character: "Alfred Pennyworth", imageName: "alfred3"),
                
                Quotes(quote:  """
"I AM the League of Shadows, and I'm here to fulfill Ra's al Ghul's destiny!"
""" , quoteMp3name: "bane3", character: "BANE", imageName: "bane"),
                
                Quotes(quote:  """
 "Before Batman. You were gone seven years. Seven years I waited. Hoping that you wouldn’t come back."
""", quoteMp3name: "alfred3", character: "Alfred Pennyworth", imageName: "alfred4"),
                
                Quotes(quote: """
"When Gotham is ashes, then you have my permission to die."
""", quoteMp3name: "bane7", character: "BANE", imageName: "bane2"),
                
                Quotes(quote: "\"Light it up\"", quoteMp3name: "batman4", character: "BATMAN", imageName: "batman8"),
                
                Quotes(quote: "\"War\"", quoteMp3name: "batman5", character: "BATMAN", imageName: "batman3"),
                
                Quotes(quote: """
"If you're working alone, wear a mask.The mask is not for you. It's to protect the people you care about."
""", quoteMp3name: "batman6", character: "BATMAN", imageName: "batman6"),
        
                Quotes(quote: "\"Impossible\"", quoteMp3name: "bane5", character: "BANE", imageName: "bane5"),

                Quotes(quote: """
"Speak of the devil and he shall appear".
""", quoteMp3name: "bane8", character: "Bane", imageName: "bane7"),
                
                Quotes(quote: "\"Do you feel in charge\"", quoteMp3name: "bane2", character: "BANE", imageName: "bane4"),
                
                Quotes(quote: "\"I am a necessary evil\"", quoteMp3name: "bane4", character: "BANE", imageName: "bane6"),
                            
                Quotes(quote: """
                    "About the whole no guns thing... I'm not sure I feel as strongly about it as you do."
                    """, quoteMp3name: "catwoman1", character: "CatWoman", imageName: "catwoman_rises"),
                
                Quotes(quote: """
"Hero can be anyone."
""", quoteMp3name: "hero can be anyone", character: "BATMAN", imageName: "batman5")
            ]
        }
}
