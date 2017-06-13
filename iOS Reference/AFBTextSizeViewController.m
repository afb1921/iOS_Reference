//
//  AFBTextSizeViewController.m
//  iOS Reference
//
//  Created by John Lilly on 1/25/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import "AFBTextSizeViewController.h"


@interface AFBTextSizeViewController ()

@end

@implementation AFBTextSizeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Set your text to have a font compatible with the Dynamic Type accessibility feature
    [self.correctTextSize setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(updateTextSizeNotification:)
                                                 name:UIContentSizeCategoryDidChangeNotification
                                               object:nil];
}
- (void)updateTextSizeNotification: (NSNotification *)notification{
    
    // Update the font to apply the new text size
//    self.correctTextSize.font.familyName
//    UILabel.appearance.fontFamily = @"Papyrus";
//    self.correctTextSize.adjustsFontForContentSizeCategory = YES;
    // Similarly, updating a UIButton's size for a given style:
    //[self.button.titleLabel setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]];
    UIFont* newFont = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:nil];
    NSDictionary* weight = [newFont.fontDescriptor objectForKey:UIFontDescriptorTraitsAttribute];
    NSDictionary* attributes = @{UIFontWeightTrait: weight};
    self.correctTextSize.font = [UIFont fontWithDescriptor: [self.correctTextSize.font.fontDescriptor fontDescriptorByAddingAttributes:attributes] size:newFont.pointSize];
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
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
