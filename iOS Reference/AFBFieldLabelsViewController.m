//
//  AFBFieldLabelsViewController.m
//  iOS Reference
//
//  Created by John Lilly on 1/25/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import "AFBFieldLabelsViewController.h"

@interface AFBFieldLabelsViewController ()

@end

@implementation AFBFieldLabelsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Enable accessibility for the text field
    [self.correctTextField setIsAccessibilityElement:YES];
    
    //Set the accessibility label
    [self.correctTextField setAccessibilityLabel:@"Correct text field label"];
    
    //To demonstrate an incorrectly labeled text field, only set the placeholder text of a text field
    [self.incorrectTextField setPlaceholder:@"Incorrect text field label"];
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
