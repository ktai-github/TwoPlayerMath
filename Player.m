//
//  Player.m
//  TwoPlayerMath
//
//  Created by KevinT on 2018-02-19.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
  self = [super init];
  if (self) {
    self.numberOfLives = 3;
    self.score = 0;
  }
  return self;
}

- (void) loseLife {
  self.numberOfLives--;
}

- (void) increaseScore {
  self.score++;
}

@end
