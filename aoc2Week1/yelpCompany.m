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
    [self setGrowthRate:20];
    [self setTotalUsers:0];
    [self setNewUserRate:0];
    NSLog(@"You created a company, Yelp, growth rate of %d, total users %d, new user rate %d", [self growthRate], [self totalUsers], [self newUserRate]);
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
