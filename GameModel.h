//
//  GameModel.h
//  SnakesAndLadder
//
//  Created by KevinT on 2018-02-18.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "ViewController.h"
#import "Question.h"
//#import "QuestionFactory.h"

@interface GameModel : NSObject

//@property (nonatomic) NSMutableArray *players;
@property (nonatomic) int currentPlayer;
@property (nonatomic) Player *player1;
@property (nonatomic) Player *player2;
//@property (nonatomic) QuestionFactory *qFac;
//@property (nonatomic) NSString *question;
//@property (nonatomic) Question *question;
@property (nonatomic, copy) NSString *question;
@property (nonatomic) NSInteger answer;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;

//- (void) createPlayers : (int)numPlayers;
//- (void) roll: (Player *)player;
//- (void) output;
- (NSString *) changePlayer;
- (void) updateScore: (Player *)player;
- (void) updateLives: (Player *)player;
- (void) processAnswer: (int)playerAnswer;
//- (NSString *) getQuestion;
- (NSString *)generateQuestion;
- (int) getPlayer1Score;
- (int) getPlayer1Lives;
- (int) getPlayer2Score;
- (int) getPlayer2Lives;
@end
