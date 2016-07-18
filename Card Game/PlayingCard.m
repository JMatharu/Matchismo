//
//  PlayingCard.m
//  Card Game
//
//  Created by Jagdeep Matharu on 2016-07-17.
//  Copyright © 2016 Jagdeep Matharu. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

//Overriding getter 'contents' from Super class
-(NSString *) contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit; // because we provided getter and setter

//override 'suit' setter
-(void) setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

//override 'suit' getter to return '?' when suit is nil
-(NSString *) suit
{
    return _suit ? _suit : @"?";
}

+(NSArray *) validSuits
{
    return @[@"♠️",@"♣️",@"♥️",@"♦️"];
}

+(NSArray *) rankStrings
{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+(NSUInteger) maxRank
{
    return [[self rankStrings] count]-1;
}

//Overriding rank setter
-(void) setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
