//
//  baseCompany.h
//  aoc2Week1
//
//  Created by Jimmy Kim on 9/25/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseCompany : NSObject
{
 int companyEnum;
}

typedef enum
{
  APPLE,
  GOOOGLE,
  YELP
} companyEnum;

// Data members
@property NSArray *revenues;
@property NSString *expenses;
@property int growthRate;

// Initialize
-(id)init;

// Calculate method
-(void)calculateFinancialRatio;

@end
