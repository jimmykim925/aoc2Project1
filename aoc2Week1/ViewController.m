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
    NSString *appleReviews = [[NSString alloc] init];
    appleReviews = @"New iPhone features: Camera, Siri";
    [newIphone setProductFeatures:appleReviews];
    
    NSString *appleFinancialCondition = @"Apple is financially healthy";
    [newIphone setFinancialCondition:appleFinancialCondition];
    //NSLog(@"%@", [newIphone financialCondition]);
    
    // Calculate and show the growth rate
    [newIphone calculateFinancialRatio];
    int newAppleGrowthRate = [newIphone growthRate];
    NSString *appleGrowthLabel = [[NSString alloc] initWithFormat:@"Apple's new growth rate is %d percent", newAppleGrowthRate];
    
    // Create UILabels for Apple
    appleFeatures = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 40.0f)];
    if (appleFeatures != nil) {
      appleFeatures.text = appleReviews;
      appleFeatures.backgroundColor = [UIColor whiteColor];
      appleFeatures.textAlignment = kCTLeftTextAlignment;
      appleFeatures.textColor = [UIColor blackColor];
    }
    [self.view addSubview:appleFeatures];
  
    appleFinance = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 45.0f, 320.0f, 40.0f)];
    if (appleFinance != nil) {
      appleFinance.text = appleFinancialCondition;
      appleFinance.backgroundColor = [UIColor whiteColor];
      appleFinance.textAlignment = kCTLeftTextAlignment;
      appleFinance.textColor = [UIColor blackColor];
    }
    [self.view addSubview:appleFinance];
    
    appleGrowth = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 90.0f, 320.0f, 40.0f)];
    if (appleGrowth != nil) {
      appleGrowth.text = appleGrowthLabel;
      appleGrowth.backgroundColor = [UIColor whiteColor];
      appleGrowth.textAlignment = kCTLeftTextAlignment;
      appleGrowth.textColor = [UIColor blackColor];
    }
    [self.view addSubview:appleGrowth];
    
  
  
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
