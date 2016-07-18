//
//  Deck.m
//  Card Game
//
//  Created by Jagdeep Matharu on 2016-07-17.
//  Copyright © 2016 Jagdeep Matharu. All rights reserved.
//

#import "Deck.h"

@interface Deck()

@property (strong, nonatomic) NSMutableArray *cards;

@end

@implementation Deck


//Getter for cards
-(NSMutableArray *)cards
{
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

-(void)addCard:(Card *)card atTop:(BOOL)atTop
{
 if (!card) return;   
    if (atTop) {
        //insertObject is method of nsmutablearray which inserts object at givin index
        [self.cards insertObject:card atIndex:0];
    } else {
        //addObject = inserts at end of array
        [self.cards addObject:card];
    }
}

-(void)addCard:(Card *)card
{
 // not used in this code
}

- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}

@end
