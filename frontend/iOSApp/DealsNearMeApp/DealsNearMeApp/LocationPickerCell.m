//
//  LocationPickerCell.m
//  DealsNearMeApp
//
//  Created by Das on 2012-08-29.
//
//

#import "LocationPickerCell.h"

@implementation LocationPickerCell

@synthesize cityLabel = _cityLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
