//
//  ViewController.m
//  kvc学习
//
//  Created by 栾有数 on 15/8/6.
//  Copyright (c) 2015年 栾有数. All rights reserved.
//

#import "ViewController.h"
#import "KVCTableViewCell.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableview.delegate = self;
    self.tableview.dataSource = self;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * CellIdentifier = @"KVTableViewCell";
    KVCTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[KVCTableViewCell alloc] initWithResueIdentifier:CellIdentifier];
//        cell.property = @"intValue";
        [cell setValue:@"intValue" forKey:@"property"];
    }
    cell.object= @(indexPath.row);
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
