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
    
    FFLabel *s = [[FFLabel alloc] initWithFrame:CGRectZero];
    
    [self.view addSubview:s];
    
    s.delegate = self;
    s.text = @"#FFLabel#This is a @FFLabel Demo, access http://github.com/liufan321/fflabel can get the demo project. Follow @liufan2000 to get more information.";
    
    [s setPreferredMaxLayoutWidth:[UIScreen mainScreen].bounds.size.width - 20];
    s.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[s]-10-|" options:0 metrics:nil views:@{@"s": s}]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:s attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:100]];
    s.numberOfLines = 0;
}


- (void)labelDidSelectedLinkText:(FFLabel * __nonnull)label text:(NSString * __nonnull)text {
    NSLog(@"%@", text);
}

@end
