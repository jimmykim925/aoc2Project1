//
//  yelpCompany.m
//  aoc2Week1
//
//  Created by Jimmy Kim on 9/25/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "yelpCompany.h"

@implementation yelpCompany

@synthesize totalUsers, newUserRate;

// Customize init to set unique data members
-(id)init
{
  self = [super init];
  if (self != nil)
  {
    [self setGrowthRate:50];
    [self setRevenues:0];
    [self setExpenses:0];
  }
  return self;
};

// Override baseCompany growth rate to factor in unique data member
-(void)calculateFinancialRatio
{
  [self setGrowthRate:(newUserRate * totalUsers)];
  NSLog(@"Total growth in users = %d", [self growthRate]);
}

@end
