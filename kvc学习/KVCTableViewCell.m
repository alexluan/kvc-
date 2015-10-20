//
//  KVCTableViewCell.m
//  kvc学习
//
//  Created by 栾有数 on 15/8/6.
//  Copyright (c) 2015年 栾有数. All rights reserved.
//

#import "KVCTableViewCell.h"

@implementation KVCTableViewCell
-(id)initWithResueIdentifier:(NSString *) identifier{
    return [self initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
}
-(BOOL)isReady{
    return (self.object && [self.property length]>0);
}
- (void)update{
    NSString * text;
    if (self.isReady) {
        id value;
       value = [self.object valueForKeyPath:self.property];
        text = [value description];//转换成字符串 显示字符串 int\float\string -> string
        /*self.property = intValue;
         id value = [NSNumber numberWithInt:[self.object intValue]];*/
    }else
    {
        text = @"";
    }
    self.textLabel.text = text;
}
-(void)setProperty:(NSString *)property{
    _property = property;
    [self update];
}
-(void)setObject:(id)anObject{
    _object = anObject;
    [self update];
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
