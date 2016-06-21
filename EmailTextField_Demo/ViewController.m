//
//  ViewController.m
//  EmailTextField_Demo
//
//  Created by admin on 16/6/21.
//  Copyright © 2016年 AlezJi. All rights reserved.
//
//邮箱提示的输入框

#import "ViewController.h"
#import "EmailTextField.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *placeHolderView; // 只是用来定位要加入textField的位置

@property (assign, nonatomic) BOOL hasExecuted;
@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    if (!self.hasExecuted) { // 只执行一次，防止重复加入textField
        [self setUpUI];
        self.hasExecuted = YES;
    }
}

- (void)setUpUI {
    // 先将用来定位的textField隐藏起来
    self.placeHolderView.hidden = YES;
    EmailTextField *textField = [[EmailTextField alloc] initWithFrame:self.placeHolderView.frame InView:self.view];
    textField.placeholder = @"输入用户邮箱";
    textField.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:textField];
}

@end
