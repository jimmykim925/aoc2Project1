//
//  appleCompany.m
//  aoc2Week1
//
//  Created by Jimmy Kim on 9/25/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "appleCompany.h"

@implementation appleCompany

@synthesize iphoneSalesCurrentYear, iphoneSalesLastYear;

// Customize init to set unique data members
-(id)init
{
  self = [super init];
  if (self != nil)
  {
    [self setGrowthRate:0];
    [self setIphoneSalesCurrentYear:0];
    [self setIphoneSalesLastYear:10];
    
     NSLog(@"You generated a Company");
  }
  return self;
};

// Override baseCompany growth rate to factor in unique data member
-(void)calculateFinancialRatio
{
  [self setGrowthRate:((iphoneSalesCurrentYear-iphoneSalesLastYear)/iphoneSalesLastYear)];
  NSLog(@"New apple growth rate = %d", [self growthRate]);
}

@end
