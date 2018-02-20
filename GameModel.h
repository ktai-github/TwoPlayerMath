//
//  GameModel.h
//  SnakesAndLadder
//
//  Created by KevinT on 2018-02-18.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameModel : NSObject

//@property (nonatomic) NSMutableArray *players;
@property (nonatomic) int currentPlayer;

//- (void) createPlayers : (int)numPlayers;
//- (void) roll: (Player *)player;
//- (void) output;
- (int) changePlayer;

@end
