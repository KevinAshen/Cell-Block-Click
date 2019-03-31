//
//  MainView.m
//  Cell-Block-Click-Demo
//
//  Created by mac on 2019/3/31.
//  Copyright © 2019 姜凯文. All rights reserved.
//

#import "MainView.h"
#import "MainTableViewCell.h"

static NSString *kMainCellIdentifier = @"mainCell";

@interface MainView ()<UITableViewDataSource>



@end

@implementation MainView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupMainTableView];
    }
    return self;
}

- (void)setupMainTableView {
    self.mainTableView = [[UITableView alloc] initWithFrame:self.frame];
    [self addSubview:_mainTableView];
    
    [_mainTableView registerClass:[MainTableViewCell class] forCellReuseIdentifier:kMainCellIdentifier];
    _mainTableView.dataSource = self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 7;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MainTableViewCell *mainCell = [tableView dequeueReusableCellWithIdentifier:kMainCellIdentifier forIndexPath:indexPath];
    mainCell.buttonAction = ^(UIButton * _Nonnull sender) {
        [self cellButtonClick:sender];
    };
    return mainCell;
}

// 将方法抽出来放在外边看起来不至于让tableView的代理方法太臃肿
- (void) cellButtonClick:(UIButton *)button
{
    NSLog(@"QSTSD");
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
