//
//  AdditionQuestion.m
//  Maths
//
//  Created by KevinT on 2018-02-14.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
  self = [super init];
  if (self = [super init]) {
    [self generateQuestion];
  }
  return self;
}

- (void)generateQuestion {
  self.answer = self.leftValue + self.rightValue;
  self.question = [NSString stringWithFormat:@"%li + %li", (long)self.leftValue, (long)self.rightValue];
}

@end
