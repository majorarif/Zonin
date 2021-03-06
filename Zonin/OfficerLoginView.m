//
//  OfficerLoginView.m
//  Zonin
//
//  Created by Rezaul Karim on 5/9/15.
//  Copyright (c) 2015 UBITRIX. All rights reserved.
//

#import "OfficerLoginView.h"
#import "RESideMenu.h"
#import "AdViewObject.h"

@interface OfficerLoginView ()

@end

@implementation OfficerLoginView{
    __weak IBOutlet UIView *adView;
}


- (IBAction)headerClicked:(id)sender {
    
    [self.sideMenuViewController setContentViewController:[[UINavigationController alloc] initWithRootViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"home"]]
                                                 animated:YES];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    AdViewObject *add = [AdViewObject sharedManager];
    [adView addSubview:add.adView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)menuBtn:(id)sender {
    [self.sideMenuViewController presentLeftMenuViewController];
}

- (IBAction)closeBtn:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
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
