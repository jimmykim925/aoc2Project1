//
//  googleCompany.h
//  aoc2Week1
//
//  Created by Jimmy Kim on 9/25/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "baseCompany.h"

@interface googleCompany : baseCompany
{
  int departments;
}

typedef enum
{
  SEARCH,
  ANDROID,
  SELFDRIVINGCAR
} departments;

@property int departmentUnit;
@property NSString *marketShare;
@property int estimatedFutureGrowth;

@end
