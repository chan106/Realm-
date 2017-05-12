//
//  TableViewCell.h
//  Realm数据库
//
//  Created by Guo.JC on 2017/5/5.
//  Copyright © 2017年 Guo.JC. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Student;

@interface TableViewCell : UITableViewCell
@property (nonatomic, strong) Student *student;
@end
