//
//  AFBButtonsViewController.m
//  iOS Reference
//
//  Created by John Lilly on 1/26/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import "AFBButtonsViewController.h"

@interface AFBButtonsViewController ()

@end

@implementation AFBButtonsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Set an image on the button
    [self.correctButton setImage:[UIImage imageNamed:@"App store image"] forState:UIControlStateNormal];
    
    //Give the image button an accessibility label
    [self.correctButton setAccessibilityLabel:@"Available on the App Store"];
    
    //Set an image on the incorrect button for demonstration purposes but don't give an accessiblity label
    [self.incorrectButton setImage:[UIImage imageNamed:@"App store image"] forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
