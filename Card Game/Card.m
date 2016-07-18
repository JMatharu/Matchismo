//
//  Card.m
//  Card Game
//
//  Created by Jagdeep Matharu on 2016-07-15.
//  Copyright © 2016 Jagdeep Matharu. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

-(int) match:(NSArray *)otherCards
{
    int score = 0;
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}

@end
