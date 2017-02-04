//
//  ViewController.m
//  AGSortedView
//
//  Created by 吴书敏 on 17/2/1.
//  Copyright © 2017年 littledogboy. All rights reserved.
//

#import "ViewController.h"
#import "AGSortedView.h"

@interface ViewController ()

@property (nonatomic, strong) AGSortedView *sortedView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.sortedView = [[AGSortedView alloc] initWithFrame:CGRectZero];
    _sortedView.didSelectedTitleBlock = ^(NSArray *array) {
        NSLog(@"%@", array);
    };
    [self.view addSubview:_sortedView];
    [_sortedView makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(UIEdgeInsetsMake(100, 0, 0, 0));
    }];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
