//
//  ViewController.m
//  TintColorChecker
//
//  Created by azu on 08/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+hex.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize textField;
@synthesize button;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.button addTarget:self action:@selector(updateAppearence) forControlEvents:UIControlEventTouchUpInside];
}

- (void)updateAppearence {
    if ([self.textField.text length] > 0){
        NSString *text = [NSString stringWithFormat:@"#%@", self.textField.text];

        [[UIBarButtonItem appearance] setTintColor:[UIColor colorWithHexString:text]];
        ViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];

        [self.navigationController pushViewController:viewController animated:YES];

    }
}

- (void)viewDidUnload {
    [self setButton:nil];
    [self setTextField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end