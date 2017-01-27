//
//  AFBSwitchesViewController.h
//  iOS Reference
//
//  Created by John Lilly on 1/27/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import "AFBDetailViewController.h"

@interface AFBSwitchesViewController : AFBDetailViewController
    @property (nonatomic, weak) IBOutlet UISwitch *correctSwitch;
    @property (nonatomic, weak) IBOutlet UILabel *correctLabel;
    @property (nonatomic, weak) IBOutlet UISwitch *incorrectSwitch;
    @property (nonatomic, weak) IBOutlet UILabel *incorrectLabel;
@end
