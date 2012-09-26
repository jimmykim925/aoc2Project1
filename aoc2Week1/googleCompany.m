//
//  googleCompany.m
//  aoc2Week1
//
//  Created by Jimmy Kim on 9/25/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "googleCompany.h"

@implementation googleCompany

@synthesize departmentUnit, userRating, adoptionRate;

// Customize init to set unique data members
-(id)init
{
  self = [super init];
  if (self != nil)
  {
    [self setGrowthRate:0];
    [self setDepartmentUnit:SEARCH];
    [self setUserRating:100];
    
    NSLog(@"Company created");
  }
  return self;
};

// Override baseCompany growth rate to factor in unique data member
-(void)calculateFinancialRatio
{
  // Get user rating value
  NSLog(@"User rating = %d", userRating);
  
  // Set the growth based on the user rating and adoption rate
  if (departmentUnit == SEARCH){
    [self setGrowthRate:10];
    [self setAdoptionRate:([self growthRate] + (userRating*.7) )];
  } else if (departmentUnit == ANDROID){
    [self setGrowthRate:60];
    [self setAdoptionRate:([self growthRate] + (userRating*.6) )];
  } else if (departmentUnit == SELFDRIVINGCAR){
    [self setGrowthRate:20];
    [self setAdoptionRate:([self growthRate] + (userRating*.9) )];
  } else {
    NSLog(@"Specify a valid department");
  }
  
  // NSlog adoption rate
  NSLog(@"This department will grow at a rate of %d percent", [self adoptionRate]);
}


@end