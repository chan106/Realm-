//
//  TableViewCell.m
//  Realm数据库
//
//  Created by Guo.JC on 2017/5/5.
//  Copyright © 2017年 Guo.JC. All rights reserved.
//

#import "TableViewCell.h"
#import "Student.h"

@interface TableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@end

@implementation TableViewCell

- (void)setStudent:(Student *)student{
    _student = student;
    _titleLabel.text = student.name;
    _detailLabel.text = @(student.age).stringValue;
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
