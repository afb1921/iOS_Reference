//
//  AFBImagesViewController.m
//  iOS Reference
//
//  Created by John Lilly on 1/24/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import "AFBImagesViewController.h"

@interface AFBImagesViewController ()

@end

@implementation AFBImagesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UISplitViewController *splitView = self.navigationController.splitViewController;
    if(!splitView.isCollapsed) {
        self.navigationItem.leftBarButtonItem = splitView.displayModeButtonItem;
    }
    
    //Enable user interaction for the image so it can be focused by VoiceOver
    [self.correctImage setUserInteractionEnabled:YES];
    
    //Set the image to be an accessibility element
    [self.correctImage setIsAccessibilityElement:YES];
    
    //Assign the Accessibility Traits to the image
    [self.correctImage setAccessibilityTraits:UIAccessibilityTraitImage|UIAccessibilityTraitAllowsDirectInteraction];
    
    //Assign a descriptive label for VoiceOver to announce to the user
    [self.correctImage setAccessibilityLabel:@"American Foundation for the Blind logo"];
    
    //Allow the incorrect image to be focused by VoiceOver for demonstration purposes
    [self.incorrectImage setUserInteractionEnabled:YES];
    
    //Set the incorrect image to be an accessibility element
    [self.incorrectImage setIsAccessibilityElement:YES];
    
    //Assign the Accessibility Traits to the incorrect image but don't assign an accessibility label
    [self.incorrectImage setAccessibilityTraits:UIAccessibilityTraitImage|UIAccessibilityTraitAllowsDirectInteraction];
    
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
