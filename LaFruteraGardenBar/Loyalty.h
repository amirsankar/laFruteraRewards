//
//  Loyalty.h
//  LaFruteraGardenBar
//
//  Created by amir sankar on 8/16/16.
//  Copyright © 2016 amir sankar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface Loyalty : UIViewController<MFMailComposeViewControllerDelegate>

{
    MFMailComposeViewController *mailComposer;
}

@property (nonatomic, assign) BOOL buttonOnePushed;
@property (nonatomic, assign) BOOL buttonTwoPushed;
@property (nonatomic, assign) BOOL buttonThreePushed;
@property (nonatomic, assign) BOOL buttonFourPushed;
@property (nonatomic, assign) BOOL buttonFivePushed;
@property (nonatomic, assign) BOOL buttonSixPushed;

@property (strong, nonatomic) IBOutlet UIImageView *greenOne;
@property (strong, nonatomic) IBOutlet UIImageView *greenTwo;
@property (strong, nonatomic) IBOutlet UIImageView *greenThree;
@property (strong, nonatomic) IBOutlet UIImageView *greenFour;
@property (strong, nonatomic) IBOutlet UIImageView *greenFive;
@property (strong, nonatomic) IBOutlet UIImageView *greenSix;

@property (nonatomic, strong) NSString *passcode;
@property(retain) NSNumber *numbersPresssed;

- (IBAction)numberOneButton:(id)sender;
- (IBAction)numberTwoButton:(id)sender;
- (IBAction)numberThreeButton:(id)sender;
- (IBAction)numberFourButton:(id)sender;
- (IBAction)numberFiveButton:(id)sender;
- (IBAction)numberSixButton:(id)sender;


@property (strong, nonatomic) IBOutlet UILabel *redeemLabel;
@property (strong, nonatomic) IBOutlet UILabel *termsLabel;



@end
