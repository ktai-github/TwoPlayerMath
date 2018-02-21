//
//  GameModel.m
//  SnakesAndLadder
//
//  Created by KevinT on 2018-02-18.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "GameModel.h"

@implementation GameModel

- (instancetype)init
{
  self = [super init];
  if (self) {
    self.player1 = [[Player alloc] init];
    self.player2 = [[Player alloc] init];
//    self.qFac = [[QuestionFactory alloc] init];
//    self.question = [[Question alloc] init];
    self.currentPlayer = 1;
//    player.name = @"player1";
//    NSLog(@"Created %@", player.name);
//    self.players = [[NSMutableArray alloc] initWithObjects:player, nil];
  }
  return self;
}



- (NSString *)generateQuestion {
  self.leftValue = arc4random_uniform(9);
  self.rightValue = arc4random_uniform(9);
  
  self.question = [NSString stringWithFormat:@"%li + %li", self.leftValue, self.rightValue];
  self.answer = self.leftValue + self.rightValue;
  return self.question;
//  self.answer = self.leftValue + self.rightValue;
  
//  self.question = [NSString stringWithFormat:@"%li + %li", (long)self.leftValue, (long)self.rightValue];
}

//-(void) createPlayers : (int)numPlayers {
//  if (numPlayers > 1) {
//
//  //  since first player is created in init method, this is only creating additional players beyond first player
//    for (int i = 0; i < (numPlayers - 1); i++) {
//
//      Player *player = [[Player alloc] init];
//
//  //    player name is "playerX" where X >= 2 since player1 was created
//      NSString *playerNumber = [NSString stringWithFormat:@"%i", i+2];
//      player.name = @"player";
//      player.name = [player.name stringByAppendingString:playerNumber];
//      NSLog(@"Created %@", player.name);
//      [self.players addObject:player];
//
//    }
//  }
//}

- (NSString *) changePlayer{
  //need to return player1 rather than player0
//  return (self.currentIndex % self.players.count) + 1;
  if (self.currentPlayer == 1) {
    
//    [self updateScore:self.player1];
    self.currentPlayer = 2;
    return @"Player 2";
    
  } else {
    
//    [self updateScore:self.player2];
    self.currentPlayer = 1;
    return @"Player 1";

  }
}

- (void) updateScore: (Player *)player {
  [player increaseScore];
}

- (void) updateLives: (Player *)player {
  [player loseLife];
}

- (void) processAnswer: (int)playerAnswer {
  NSInteger rightAnswer = self.answer;
  if (playerAnswer == rightAnswer) {
    if (self.currentPlayer == 1) {
      [self.player1 increaseScore];
    } else {
      [self.player2 increaseScore];
    }
    //    self.playerOneScore.text = [NSString stringWithFormat:@"%d", self.player1.score];
  } else {
    if (self.currentPlayer == 1) {
      [self.player1 loseLife];
    } else {
      [self.player2 loseLife];
    }
    //    self.player1.numberOfLives--;
    //    self.playerOneLives.text = [NSString stringWithFormat:@"%d", self.player1.numberOfLives];
  }
//  [self generateQuestion];
//  self.qFac = [[QuestionFactory alloc] init];
}

//- (NSString *) getQuestion {
//  self.question = [[Question alloc] init];
////  self.question = [self.qFac question];
//  return self.question.question;
//}

//- (void) roll:(Player *)player {
//  player.roll;
//  for (int i = 0; i < (self.players.count); i++) {
//    
//    Player *player = [self.players objectAtIndex:i];
//    NSLog(@"%@ is at square: %ld", player.name, (long)player.currentSquare);
//    
//  }
//  
//
//  
//  self.currentIndex++;
//}
//
//- (void) output {
//
//}

@end
