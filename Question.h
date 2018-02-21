//
//  AdditionQuestion.h
//  Maths
//
//  Created by KevinT on 2018-02-13.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, copy) NSString *question;
@property (nonatomic) NSInteger answer;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;

//- (void) generateQuestion;

@end
