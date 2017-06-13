//
//  FocusOrderViewController.h
//  iOS Reference
//
//  Created by John Lilly on 2/14/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import "AFBDetailViewController.h"

@interface AFBFocusOrderViewController : AFBDetailViewController
@property (nonatomic, weak) IBOutlet UILabel *nameLabelView;
@property (nonatomic, weak) IBOutlet UILabel *nameView;
@property (nonatomic, weak) IBOutlet UILabel *locationLabelView;
@property (nonatomic, weak) IBOutlet UILabel *locationView;
@property (nonatomic, weak) IBOutlet UILabel *phoneLabelView;
@property (nonatomic, weak) IBOutlet UILabel *phoneView;
@property (nonatomic, weak) IBOutlet UILabel *emailLabelView;
@property (nonatomic, weak) IBOutlet UILabel *emailView;
@property (nonatomic, weak) IBOutlet UIView *leftView;
@property (nonatomic, weak) IBOutlet UIView *rightView;
@end
