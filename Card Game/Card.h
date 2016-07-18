//
//  Card.h
//  Card Game
//
//  Created by Jagdeep Matharu on 2016-07-15.
//  Copyright © 2016 Jagdeep Matharu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int) match:(NSArray *)otherCards;

@end
