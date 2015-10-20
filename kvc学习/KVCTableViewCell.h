//
//  KVCTableViewCell.h
//  kvc学习
//
//  Created by 栾有数 on 15/8/6.
//  Copyright (c) 2015年 栾有数. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KVCTableViewCell : UITableViewCell
-(id)initWithResueIdentifier:(NSString *) identifier;

@property(nonatomic, readwrite,strong) id object;
@property(nonatomic, readwrite,copy)NSString * property;
@end
