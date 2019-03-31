//
//  ViewController.m
//  Cell-Block-Click-Demo
//
//  Created by mac on 2019/3/30.
//  Copyright © 2019 姜凯文. All rights reserved.
//

#import "ViewController.h"
#import "MainView.h"

@interface ViewController ()<UITableViewDelegate>

@property (nonatomic, strong) MainView *mainView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _mainView = [[MainView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:_mainView];
    
    _mainView.mainTableView.delegate = self;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}


@end
