//
//  FocusOrderViewController.m
//  iOS Reference
//
//  Created by John Lilly on 2/14/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import "AFBFocusOrderViewController.h"

@interface AFBFocusOrderViewController ()

@end

@implementation AFBFocusOrderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
    In most cases this value will fix focus order issues within a view. With this setting enabled, focus goes from left to right and top to bottom within the view before moving to the next view.
    In our case focus will go in this order Name label -> name -> Location label -> location -> Phone label -> phone number -> Email label -> email address
     */
    [self.leftView setShouldGroupAccessibilityChildren:YES];
    [self.rightView setShouldGroupAccessibilityChildren:YES];
    
    /*
    Using this method, you can manually set the order of elements within the respective views. This will achieve the same result as the previous method but can also be used for more complex layouts
    */
    [self.leftView setAccessibilityElements:@[self.nameLabelView, self.nameView, self.locationLabelView, self.locationView]];
    [self.rightView setAccessibilityElements:@[self.phoneLabelView, self.phoneView, self.emailLabelView, self.emailView]];
    
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
