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
  // if Apple is requested
  if (companyType == APPLE){
    return [[appleCompany alloc] init];
  } else if (companyType == GOOGLE){
    return [[googleCompany alloc] init];
  } else if (companyType == YELP){
    return [[yelpCompany alloc] init];
  }
  else return nil;
}

@end
