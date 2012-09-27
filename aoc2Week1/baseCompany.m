//
//  baseCompany.m
//  aoc2Week1
//
//  Created by Jimmy Kim on 9/25/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "baseCompany.h"

@implementation baseCompany

// Create get and set methods for properties
@synthesize annualReviews, financialCondition, growthRate;

// Initialize the base company, create the instance, set the growth rate to 0
-(id)init
{
  self = [super init];
  if (self != nil)
  {
    [self setAnnualReviews:nil];
    [self setFinancialCondition:@""];
    [self setGrowthRate:0];
  }
  return self;
}

// Calculate method
-(void)calculateFinancialRatio
{
  NSLog(@"Growth Rate = %d", growthRate);
}

@end
