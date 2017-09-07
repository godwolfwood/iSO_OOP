//: Playground - noun: a place where people can play

import UIKit


//To Do
//Create a class called Game
//
//Create all needed properties of the Game class
//A property called "players" of type [Player]
//A property called "deck" of type Deck
//A property called "turnIdx" of type Int
//When initializing the Game, it should add 4 players named "Mike", "Sydney", "Blake", & "Tiffany" to the game and shuffle the deck
//Give the Game a playGame method that continues to call a TakeTurn method for each Player, until the deck is exhausted. From there is should call the AnnounceWinner Method
//The TakeTurn method is of type (Player) and will perform 5 operations
//The current player should roll the dice
//The player who rolled the dice will gain 2 coins per matching green card they have
//All players that have a matching blue card then gain 1 coin per match
//Going in order the player, pays each player that has a matching red card, 1 coin per card red card, until all players have been dealt with, or the current player is out of coins
//Finally the current player draws a card from the deck
//The AnnounceWinner() method will find the player with the most coins and print that player's name out as the winner


struct Card {
    var Color: String
    var Roll: Int
}


class Deck {
    var cards: [Card] = []
    
    init() {
        for _ in 1...10{
            cards.append(Card(Color: "Blue", Roll: Int(arc4random_uniform(2) + 1)))
            cards.append(Card(Color: "Red", Roll: Int(arc4random_uniform(2) + 3)))
            cards.append(Card(Color: "Green", Roll: Int(arc4random_uniform(3) + 4)))
        }
    }
    
    func deal() -> Card {
        return cards.remove(at: 0)
    }
    
    func isEmpty() -> Bool {
        //        if cards.count == 0 {
        //            return true
        //        }
        //        return false
        //
        return cards.count == 0
    }
    
    func shuffle() {
        for _ in 0...30 {
            let random1: Int = Int(arc4random_uniform(UInt32(cards.count)))
            let random2: Int = Int(arc4random_uniform(UInt32(cards.count)))
            let temp: Card = cards[random1]
            cards[random1] = cards[random2]
            cards[random2] = temp
        }
    }
}


class Player {
    var name: String
    var hand: [Card] = []
    var coin: Int = 0
    init (name: String) {
        self.name = name
    }
    
    func draw(deck:Deck) -> Card {
        let drawCard = deck.deal()
        self.hand.append(drawCard)
        return drawCard
    }
    
    func rollDice() -> Int{
        return Int(arc4random_uniform(UInt32(6)) + 1)
    }
    
    func matchingCards(color: String, roll: Int) -> Int {
        var count: Int = 0
        for card in hand {
            if color == card.Color && roll == card.Roll {
                count += 1
            }
        }
        return count
    }
}

class Game {
    var players: [Player] = []
    var deck: Deck
    var turnIdx: Int = 0
    init() {
        players.append(Player(name: "Mike"))
        players.append(Player(name: "Sydney"))
        players.append(Player(name: "Blake"))
        players.append(Player(name: "Tiffany"))
        deck = Deck()
        deck.shuffle()
    }
    func playGame() {
        while !deck.isEmpty(){
            TakeTurn(player: &players[turnIdx])
            turnIdx += 1
            if players.count == turnIdx{
                turnIdx = 0
            }
        }
        AnnounceWinner()
    }
    func TakeTurn(player: inout Player){
        let roll: Int = player.rollDice()
        var count: Int = player.matchingCards(color: "Green", roll: roll)
        player.coin += count * 2
        for p in players{
            count = p.matchingCards(color: "Blue", roll: roll)
            p.coin += count
        }
        for r in players{
            count = r.matchingCards(color: "Red", roll: roll)
            while count != 0{
                if player.coin != 0{
                    player.coin -= 1
                    r.coin += 1
                    count -= 1
                }
                else{
                    break
                }
            }
        }
        print(player.name, "has", player.coin, "coins so far")
        player.draw(deck: deck)
    }
    
    func AnnounceWinner(){
        var winner: Player = players[0]
        for i in 1..<players.count{
            if winner.coin < players[i].coin{
                winner = players[i]
            }
        }
        print(winner.name, "has the most coins ->", winner.coin)
        print(winner.name,"is the Winner!")
    }
}

var newGame: Game = Game()
newGame.playGame()

