//
//  MainTableViewCell.h
//  Cell-Block-Click-Demo
//
//  Created by mac on 2019/3/31.
//  Copyright © 2019 姜凯文. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MainTableViewCell : UITableViewCell

// 用typef宏定义来减少冗余代码
typedef void(^ButtonClick)(UIButton * sender);// 这里的index是参数，我传递的是button的tag值，当然你可以自己决定传递什么参数
//下一步就是声明属性了，注意block的声明属性修饰要用copy
@property (nonatomic,copy) ButtonClick buttonAction;

@end

NS_ASSUME_NONNULL_END
