//
//  Contact.m
//  LaFruteraGardenBar
//
//  Created by amir sankar on 8/16/16.
//  Copyright © 2016 amir sankar. All rights reserved.
//

#import "Contact.h"

@interface Contact ()

@end

@implementation Contact

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *backgroundImage = [UIImage imageNamed:@"lfBackround2.2.2"];
    UIImageView *backgroundImageView =  [[UIImageView alloc]initWithFrame:self.view.frame];
    backgroundImageView.image = backgroundImage;
    backgroundImageView.alpha  = 0.9;
    backgroundImageView.contentMode = UIViewContentModeScaleToFill;
    [self.view insertSubview:backgroundImageView atIndex:0];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)callButton:(id)sender {
     [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:7547015977"]];
}

- (IBAction)facebookButton:(id)sender {
    NSLog(@"facebook button presed");
}

- (IBAction)yelpButton:(id)sender {
    NSLog(@"yelp button presed");
}

- (IBAction)mapButton:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://maps.apple.com/?address=2430,NE+13th+Ave,Fort+Lauderdale,FL"]];
   
}

- (IBAction)emailButton:(id)sender {
    mailComposer = [[MFMailComposeViewController alloc]init];
    mailComposer.mailComposeDelegate = self;
    [mailComposer setSubject:@"La Frutera Question"];
    
    //[mailComposer setMessageBody: @"We look forward to seeing you again soon!" isHTML:NO];
    
    NSArray *usersTo = [NSArray arrayWithObject: @"amirsankar1@gmail.com"];
    [mailComposer setToRecipients:usersTo];
    [self presentViewController:mailComposer animated:YES completion:nil];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    self.webVC = [segue destinationViewController];
    
    if ([segue.identifier isEqualToString:@"facebook"]) {
        self.webVC.urlString = @"https://www.facebook.com/Lafruteragardenbar/?fref=ts";
    } else if ([segue.identifier isEqualToString:@"yelp"]){
         self.webVC.urlString = @"https://www.yelp.com/biz/la-frutera-garden-bar-wilton-manors";
    } else {
        self.webVC.urlString = @"https://www.instagram.com/explore/locations/1030667704/";
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
