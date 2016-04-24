//
//  QuestionScreenViewController.m
//  Turkish Soccer Trivia
//
//  Created by macbook pro on 4/24/16.
//  Copyright © 2016 berkaysebat.com.trivia. All rights reserved.
//

#import "QuestionScreenViewController.h"
#import "Question_Class.h"

@interface QuestionScreenViewController ()
@property (weak, nonatomic) IBOutlet UIButton *Button_1;
@property (weak, nonatomic) IBOutlet UIButton *Button_2;
@property (weak, nonatomic) IBOutlet UIButton *Button_3;
@property (weak, nonatomic) IBOutlet UIButton *Button_4;
@property (weak, nonatomic) IBOutlet UITextView *Questions;
@property Question_Class *currentquestion;
@end

@implementation QuestionScreenViewController{
    NSMutableArray *Questions_List;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Questions_List=[[NSMutableArray alloc]init];
    Question_Class *Super_Lig96=[[Question_Class alloc]init];
    Super_Lig96.Question=@"Which Team Won the Super Lig in 1996?";
    Super_Lig96.Correct_Answer=@"Galatasaray";
    Super_Lig96.Wrong_Answer_1=@"Besiktas";
    Super_Lig96.Wrong_Answer_2=@"Fenerbahce";
    Super_Lig96.Wrong_Answer_3=@"Trabzonspor";
    [Questions_List addObject:Super_Lig96];
    Questions_List=[[NSMutableArray alloc]init];
   
    Question_Class *All_Time=[[Question_Class alloc]init];
    Super_Lig96.Question=@"Who Is the All Time Top Goal Scorer in Turkish Football?";
    Super_Lig96.Correct_Answer=@"Metin Oktay";
    Super_Lig96.Wrong_Answer_1=@"Tanju Çolak";
    Super_Lig96.Wrong_Answer_2=@"Hakan Şükür";
    Super_Lig96.Wrong_Answer_3=@"Alex";
    [Questions_List addObject:All_Time];
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)ButtonPress:(id)sender {
    
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
