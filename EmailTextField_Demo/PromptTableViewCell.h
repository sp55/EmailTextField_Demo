//
//  PromptTableViewCell.h
//  EmailTextField_Demo
//
//  Created by admin on 16/6/21.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PromptTableViewCell : UITableViewCell


/// label离tableView左边的距离
@property (assign, nonatomic) CGFloat leftEdge;

@property (strong, nonatomic) NSString *emailText;

@property (strong, nonatomic) UILabel *emailLabel;

/// 填充整个cell的button，用来响应点击事件(tableView的didSelect代理方法在自定义cell重用时不好用)
@property (strong, nonatomic)  UIButton *tapButton;


@end
