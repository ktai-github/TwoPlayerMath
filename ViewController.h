//
//  ViewController.h
//  TwoPlayerMath
//
//  Created by KevinT on 2018-02-19.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"
#import "QuestionFactory.h"
#import "GameModel.h"

@interface ViewController : UIViewController

@property (nonatomic) NSString *answerEntryString;
@property (nonatomic) Player *player1;
@property (nonatomic) Player *player2;
@property (nonatomic) QuestionFactory *qFac;
@property (nonatomic) GameModel *gameModel;


@end

