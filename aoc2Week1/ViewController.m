//
//  ViewController.m
//  aoc2Week1
//
//  Created by Jimmy Kim on 9/24/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  // Create a company called Apple and set its current year sales
  appleCompany *newIphone = (appleCompany*)[companyFactory createNewCompany:APPLE];
  [newIphone setIphoneSalesCurrentYear:30];
  
  if (newIphone !=nil){
    
    NSArray *appleReviews = [[NSArray alloc] initWithObjects:@"camera", @"screen", @"speed", nil];
    [newIphone setProductFeatures:appleReviews];
    
    NSString *appleFinancialCondition = @"Apple seems to be financially healthy";
    [newIphone setFinancialCondition:appleFinancialCondition];
    NSLog(@"%@", [newIphone financialCondition]);
    
    NSLog(@"New iPhone features will include: %@, %@, %@", appleReviews[0], appleReviews[1], appleReviews[2]);
    
    // Calculate and show the growth rate
    [newIphone calculateFinancialRatio];
    int newAppleGrowthRate = [newIphone growthRate];
    NSLog(@"Apple's new growth rate is %d percent", newAppleGrowthRate);
    
  }
  
  // Create a Google company and set user rating etc.
  googleCompany *googleDepartment = (googleCompany*)[companyFactory createNewCompany:GOOGLE];
  
  if (googleDepartment != nil){
  
    NSString *googleFinancialCondition = @"Google is in excellent condition";
    
    [googleDepartment setDepartmentUnit:ANDROID];
    [googleDepartment setUserRating:25];
    [googleDepartment setFinancialCondition:googleFinancialCondition];
    
    NSLog(@"%@", [googleDepartment financialCondition]);
  
    // Calculate and show growth rate
    [googleDepartment calculateFinancialRatio];
    int newGoogleGrowthRate = [googleDepartment growthRate];
    NSLog(@"Google's new growth rate is %d percent", newGoogleGrowthRate);
  }
  
  // Create a Yelp company and set
  yelpCompany *yelpUserStatus = (yelpCompany*)[companyFactory createNewCompany:YELP];
  
  if (yelpUserStatus != nil){
    NSString *yelpFinancialCondition = @"Yelp is in decent condition";
    [yelpUserStatus setTotalUsers:100];
    [yelpUserStatus setNewUserRate:25];
    [yelpUserStatus setFinancialCondition:yelpFinancialCondition];
    
    NSLog(@"%@", [yelpUserStatus financialCondition]);
    
    // Calculate and show growth rate
    [yelpUserStatus calculateFinancialRatio];
    int newYelpGrowthRate = [yelpUserStatus growthRate];
    NSLog(@"Yelp's new growth rate is %d percent", newYelpGrowthRate);
  }
  
  
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
