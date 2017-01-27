//
//  AFBSwitchesViewController.m
//  iOS Reference
//
//  Created by John Lilly on 1/27/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import "AFBSwitchesViewController.h"

@interface AFBSwitchesViewController ()

@end

@implementation AFBSwitchesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //Set the disable the accessibility on the label to stop VoiceOver from focusing on the label
    [self.correctLabel setIsAccessibilityElement:NO];
    
    //Set the label for the switch
    [self.correctSwitch setAccessibilityLabel:@"Labeled Correctly"];
    
    //The incorrect switch and label are in their default setting
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
