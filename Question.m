//
//  Question.m
//  Maths
//
//  Created by KevinT on 2018-02-13.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "Question.h"

@interface Question ()

@end

@implementation Question

- (instancetype)init {
  if (self = [super init]) {
    
    self.leftValue = arc4random_uniform(9);
    self.rightValue = arc4random_uniform(9);
    
    self.question = [NSString stringWithFormat:@"%li + %li", self.leftValue, self.rightValue];
    self.answer = self.leftValue + self.rightValue;
    
  }
  return self;
}

//defining getter
//- (NSInteger)answer {
//  _endTime = [NSDate date];
//  return _answer;
//}

@end
