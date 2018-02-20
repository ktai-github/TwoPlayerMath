//
//  Player.h
//  TwoPlayerMath
//
//  Created by KevinT on 2018-02-19.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, assign) int score;
@property (nonatomic, assign) int numberOfLives;

- (void) loseLife;

@end
