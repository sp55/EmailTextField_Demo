//
//  PromptTableViewCell.m
//  EmailTextField_Demo
//
//  Created by admin on 16/6/21.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "PromptTableViewCell.h"

@implementation PromptTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self=[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.emailLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.leftEdge, 0, self.frame.size.width-self.leftEdge, self.frame.size.height)];
        self.emailLabel.textColor = [UIColor lightGrayColor];
        [self.contentView addSubview:self.emailLabel];
        
        
        
        self.tapButton  =[UIButton buttonWithType:UIButtonTypeCustom];
        self.tapButton.frame = self.emailLabel.frame;
        [self.contentView addSubview:self.tapButton];
        
    }
    return self;
}



@end
