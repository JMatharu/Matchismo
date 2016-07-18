//
//  ViewController.m
//  Card Game
//
//  Created by Jagdeep Matharu on 2016-07-15.
//  Copyright © 2016 Jagdeep Matharu. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;


@end

@implementation ViewController

- (Deck *) deck
{
    if(_deck) _deck = [self createDeck];
    return _deck;
}

-(Deck *) createDeck
{
    return [[PlayingCardDeck alloc] init];
}

- (void) setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips : %d", self.flipCount];
    //NSLog(@"flipcount = %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardBack"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        Card *randomCard = [self.deck drawRandomCard];
        [sender setBackgroundImage:[UIImage imageNamed:@"cardFront"]
                          forState:UIControlStateNormal];
        [sender setTitle:randomCard.contents
                forState:UIControlStateNormal];
        NSLog(@"Button text = %@", sender.currentTitle);
    }
    self.flipCount++;
    
//    self.flipsLabel.text = [NSString stringWithFormat:@"Flips : %d", self.flipCount];
}

@end
