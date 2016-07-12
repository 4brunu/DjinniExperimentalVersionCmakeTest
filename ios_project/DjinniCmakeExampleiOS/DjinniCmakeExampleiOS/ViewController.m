//
//  ViewController.m
//  DjinniCmakeExampleiOS
//
//  Created by Bruno Coelho on 08/07/16.
//  Copyright © 2016 Example. All rights reserved.
//

#import "ViewController.h"
#import "DCHelloWorld.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    DCHelloWorld *helloWorld = [DCHelloWorld create];
    
    NSString *stringHello = [helloWorld getHelloString];
    
    _label.text = stringHello;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
