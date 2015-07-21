//
//  ViewController.m
//  FFLabelObjcDemo
//
//  Created by 刘凡 on 15/7/22.
//  Copyright © 2015年 joyios. All rights reserved.
//

#import "ViewController.h"
#import "FFLabelObjcDemo-Swift.h"

@interface ViewController () <FFLabelDelegate>
@property (weak, nonatomic) IBOutlet FFLabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label.labelDelegate = self;
    self.label.text = @"#FFLabel#This is a @FFLabel Demo, access http://github.com/liufan321/fflabel can get the demo project. Follow @liufan2000 to get more information.";
}

- (void)labelDidSelectedLinkText:(FFLabel * __nonnull)label text:(NSString * __nonnull)text {
    NSLog(@"%@", text);
}

@end
