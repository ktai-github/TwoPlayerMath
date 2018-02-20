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
  
  self.player1 = [[Player alloc] init];
  self.player2 = [[Player alloc] init];

  self.qFac = [[QuestionFactory alloc] init];
  self.questionToActivePlayer.text = [self.qFac question];
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
  NSInteger rightAnswer = [self.qFac answer];
  if (playerAnswer == rightAnswer) {
//    self.playerOneScore.text = [NSString stringWithFormat:@"%d", self.player1.score];
  } else {
//    self.player1.numberOfLives--;
//    self.playerOneLives.text = [NSString stringWithFormat:@"%d", self.player1.numberOfLives];
  }
  self.qFac = [[QuestionFactory alloc] init];
  self.questionToActivePlayer.text = [self.qFac question];
}

@end