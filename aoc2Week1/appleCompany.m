//
//  appleCompany.m
//  aoc2Week1
//
//  Created by Jimmy Kim on 9/25/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "appleCompany.h"

@implementation appleCompany

@synthesize iphone, pricePerPhone;

// Customize init to set unique data members
-(id)init
{
  self = [super init];
  if (self != nil)
  {
    [self setGrowthRate:10];
    [self setRevenues:0];
    [self setExpenses:0];
  }
  return self;
};

// Override baseCompany growth rate to factor in unique data member
-(void)calculateFinancialRatio
{
  [self setGrowthRate:(iphone * pricePerPhone)];
  NSLog(@"New apple growth rate = %d", [self growthRate]);
}

@end
