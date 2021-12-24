//
//  Logic.swift
//  RPS
//
//  Created by Yerkebulan Sharipov on 17.12.2021.
//

import Foundation

struct RPS{
    
enum Weapon : String {
    case Rock
    case Paper
    case Scissors
}

static func Enemy() -> Weapon {

    let choice  = Int.random(in: 0...2)
    if choice == 0 {
        return Weapon.Rock
    }
    if choice == 1 {
        return Weapon.Paper
    }
    else {
        return Weapon.Scissors
    }
}
    static func U() -> Weapon {
        let U: String? = readLine()
        if U == "Rock" {
            return Weapon.Rock
        } else if U == "Paper"{
            return Weapon.Paper
        }else {
            return Weapon.Scissors
        }
    }
        

    static func action (Enemy comp: Weapon, U me: Weapon){
        if me == comp{
            print ("Draw")
        }
        else if me == Weapon.Rock && comp == Weapon.Scissors {
            print ("Win")
        }else if  me == Weapon.Scissors && comp == Weapon.Paper{
            print ("Win")
        } else if me == Weapon.Paper && comp == Weapon.Rock {
            print ("Win")
        } else {                                                // question on this line
           print ("You lose")
        }
    }
}

//while true{
//print ("Hey what's up?! Choose ur weapon (Rock, Paper or Scissors)")
//let you = RPS.U()
//let comp = RPS.Enemy()
//print (" Your weapon is \(you) , Enemy's weapon is \(comp) ")
//RPS.action(Enemy : comp, U: you)
//    print("Try again? Yes or No")
//    let br = readLine()
//    if br == "No"{
//        break
//    }
//}


