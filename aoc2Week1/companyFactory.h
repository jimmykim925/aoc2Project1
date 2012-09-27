//
//  companyFactory.h
//  aoc2Week1
//
//  Created by Jimmy Kim on 9/25/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseCompany.h"
#import "appleCompany.h"
#import "googleCompany.h"
#import "yelpCompany.h"


@interface companyFactory : NSObject

// Static method, return a baseCompany
+(baseCompany *)createNewCompany: (int)companyType;

@end
