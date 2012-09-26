//
//  companyFactory.m
//  aoc2Week1
//
//  Created by Jimmy Kim on 9/25/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "companyFactory.h"

@implementation companyFactory

+(baseCompany *)createNewCompany: (int)companyType;
{
  return [[appleCompany alloc] init];
}

@end
