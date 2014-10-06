//
//  FactBook.swift
//  FunFacts
//
//  Created by jordan on 26/09/2014.
//  Copyright (c) 2014 jordan. All rights reserved.
//

import Foundation

struct FactBook {
    let factsArray = [
        "Ants stretch when they wake up in the morning.",
        "Ostriches can run faster than horses.",
        "Olympic gold medals are actually made mostly of silver.",
        "You are born with 300 bones; by the time you are an adult you will have 206.",
        "It takes about 8 minutes for light from the Sun to reach Earth.",
        "Some bamboo plants can grow almost a meter in just one day.",
        "The state of Florida is bigger than England.",
        "Some penguins can leap 2-3 meters out of the water.",
        "On average, it takes 66 days to form a new habit.",
        "Mammoths still walked the earth when the Great Pyramid was being built.",
        "Cosmic rays from outer space frequently cause glitches in your electronics.",
        "Your eyes have a pretty large blind spot that your brain is just filling with what it “thinks” you should be seeing.",
        "Falling coconuts kill more people every year than sharks.",
        "Humans share 50% of their DNA with bananas.",
        "Cleopatra lived closer to the invention of the iPhone than she did to the building of the Great Pyramid.",
        "Sea otters hold hands when they sleep, so they don’t float away from each other.",
        "Cats have over 100 vocal sounds; dogs only have 10.",
        "Babies are born without knee caps. They don’t appear until the child reaches 2-6 years of age.",
        "Albert Einstein and Charles Darwin both married their first cousins",
        "Our eyes are always the same size from birth, but our nose and ears never stop growing."]
    
    func randomFact() -> String {
        let unsignedArrayCount = UInt32(factsArray.count)    //convert array count to unsigned 32 bit integer
        let randomUnsigned = arc4random_uniform(unsignedArrayCount)     //get an unsigned random integer in the range of array count
        let randomNum = Int(randomUnsigned)     //cast to int
        
        return factsArray[randomNum]
        
    }
}