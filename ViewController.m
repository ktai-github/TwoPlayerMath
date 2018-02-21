//
//  ViewController.m
//  TwoPlayerMath
//
//  Created by KevinT on 2018-02-19.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "ViewController.h"
//#import "Player.h"
//#import "QuestionManager.h"
//#import "QuestionFactory.h"
#import "Question.h"
//#import "GameModel.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *answerEntry;
@property (weak, nonatomic) IBOutlet UILabel *questionToActivePlayer;
@property (weak, nonatomic) IBOutlet UILabel *activePlayer;
@property (weak, nonatomic) IBOutlet UILabel *playerOne;
@property (weak, nonatomic) IBOutlet UILabel *playerTwo;
@property (weak, nonatomic) IBOutlet UILabel *playerOneScore;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoScore;
@property (weak, nonatomic) IBOutlet UILabel *playerOneLives;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoLives;


@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  // Do any additional setup after loading the view, typically from a nib.
  self.answerEntry.text = @"";
  
  self.gameModel = [[GameModel alloc] init];
  
  self.player1 = [[Player alloc] init];
  self.playerOneLives.text = [NSString stringWithFormat:@"%d", self.player1.numberOfLives];
  self.player2 = [[Player alloc] init];
  self.playerTwoLives.text = [NSString stringWithFormat:@"%d", self.player2.numberOfLives];
  
//  self.question = [[Question alloc] init];
//  self.qFac = [[QuestionFactory alloc] init];
//  self.questionToActivePlayer.text = [self.qFac question];
  self.questionToActivePlayer.text = [self.gameModel generateQuestion];
  
  self.activePlayer.text = @"Player 1";
//  QuestionManager *qManager = [[QuestionManager alloc] init];

}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

static void enterNumber(ViewController *object, NSString *numberString) {
  object.answerEntryString = [object.answerEntry.text stringByAppendingString:numberString];
  object.answerEntry.text = object.answerEntryString;
  
}

- (IBAction)one:(id)sender {

  NSString *numberString = @"1";
  enterNumber(self, numberString);

}

- (IBAction)two:(id)sender {
  
  NSString *numberString = @"2";
  enterNumber(self, numberString);

}

- (IBAction)three:(id)sender {
  
  NSString *numberString = @"3";
  enterNumber(self, numberString);

}

- (IBAction)four:(id)sender {
  
  NSString *numberString = @"4";
  enterNumber(self, numberString);

}

- (IBAction)five:(id)sender {
  
  NSString *numberString = @"5";
  enterNumber(self, numberString);

}

- (IBAction)six:(id)sender {
  
  NSString *numberString = @"6";
  enterNumber(self, numberString);

}

- (IBAction)seven:(id)sender {
  
  NSString *numberString = @"7";
  enterNumber(self, numberString);

}

- (IBAction)eight:(id)sender {
  
  NSString *numberString = @"8";
  enterNumber(self, numberString);

}

- (IBAction)nine:(id)sender {
  
  NSString *numberString = @"9";
  enterNumber(self, numberString);

}

- (IBAction)zero:(id)sender {
  
  NSString *numberString = @"0";
  enterNumber(self, numberString);

}

- (IBAction)enter:(id)sender {
  
  
  int playerAnswer = [self.answerEntry.text intValue];
  [self.gameModel processAnswer:playerAnswer];
  
  self.playerOneLives.text = [NSString stringWithFormat:@"%d", [self.gameModel getPlayer1Lives]];
  NSLog(@"vc player 1 lives %d", self.player1.numberOfLives);

  self.playerOneScore.text = [NSString stringWithFormat:@"%d", [self.gameModel getPlayer1Score]];
  NSLog(@"vc player 1 score %d", self.player1.score);
  
  self.playerTwoLives.text = [NSString stringWithFormat:@"%d", [self.gameModel getPlayer2Lives]];
  NSLog(@"vc player 2 lives %d", self.player2.numberOfLives);

  self.playerTwoScore.text = [NSString stringWithFormat:@"%d", [self.gameModel getPlayer2Score]];
  NSLog(@"vc player 2 score %d", self.player2.score);

  
//  self.qFac = [[QuestionFactory alloc] init];
//  self.questionToActivePlayer.text = [self.qFac question];
//  self.questionToActivePlayer.text = [self.gameModel question];
  self.answerEntry.text = @"";
  NSString *currentPlayer = [self.gameModel changePlayer];
//  [activePlayerString stringByAppendingString:[NSString stringWithFormat:@"%d", [self.gameModel changePlayer]]];
//  NSString *currentPlayerString = [NSString stringWithFormat:@"%d",currentPlayer];
//  NSString *activePlayerString = @"Player ";
//  [activePlayerString stringByAppendingString:currentPlayerString];
  self.activePlayer.text = currentPlayer;
//  [self.gameModel generateQuestion ];
  self.questionToActivePlayer.text = [self.gameModel generateQuestion];
//  self.questionToActivePlayer.text = self.question.question;
  int player1Lives = [self.gameModel getPlayer1Lives];
  int player2Lives = [self.gameModel getPlayer2Lives];
  
  if (player1Lives == 0) {
    //    [self viewDidLoad];
    self.questionToActivePlayer.text = @"Player 1 lost. Game Over";
    //    pause();
    
  }
  
  if (player2Lives == 0) {
    //    [self viewDidLoad];
    self.questionToActivePlayer.text = @"Player 2 lost. Game Over";
    //    pause();
  }

}

@end
