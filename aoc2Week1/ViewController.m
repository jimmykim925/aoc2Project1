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
    // Create data members for Apple Company
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
    // Set data members for Google Company
    NSString *googleFinancialCondition = [[NSString alloc] init];
    [googleDepartment setDepartmentUnit:ANDROID];
    [googleDepartment setUserRating:70];
    [googleDepartment setFinancialCondition:googleFinancialCondition];
    
    // Conditional for NSString for departments
    NSString *departmentName = [[NSString alloc] init];
    if ([googleDepartment departmentUnit] == 0){
      departmentName = @"Search";
    } else if ([googleDepartment departmentUnit] == 1){
      departmentName = @"Android";
    } else if ([googleDepartment departmentUnit] == 2){
      departmentName = @"Self Driving Car";
    }
    
    // Set financial condition and ratings using string w/ concatenation
    googleFinancialCondition = [departmentName stringByAppendingString:@" is financially healthy"];
    NSString *googleRating = [[NSString alloc] initWithFormat:[departmentName stringByAppendingString:@"'s current rating is %d out of 100"], [googleDepartment userRating]];
  
    // Calculate and show adoption rate
    [googleDepartment calculateFinancialRatio];
    int newGoogleAdoptionRate = [googleDepartment adoptionRate];
    NSString *newGoogleAdoptionRateLabel = [[NSString alloc] initWithFormat:[departmentName stringByAppendingString:@"'s adoption rate is %d percent"], newGoogleAdoptionRate];
    
    // Allocate UILabels
    googleBusinessUnit = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 135.0f, 320.0f, 40.0f)];
    if (googleBusinessUnit != nil) {
      googleBusinessUnit.text = googleFinancialCondition;
      googleBusinessUnit.backgroundColor = [UIColor darkGrayColor];
      googleBusinessUnit.textAlignment = kCTLeftTextAlignment;
      googleBusinessUnit.textColor = [UIColor whiteColor];
    }
    [self.view addSubview:googleBusinessUnit];
    
    googleAdoptionRate = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 180.0f, 320.0f, 40.0f)];
    if (googleAdoptionRate != nil) {
      googleAdoptionRate.text = googleRating;
      googleAdoptionRate.backgroundColor = [UIColor darkGrayColor];
      googleAdoptionRate.textAlignment = kCTLeftTextAlignment;
      googleAdoptionRate.textColor = [UIColor whiteColor];
    }
    [self.view addSubview:googleAdoptionRate];
    
    googleGrowth = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 225.0f, 320.0f, 40.0f)];
    if (googleGrowth != nil) {
      googleGrowth.text = newGoogleAdoptionRateLabel;
      googleGrowth.backgroundColor = [UIColor darkGrayColor];
      googleGrowth.textAlignment = kCTLeftTextAlignment;
      googleGrowth.textColor = [UIColor whiteColor];
    }
    [self.view addSubview:googleGrowth];
  }
  
  // Create a Yelp company and set
  yelpCompany *yelpUserStatus = (yelpCompany*)[companyFactory createNewCompany:YELP];
  
  if (yelpUserStatus != nil){
    NSString *yelpFinancialCondition = @"Yelp is in decent condition";
    [yelpUserStatus setTotalUsers:30];
    [yelpUserStatus setNewUserRate:10];
    [yelpUserStatus setFinancialCondition:yelpFinancialCondition];
    
    NSString *yelpReviews = [[NSString alloc] init];
    yelpReviews = @"New Yelp app: new maps, reservations";
    [newIphone setProductFeatures:yelpReviews];
    
    // Calculate and show growth rate
    [yelpUserStatus calculateFinancialRatio];
    int newYelpGrowthRate = [yelpUserStatus growthRate];
    NSString *yelpGrowthRateLabel = [[NSString alloc] initWithFormat:@"Yelp's grew by %d new Yelpers", newYelpGrowthRate];
    NSLog(@"Yelp's new growth rate is %d percent", newYelpGrowthRate);
  
    yelpUserLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 270.0f, 320.0f, 40.0f)];
      if (yelpUserLabel != nil) {
        yelpUserLabel.text = yelpFinancialCondition;
        yelpUserLabel.backgroundColor = [UIColor blackColor];
        yelpUserLabel.textAlignment = kCTLeftTextAlignment;
        yelpUserLabel.textColor = [UIColor whiteColor];
      }
      [self.view addSubview:yelpUserLabel];
    
    yelpNewUserLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 315.0f, 320.0f, 40.0f)];
      if (yelpNewUserLabel != nil) {
        yelpNewUserLabel.text = yelpReviews;
        yelpNewUserLabel.backgroundColor = [UIColor blackColor];
        yelpNewUserLabel.textAlignment = kCTLeftTextAlignment;
        yelpNewUserLabel.textColor = [UIColor whiteColor];
      }
      [self.view addSubview:yelpNewUserLabel];
    
    yelpGrowthLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 360.0f, 320.0f, 40.0f)];
      if (yelpGrowthLabel != nil) {
        yelpGrowthLabel.text = yelpGrowthRateLabel;
        yelpGrowthLabel.backgroundColor = [UIColor blackColor];
        yelpGrowthLabel.textAlignment = kCTLeftTextAlignment;
        yelpGrowthLabel.textColor = [UIColor whiteColor];
      }
      [self.view addSubview:yelpGrowthLabel];
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
