//
//  MainTableViewCell.m
//  Cell-Block-Click-Demo
//
//  Created by mac on 2019/3/31.
//  Copyright © 2019 姜凯文. All rights reserved.
//

#import "MainTableViewCell.h"

@interface MainTableViewCell ()

@property (nonatomic, strong) UIButton *clickButton;

@end

@implementation MainTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI {
    self.clickButton = [[UIButton alloc] initWithFrame:CGRectMake(100, 20, 100, 50)];
    [self.contentView addSubview:_clickButton];
    
    [_clickButton setBackgroundColor:[UIColor redColor]];
    [_clickButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonClick:(UIButton *)button {
    // 判断下这个block在控制其中有没有被实现
    if (self.buttonAction) {
        // 调用block传入参数
        self.buttonAction(button);
    }
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
