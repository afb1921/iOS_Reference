//
//  AFBPickersViewController.h
//  iOS Reference
//
//  Created by John Lilly on 2/24/17.
//  Copyright © 2017 American Foundation for the Blind. All rights reserved.
//

#import "AFBDetailViewController.h"

@interface AFBPickersViewController : AFBDetailViewController<UIPickerViewDelegate, UIPickerViewDataSource>
@property (nonatomic, weak) IBOutlet UIPickerView *pickerView;
@end
