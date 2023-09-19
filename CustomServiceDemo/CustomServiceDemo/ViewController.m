//
//  ViewController.m
//  CustomServiceDemo
//
//  Created by 周飞 on 2023/9/18.
//

#import "ViewController.h"
#import <CustomService/KFEngine.h>

@interface ViewController ()
@property (nonatomic, strong) UILabel   *label;
@property (nonatomic, strong) UIButton  *btn;
@property (nonatomic, strong) UILabel   *cpyRLbl;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _label = [[UILabel alloc]init];
    _label.text = @"Custom Service Demo";
    _label.textColor = UIColor.whiteColor;
    _label.font = [UIFont boldSystemFontOfSize:30];
    _label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_label];
    
    _btn = [[UIButton alloc]init];
    [_btn setTitle:@"Open" forState:UIControlStateNormal];
    [_btn addTarget:self action:@selector(onOpen:) forControlEvents:UIControlEventTouchUpInside];
    [_btn setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    _btn.titleLabel.font = [UIFont boldSystemFontOfSize:18];
    _btn.backgroundColor = UIColor.orangeColor;
    _btn.layer.cornerRadius = 12;
    _btn.clipsToBounds = YES;
    [self.view addSubview:_btn];
    
    _cpyRLbl = [[UILabel alloc]init];
    _cpyRLbl.text = @"custom service";
    _cpyRLbl.textColor = UIColor.whiteColor;
    _cpyRLbl.font = [UIFont systemFontOfSize:14];
    _cpyRLbl.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_cpyRLbl];
}

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    
    CGFloat width = self.view.frame.size.width;
    CGFloat height = self.view.frame.size.height;
    self.label.frame = CGRectMake(0, height/2-140, width, 34);
    self.btn.frame = CGRectMake(width/2.0-80, height/2-30.0, 160, 40);
    self.cpyRLbl.frame = CGRectMake(0, height-60, width, 16);
}

#pragma mark - actions
- (void)onOpen:(id)sender{
    
    [[KFEngine SharedInstance] openKFApp:@{@"face":@"https://mp-0bd629c6-1adb-4d5a-9490-2957bbfeb81e.cdn.bspapp.com/9C2F6156D92A123C03CA4B6DB2E238A8.jpg",
//                                           @"uid":@(88888888)
                                         }];
}


@end
