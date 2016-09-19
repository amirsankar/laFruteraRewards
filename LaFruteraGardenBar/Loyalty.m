//
//  Loyalty.m
//  LaFruteraGardenBar
//
//  Created by amir sankar on 8/16/16.
//  Copyright © 2016 amir sankar. All rights reserved.
//

#import "Loyalty.h"
#import "Private.h"

@interface Loyalty ()

@end

@implementation Loyalty

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *backgroundImage = [UIImage imageNamed:@"lfBackround2.2.2"];
    UIImageView *backgroundImageView =  [[UIImageView alloc]initWithFrame:self.view.frame];
    backgroundImageView.image = backgroundImage;
    backgroundImageView.alpha  = 0.9;
    backgroundImageView.contentMode = UIViewContentModeScaleToFill;
   
    self.passcode = @"4567";
    
//    if([Private validatePassword:USERSINPUT]){ it works
    
    [self.view insertSubview:backgroundImageView atIndex:0];
    
    self.numbersPresssed = 0;


    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSInteger theInteger = [defaults integerForKey:@"numbersPressed"];
    self.numbersPresssed = [NSNumber numberWithInteger:theInteger];
    
    if ([self.numbersPresssed intValue] > 4) {
        self.redeemLabel.hidden = NO;
        self.termsLabel.hidden = YES;
    } else {
        self.redeemLabel.hidden = YES;
        self.termsLabel.hidden = NO;
    }
    
    if ([self.numbersPresssed intValue] == 1) {
        self.greenOne.image = [UIImage imageNamed:@"redX"];
    }
    if ([self.numbersPresssed intValue] == 2) {
        self.greenOne.image = [UIImage imageNamed:@"redX"];
        self.greenTwo.image = [UIImage imageNamed:@"redX"];
    }
    if ([self.numbersPresssed intValue] == 3) {
        self.greenOne.image = [UIImage imageNamed:@"redX"];
        self.greenTwo.image = [UIImage imageNamed:@"redX"];
        self.greenThree.image = [UIImage imageNamed:@"redX"];
    }
    if ([self.numbersPresssed intValue] == 4) {
        self.greenOne.image = [UIImage imageNamed:@"redX"];
        self.greenTwo.image = [UIImage imageNamed:@"redX"];
        self.greenThree.image = [UIImage imageNamed:@"redX"];
        self.greenFour.image = [UIImage imageNamed:@"redX"];
    }
    if ([self.numbersPresssed intValue] >= 5) {
        self.greenOne.image = [UIImage imageNamed:@"redX"];
        self.greenTwo.image = [UIImage imageNamed:@"redX"];
        self.greenThree.image = [UIImage imageNamed:@"redX"];
        self.greenFour.image = [UIImage imageNamed:@"redX"];
        self.greenFive.image = [UIImage imageNamed:@"redX"];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


- (IBAction)numberOneButton:(id)sender {
    [self pushedTheButton];
}

- (IBAction)numberTwoButton:(id)sender {
    [self pushedTheButton];
}

- (IBAction)numberThreeButton:(id)sender {
    [self pushedTheButton];
 }

- (IBAction)numberFourButton:(id)sender {
    [self pushedTheButton];
}

- (IBAction)numberFiveButton:(id)sender {
    [self pushedTheButton];
}

- (IBAction)numberSixButton:(id)sender {
    [self pushedTheButton];
}

-(void)pushedTheButton
{    
    if ([self.numbersPresssed intValue] >= 5) {
        
        UIAlertController *freeDrinkAlertController = [UIAlertController alertControllerWithTitle:@"Free drink of your choice"
                                                                                          message:@"This one is on us!\n Show this to the cashier.\n Thanks for being a loyal customer."
                                                                                   preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *freeDrinkAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault
                                                                handler:^(UIAlertAction * action) {
                                                                    
                                                                    UITextField *freeDrinkTextField = freeDrinkAlertController.textFields[0];
                                                                    if ([freeDrinkTextField.text isEqualToString:self.passcode]) {
                                                                        
                                                                        self.greenOne.image = [UIImage imageNamed:@"oneIcon"];
                                                                        self.greenTwo.image = [UIImage imageNamed:@"twoIcon"];
                                                                        self.greenThree.image = [UIImage imageNamed:@"threeIcon"];
                                                                        self.greenFour.image = [UIImage imageNamed:@"fourIcon"];
                                                                        self.greenFive.image = [UIImage imageNamed:@"fiveIcon"];
                                                                        self.greenSix.image = [UIImage imageNamed:@"cocktail"];
                                                                        
                                                                        self.redeemLabel.hidden = YES;
                                                                        self.termsLabel.hidden = NO;
                                                                        
                                                                        self.numbersPresssed = 0;
                                                                        NSInteger newPushed = [self.numbersPresssed intValue];
                                                                        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
                                                                        [defaults setInteger:newPushed forKey:@"numbersPressed"];
                                                                        [defaults synchronize];
                                                                        
                                                                        mailComposer = [[MFMailComposeViewController alloc]init];
                                                                        mailComposer.mailComposeDelegate = self;
                                                                        [mailComposer setSubject:@"Free Drink Confirmation"];
                                                                        
                                                                        [mailComposer setMessageBody: @"We look forward to seeing you again soon!" isHTML:NO];
                                                                        
                                                                        NSArray *usersTo = [NSArray arrayWithObject: @"amirsankar1@gmail.com"];
                                                                        [mailComposer setToRecipients:usersTo];
                                                                         
                                                                         [self presentViewController:mailComposer animated:YES completion:nil];
                                                                    } else {
                                                                        UIAlertController *wrongPasscodeAlertController = [UIAlertController alertControllerWithTitle:@"Wrong Passcode"
                                                                                                                                                              message:@"Try again."
                                                                                                                                                       preferredStyle:UIAlertControllerStyleAlert];
                                                                        
                                                                        UIAlertAction *wrongPasscodeAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault
                                                                                                                                    handler:^(UIAlertAction * action) {
                                                                                                                                        [wrongPasscodeAlertController dismissViewControllerAnimated:YES completion:nil];
                                                                                                                                        
                                                                                                                                    }];
                                                                        
                                                                        [wrongPasscodeAlertController addAction:wrongPasscodeAction];
                                                                        [self presentViewController:wrongPasscodeAlertController animated:YES completion:nil];
                                                                        
                                                                    }
                                                                }
                                          ];
        [freeDrinkAlertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
            textField.placeholder = @"Security Code";
            textField.secureTextEntry = true;
        }];
        [freeDrinkAlertController addAction:freeDrinkAction];
        [self presentViewController:freeDrinkAlertController animated:YES completion:nil];
        
    } else {
    

    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Security Code"
                                                                             message:@"Hand your phone to the cashier."
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *actionOk = [UIAlertAction actionWithTitle:@"Ok"
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * action){
                                                         
                                                         
                                                         UITextField *textField = alertController.textFields[0];
                                                         
                                                         if ([textField.text isEqualToString:self.passcode]) {
                                                             int value = [self.numbersPresssed intValue];
                                                             self.numbersPresssed = [NSNumber numberWithInt:value + 1];
                                                             NSInteger newNumberPressedInt = [self.numbersPresssed integerValue];
                                                             NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
                                                             [defaults setInteger:newNumberPressedInt forKey:@"numbersPressed"];
                                                             [defaults synchronize];
                                                             
                                                             if ([self.numbersPresssed intValue] == 1) {
                                                                 self.greenOne.image = [UIImage imageNamed:@"redX"];
                                                             }
                                                             if ([self.numbersPresssed intValue] == 2) {
                                                                 self.greenTwo.image = [UIImage imageNamed:@"redX"];
                                                             }
                                                             if ([self.numbersPresssed intValue] == 3) {
                                                                 self.greenThree.image = [UIImage imageNamed:@"redX"];
                                                             }
                                                             if ([self.numbersPresssed intValue] == 4) {
                                                                 self.greenFour.image = [UIImage imageNamed:@"redX"];
                                                             }
                                                             if ([self.numbersPresssed intValue] > 4) {
                                                                 self.greenFive.image = [UIImage imageNamed:@"redX"];
                                                                 self.redeemLabel.hidden = NO;
                                                                 self.termsLabel.hidden = YES;
                                                                 
                                                             }
                                                             
                                                         } else {
                                                             UIAlertController *wrongPasscodeAlertController = [UIAlertController alertControllerWithTitle:@"Wrong Passcode"
                                                                                                                                                   message:@"Try again."
                                                                                                                                            preferredStyle:UIAlertControllerStyleAlert];
                                                             
                                                             UIAlertAction *wrongPasscodeAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault
                                                                                                                         handler:^(UIAlertAction * action) {
                                                                                                                             [alertController dismissViewControllerAnimated:YES completion:nil];
                                                                                                                         }];
                                                             
                                                             [wrongPasscodeAlertController addAction:wrongPasscodeAction];
                                                             [self presentViewController:wrongPasscodeAlertController animated:YES completion:nil];
                                                             
                                                         }
                                                         
                                                     }];
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction * action) {
                                                             [alertController dismissViewControllerAnimated:YES completion:nil];
                                                         }];
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"Security Code";
        textField.secureTextEntry = true;
    }];
    
    [alertController addAction:actionOk];
    [alertController addAction:actionCancel];
    [self presentViewController:alertController animated:YES completion:nil];
    }
}

-(void)mailComposeController:(MFMailComposeViewController *)controller
         didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    if (result) {
        NSLog(@"Result : %d",result);
    }
    if (error) {
        NSLog(@"Error : %@",error);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


@end
