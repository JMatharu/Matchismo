//
//  Deck.h
//  Card Game
//
//  Created by Jagdeep Matharu on 2016-07-17.
//  Copyright © 2016 Jagdeep Matharu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
@interface Deck : NSObject


//Method name is 'addCard:atTop:'
- (void)addCard:(Card *)card
          atTop:(BOOL)atTop;

// This method is without atTop argument
-(void)addCard:(Card *) card;


- (Card *)drawRandomCard;

@end
