//
//  PlayingCard.h
//  Card Game
//
//  Created by Jagdeep Matharu on 2016-07-17.
//  Copyright © 2016 Jagdeep Matharu. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+(NSArray *) validSuits;
+(NSUInteger) maxRank;

@end
