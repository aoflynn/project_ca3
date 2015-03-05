//
//  LFProfileViewController.m
//  LostFound
//
//  Created by Adam O'Flynn on 02/03/2015.
//
//

#import "LFProfileViewController.h"
#import <Parse/Parse.h>
#import "LFSettingsViewController.h"

@interface LFProfileViewController ()
@property (nonatomic, strong) IBOutlet UIButton* signOut;
@end

@implementation LFProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)signOut:(id)sender {
    //PFUser *user = [PFUser currentUser];
    [PFUser logOut];
    //NSLog(@"%@", user.username);
    [self performSegueWithIdentifier:@"logOut" sender:self];
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
