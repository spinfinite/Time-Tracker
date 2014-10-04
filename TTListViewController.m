//
//  TTListViewController.m
//  Time-Tracker
//
//  Created by Sergio Perez on 9/30/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "TTListViewController.h"
#import "ListTableViewDatasource.h"


@interface TTListViewController () <UITableViewDelegate>

//Add a datasource property to your list viewcontroller (strong)
@property (nonatomic, strong) ListTableViewDatasource *datasource;
@property (nonatomic, strong) UITableView *tableView;

@end

@implementation TTListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.datasource = [ListTableViewDatasource new];
    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView = [[UITableView  alloc]initWithFrame:self.view.bounds];
    
    [self.view addSubview:self.tableView];
    
    self.tableView.dataSource = self.datasource;
    
    self.tableView.delegate = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
