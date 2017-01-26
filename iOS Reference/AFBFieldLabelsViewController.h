//
//  AFBFieldLabelsViewController.h
//  iOS Reference
//
//  Created by John Lilly on 1/25/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AFBDetailViewController.h"
@interface AFBFieldLabelsViewController : AFBDetailViewController
@property (nonatomic, weak) IBOutlet UITextField *correctTextField;
@property (nonatomic, weak) IBOutlet UITextField *incorrectTextField;
@end
