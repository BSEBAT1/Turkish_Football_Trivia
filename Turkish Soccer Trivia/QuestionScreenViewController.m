//
//  QuestionScreenViewController.m
//  Turkish Soccer Trivia
//
//  Created by macbook pro on 4/24/16.
//  Copyright © 2016 berkaysebat.com.trivia. All rights reserved.
//

#import "QuestionScreenViewController.h"
#import "Question_Class.h"
@import UIKit;
#import <QuartzCore/QuartzCore.h>

@interface QuestionScreenViewController ()
@property (weak, nonatomic) IBOutlet UIButton *Button_1;
@property (weak, nonatomic) IBOutlet UIButton *Button_2;
@property (weak, nonatomic) IBOutlet UIButton *Button_3;
@property (weak, nonatomic) IBOutlet UIButton *Button_4;
@property (weak, nonatomic) IBOutlet UITextView *Questions;
@property Question_Class *currentquestion;
@property int j;
@property int m;
@property (weak, nonatomic) IBOutlet UITextField *TextLabel;
@property (weak, nonatomic) IBOutlet UIImageView *Image;
@property (weak, nonatomic) IBOutlet UILabel *Correct_Answer_Display;



@end



@implementation QuestionScreenViewController{
    NSMutableArray *Questions_List;
    
}




-(void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view.
    Questions_List=[[NSMutableArray alloc]init];
    
    //Initilizing Question Objects
    
    Question_Class *Super_Lig96=[[Question_Class alloc]init];
    Super_Lig96.Question=@"Which Team Won the Super Lig in 1996?";
    Super_Lig96.Correct_Answer=@"Galatasaray";
    Super_Lig96.Wrong_Answer_1=@"Besiktas";
    Super_Lig96.Wrong_Answer_2=@"Fenerbahce";
    Super_Lig96.Wrong_Answer_3=@"Trabzonspor";
    Super_Lig96.picture=NO;
    [Questions_List addObject:Super_Lig96];
    

   
    Question_Class *All_Time=[[Question_Class alloc]init];
    All_Time.Question=@"Who Is the All Time Top Goal Scorer in Turkish Football?";
    All_Time.Correct_Answer=@"Metin Oktay";
    All_Time.Wrong_Answer_1=@"Tanju Çolak";
    All_Time.Wrong_Answer_2=@"Hakan Şükür";
    All_Time.Wrong_Answer_3=@"Alex";
    All_Time.picture=NO;
    [Questions_List addObject:All_Time];
    
    Question_Class *Lefter=[[Question_Class alloc]init];
    Lefter.Question=@"Which Famous Fenerbahce Player Was Known As Ordinaryüs?";
    Lefter.Correct_Answer=@"Lefter Küçük";
    Lefter.Wrong_Answer_1=@"Oğuz Çetin";
    Lefter.Wrong_Answer_2=@"Colin Kazim";
    Lefter.Wrong_Answer_3=@"Nicolas Anelka";
    Lefter.picture=NO;
    [Questions_List addObject:Lefter];
    
    Question_Class *Mille=[[Question_Class alloc]init];
    Mille.Question=@"Which Manager Led Besiktas to Three Back to Back Leauge Championships?";
    Mille.Correct_Answer=@"Gordon Milne";
    Mille.Wrong_Answer_1=@"Daum";
    Mille.Wrong_Answer_2=@"DelBosque";
    Mille.Wrong_Answer_3=@"Rasim Kara";
    Mille.picture=NO;
    [Questions_List addObject:Mille];
    
    Question_Class *Fatih=[[Question_Class alloc]init];
    Fatih.Question=@"What Was the First Italian Team Fatih Terim Managed?";
    Fatih.Correct_Answer=@"Fiorentina";
    Fatih.Wrong_Answer_1=@"A.C. Milan";
    Fatih.Wrong_Answer_2=@"Inter Milan";
    Fatih.Wrong_Answer_3=@"Juventus";
    Fatih.picture=NO;
    [Questions_List addObject:Fatih];
    
    Question_Class *Trabzon=[[Question_Class alloc]init];
    Trabzon.Question=@"Which Season Did Trabzonspor Win Their First Championship?";
    Trabzon.Correct_Answer=@"1975–76";
    Trabzon.Wrong_Answer_1=@"1976-1977";
    Trabzon.Wrong_Answer_2=@"1984-1985";
    Trabzon.Wrong_Answer_3=@"1970-1971";
    Trabzon.picture=NO;
    [Questions_List addObject:Trabzon];
    
    Question_Class *Rezilik=[[Question_Class alloc]init];
    Rezilik.Question=@"Despite Qualifiying Which World Cup Did Turkey Miss Because They Couldn't Afford To Go?";
    Rezilik.Correct_Answer=@"1950";
    Rezilik.Wrong_Answer_1=@"1954";
    Rezilik.Wrong_Answer_2=@"1994";
    Rezilik.Wrong_Answer_3=@"1978";
    Rezilik.picture=NO;
    [Questions_List addObject:Rezilik];
    
    Question_Class *Bursa=[[Question_Class alloc]init];
    Bursa.Question=@"What Is The Name Of Bursaspor Ultras?";
    Bursa.Correct_Answer=@"Texas";
    Bursa.Wrong_Answer_1=@"Cowboys";
    Bursa.Wrong_Answer_2=@"Indians";
    Bursa.Wrong_Answer_3=@"Crocodiles";
    Bursa.picture=NO;
    [Questions_List addObject:Bursa];
    
    
    Question_Class *Bursaspor=[[Question_Class alloc]init];
    Bursaspor.Question=@"Which Year Did Bursaspor Win The Super League?";
    Bursaspor.Correct_Answer=@"2010";
    Bursaspor.Wrong_Answer_1=@"2011";
    Bursaspor.Wrong_Answer_2=@"2009";
    Bursaspor.Wrong_Answer_3=@"2012";
    Bursaspor.picture=NO;
    [Questions_List addObject:Bursaspor];
    
    Question_Class *Istanbul_Lig=[[Question_Class alloc]init];
    Istanbul_Lig.Question=@"What Was The Name Of The First Football Pitch In Turkey?";
    Istanbul_Lig.Correct_Answer=@"Papazın Çayırı";
    Istanbul_Lig.Wrong_Answer_1=@"Seyrantepe";
    Istanbul_Lig.Wrong_Answer_2=@"Geniş Alan";
    Istanbul_Lig.Wrong_Answer_3=@"Aslantepe";
    Istanbul_Lig.picture=NO;
    [Questions_List addObject:Istanbul_Lig];
    
    Question_Class *Constantinople=[[Question_Class alloc]init];
    Constantinople.Question=@"What Was The Name Of The First Football Club In Istanbul?";
    Constantinople.Correct_Answer=@"Cadi-KeuyF.C.";
    Constantinople.Wrong_Answer_1=@"ModaF.C.";
    Constantinople.Wrong_Answer_2=@"ImogeneF.C.";
    Constantinople.Wrong_Answer_3=@"Union Club";
    Constantinople.picture=NO;
    [Questions_List addObject:Constantinople];
    
    Question_Class *Wasted_Talent=[[Question_Class alloc]init];
    Wasted_Talent.Question=@"Who Was The First Turkish Player To Play At All Big 4 Teams?";
    Wasted_Talent.Correct_Answer=@"Sergen Yalçın";
    Wasted_Talent.Wrong_Answer_1=@"Tanju Colak";
    Wasted_Talent.Wrong_Answer_2=@"Burak Yılmaz";
    Wasted_Talent.Wrong_Answer_3=@"Volkan Şen";
    Wasted_Talent.picture=NO;
    [Questions_List addObject:Wasted_Talent];
    
    Question_Class *akhisar=[[Question_Class alloc]init];
    akhisar.Question=@"What Is Akhisar Belediyespor Famous Nickname?";
    akhisar.Correct_Answer=@"Akigo";
    akhisar.Wrong_Answer_1=@"Yiğidolar";
    akhisar.Wrong_Answer_2=@"Anadolu Yıldızı";
    akhisar.Wrong_Answer_3=@"Şahinler";
    akhisar.picture=NO;
    [Questions_List addObject:akhisar];
    
    Question_Class *Gheorghe_Hagi=[[Question_Class alloc]init];
    Gheorghe_Hagi.Question=@"How Old Was Gheorghe Hagi When He Arrived At Galatasaray?";
    Gheorghe_Hagi.Correct_Answer=@"31";
    Gheorghe_Hagi.Wrong_Answer_1=@"35";
    Gheorghe_Hagi.Wrong_Answer_2=@"29";
    Gheorghe_Hagi.Wrong_Answer_3=@"32";
    Gheorghe_Hagi.picture=NO;
    [Questions_List addObject:Gheorghe_Hagi];
    
    Question_Class *Tuncay=[[Question_Class alloc]init];
    Tuncay.Question=@"What Team Did Tuncay Şanlı Join After Fenerbahce?";
    Tuncay.Correct_Answer=@"Middlesbrough";
    Tuncay.Wrong_Answer_1=@"Stoke City";
    Tuncay.Wrong_Answer_2=@"Herta Berlin";
    Tuncay.Wrong_Answer_3=@"Millwall FC";
    Tuncay.picture=NO;
    [Questions_List addObject:Tuncay];
    
    Question_Class *Graeme =[[Question_Class alloc]init];
    Graeme.Question=@"Which GS Manager Is This?";
    Graeme.Correct_Answer=@"Souness";
    Graeme.Wrong_Answer_1=@"Lucescu";
    Graeme.Wrong_Answer_2=@"Saftig";
    Graeme.Wrong_Answer_3=@"Held";
    Graeme.picture=YES;
    Graeme.picture_location=@"Koydukmu";
    [Questions_List addObject:Graeme];
    
    Question_Class *Izmir_cook=[[Question_Class alloc]init];
    Izmir_cook.Question=@"The Famous Izmir Derby Is Between Karşıyaka S.K. and What Team?";
    Izmir_cook.Correct_Answer=@"GöztepeS.K.";
    Izmir_cook.Wrong_Answer_1=@"Altay";
    Izmir_cook.Wrong_Answer_2=@"AltınorduF.K.";
    Izmir_cook.Wrong_Answer_3=@"Bucaspor";
    Izmir_cook.picture=NO;
    [Questions_List addObject:Izmir_cook];
    
    
    Question_Class *Hasan_Sas =[[Question_Class alloc]init];
    Hasan_Sas.Question=@"2002 World Cup Squad Player";
    Hasan_Sas.Correct_Answer=@"Hasan Şaş";
    Hasan_Sas.Wrong_Answer_1=@"Emre Aşık";
    Hasan_Sas.Wrong_Answer_2=@"Nihat Kahveci";
    Hasan_Sas.Wrong_Answer_3=@"Ergün Penbe";
    Hasan_Sas.picture=YES;
    Hasan_Sas.picture_location=@"Hasan_Sas";
    [Questions_List addObject:Hasan_Sas];
    
    Question_Class *Denizli=[[Question_Class alloc]init];
    Denizli.Question=@"Which Manager Became Champions With All Big 3 Istanbul Teams?";
    Denizli.Correct_Answer=@"Denzili";
    Denizli.Wrong_Answer_1=@"Terim";
    Denizli.Wrong_Answer_2=@"Güneş";
    Denizli.Wrong_Answer_3=@"Hamzaoğlu";
    Denizli.picture=NO;
    [Questions_List addObject:Denizli];
    
    Question_Class *Alex_D=[[Question_Class alloc]init];
    Alex_D.Question=@"How Many League Goals Did Alexsandro de Souza Score?";
    Alex_D.Correct_Answer=@"136";
    Alex_D.Wrong_Answer_1=@"144";
    Alex_D.Wrong_Answer_2=@"87";
    Alex_D.Wrong_Answer_3=@"208";
    Alex_D.picture=NO;
    [Questions_List addObject:Alex_D];
    
    Question_Class *Arda=[[Question_Class alloc]init];
    Arda.Question=@"What Was Arda Turans Total Transfer Fee To ATLÉTICO?";
    Arda.Correct_Answer=@"15,50 Mill.€";
    Arda.Wrong_Answer_1=@"5,50 Mill.€";
    Arda.Wrong_Answer_2=@"150 Mill. €";
    Arda.Wrong_Answer_3=@"50 Mill. €";
    Arda.picture=NO;
    [Questions_List addObject:Arda];
    
    
    Question_Class *World_Cup=[[Question_Class alloc]init];
    World_Cup.Question=@"Which Team Ended Turkey's 2002 World Cup Run?";
    World_Cup.Correct_Answer=@"Brazil";
    World_Cup.Wrong_Answer_1=@"Italy";
    World_Cup.Wrong_Answer_2=@"Greece";
    World_Cup.Wrong_Answer_3=@"South Korea";
    World_Cup.picture=NO;
    [Questions_List addObject:World_Cup];
    
    Question_Class *Altin=[[Question_Class alloc]init];
    Altin.Question=@"Which Team Is This?";
    Altin.Correct_Answer=@"Altinordu";
    Altin.Wrong_Answer_1=@"Altay";
    Altin.Wrong_Answer_2=@"Antepspor";
    Altin.Wrong_Answer_3=@"Aliağaspor";
    Altin.picture=YES;
    Altin.picture_location=@"Altinordu";
    [Questions_List addObject:Altin];
    
    Question_Class *Siktir_spor=[[Question_Class alloc]init];
    Siktir_spor.Question=@"This Team Have Been Runners Up 3 Times But Have Never Won The League";
    Siktir_spor.Correct_Answer=@"Eskişehirspor";
    Siktir_spor.Wrong_Answer_1=@"Adanaspor";
    Siktir_spor.Wrong_Answer_2=@"Samsunspor";
    Siktir_spor.Wrong_Answer_3=@"Elazığspor";
    Siktir_spor.picture=NO;
   
    [Questions_List addObject:Siktir_spor];
    
    Question_Class *Carsi=[[Question_Class alloc]init];
    Carsi.Question=@"These Ultras Support";
    Carsi.Correct_Answer=@"Beşiktaş";
    Carsi.Wrong_Answer_1=@"Fenerbahçe";
    Carsi.Wrong_Answer_2=@"Gaziantepspor";
    Carsi.Wrong_Answer_3=@"Sivasspor";
    Carsi.picture=YES;
    Carsi.picture_location=@"Gazi";
    [Questions_List addObject:Carsi];
    
    
    Question_Class *Wunderbar=[[Question_Class alloc]init];
    Wunderbar.Question=@"Which Team Does NOT Have A Volleyball In Their Club Crest?";
    Wunderbar.Correct_Answer=@"Osmanlispor";
    Wunderbar.Wrong_Answer_1=@"Gençlerbirliği";
    Wunderbar.Wrong_Answer_2=@"Eskişehirspor";
    Wunderbar.Wrong_Answer_3=@"Trabzonspor";
    Wunderbar.picture=NO;
    [Questions_List addObject:Wunderbar];
    
    
    
    Question_Class *Gaziantepli=[[Question_Class alloc]init];
    Gaziantepli.Question=@"These Are The Colors Of";
    Gaziantepli.Correct_Answer=@"Gaziantepspor";
    Gaziantepli.Wrong_Answer_1=@"Kayserispor";
    Gaziantepli.Wrong_Answer_2=@"Konyaspor";
    Gaziantepli.Wrong_Answer_3=@"Sivasspor";
    Gaziantepli.picture=YES;
    Gaziantepli.picture_location=@"fistik_yedik";
    [Questions_List addObject:Gaziantepli];
    
    
    Question_Class *Mersin=[[Question_Class alloc]init];
    Mersin.Question=@"Which Cities Football Squad Is Called The Red Devils?";
    Mersin.Correct_Answer=@"Mersin";
    Mersin.Wrong_Answer_1=@"Kayseri";
    Mersin.Wrong_Answer_2=@"Konya";
    Mersin.Wrong_Answer_3=@"Trabzonspor";
    Mersin.picture=NO;
    [Questions_List addObject:Mersin];
    
    Question_Class *Altay=[[Question_Class alloc]init];
    Altay.Question=@"Until The 2016 Season Which One Of These Teams Had The Same # of League Appearances As Trabzonspor?";
    Altay.Correct_Answer=@"Altay";
    Altay.Wrong_Answer_1=@"Adanaspor";
    Altay.Wrong_Answer_2=@"Vefa";
    Altay.Wrong_Answer_3=@"Konyaspor";
    Altay.picture=NO;
    [Questions_List addObject:Altay];
    
    Question_Class *GS=[[Question_Class alloc]init];
    GS.Question=@"If You Found Yourself At Numbered Stand Screaming Welcome To Hell You Were At Which Stadium?";
    GS.Correct_Answer=@"Ali Sami Yen";
    GS.Wrong_Answer_1=@"Inonu";
    GS.Wrong_Answer_2=@"Aslantepe";
    GS.Wrong_Answer_3=@"Torku Arena";
    GS.picture=NO;
    [Questions_List addObject:GS];
    
    
    for (int x=0; x<Questions_List.count; x++) {
        [Questions_List exchangeObjectAtIndex:x withObjectAtIndex:arc4random()%30];
    }
    
    


    
   //These Stay hidden unless there is a picture to be loaded
    self.TextLabel.hidden=YES;
    self.Image.hidden=YES;
    self.Questions.hidden=NO;
    self.Correct_Answer_Display.hidden=NO;
    self.Correct_Answer_Display.text=@"Score:0";
    self.Button_1.layer.cornerRadius=20;
    self.Button_2.layer.cornerRadius=20;
    self.Button_3.layer.cornerRadius=20;
    self.Button_4.layer.cornerRadius=20;
    
    self.Questions.selectable = NO;
   
    [self selectinit];
        
    
    
    
   
    
    
    
}
-(void)selectinit{
    
    //start off project index at 0
    self.j=0;
    
    self.currentquestion=[Questions_List objectAtIndex:self.j];
    
    
    self.Questions.text=self.currentquestion.Question;
    
    NSString *choice1=self.currentquestion.Correct_Answer;
    NSString *choice2=self.currentquestion.Wrong_Answer_1;
    NSString *choice3=self.currentquestion.Wrong_Answer_2;
    NSString *choice4=self.currentquestion.Wrong_Answer_3;
    //randomize button titiles/answer combo
    NSMutableArray *titles=[[NSMutableArray alloc]init];
    
    [titles addObject:choice1];
    [titles addObject:choice2];
    [titles addObject:choice3];
    [titles addObject:choice4];
 
    for (int x=0; x<titles.count-1; x++) {
        [titles exchangeObjectAtIndex:x withObjectAtIndex:arc4random()%4];
    }
    
    
    
    
    //set answers to button titles
    [self.Button_1 setTitle:titles[0]forState:UIControlStateNormal];
    [self.Button_2 setTitle:titles[1] forState:UIControlStateNormal];
    [self.Button_3 setTitle:titles[2] forState:UIControlStateNormal];
    [self.Button_4 setTitle:titles[3] forState:UIControlStateNormal];
    
    self.j++;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)ButtonPress:(id)sender {
    UIButton *someButton = (UIButton*)sender;
    NSString *selected= [someButton titleForState:UIControlStateNormal];
    NSArray *buttoned=[[NSArray alloc]initWithObjects:self.Button_1,self.Button_2,self.Button_3,self.Button_4, nil];
  

    
    if (selected== self.currentquestion.Correct_Answer) {
            self.m++;
        
       
        
        [self nextquestion];
   
        //logging the correct answer amount for game end
        NSLog(@"NUMBER OF CORRECT ANSWERS IS %d",self.m);
        
        NSString *score=@(self.m).stringValue;
        NSMutableString *strings = [NSMutableString stringWithString: @"Score:"];
        [strings appendString:score];
        self.Correct_Answer_Display.text=strings;

    }
    else{
       
        
        [UIView transitionWithView:someButton duration:1 options:UIViewAnimationOptionTransitionFlipFromRight animations:^{
            
            [someButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            for (UIButton *buttonatindex
                 in buttoned) {
                if ([buttonatindex titleForState:UIControlStateNormal]==self.currentquestion.Correct_Answer) {
                    [buttonatindex setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    
                    
                }
                
            }
            
            
        } completion:^(BOOL finsihed){
            
            for (UIButton *clearbutton in buttoned) {
                [clearbutton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            }
            [ NSThread sleepForTimeInterval:2];
            self.nextquestion;
        }];
        
    }
 
    
}

-(void)nextquestion{
   
    if (self.j== Questions_List.count) {
      //if all quetions have been answered then end the game
        NSString *strValue = @(self.m).stringValue;
        NSMutableString *string1 = [NSMutableString stringWithString: @"You got "];
        [string1 appendString:strValue];
        NSString *messaged=@" out of 31 correct !";
NSString * arisefate = [NSString stringWithFormat:@"%@%@", string1, messaged];
      //For some reason I had a problem putting the value of m into *strvalue so I had to append *strvalue to another string. But then that string needed appening also causing this mess here
        UIAlertController * alert=   [UIAlertController
                                     alertControllerWithTitle:@"Thats The Last Question"
                                      message:arisefate
                                     preferredStyle:UIAlertControllerStyleAlert];
        
        [self presentViewController:alert animated:YES completion:^{
            [self viewDidLoad];
            
            self.m=0;
            //call view did load and clear the correct number of questions viewdid load clears question count 
        }];
        
        
        UIAlertAction* ok = [UIAlertAction
                             actionWithTitle:@"Try Again"
                             style:UIAlertActionStyleDefault
                             handler:^(UIAlertAction * action)
                             {
                                 
                                 [alert dismissViewControllerAnimated:YES completion:nil];
                                 
                             }];
        
         [alert addAction:ok];
        
        
    }
    
    else{
        self.currentquestion=[Questions_List objectAtIndex:self.j];
        
        
        if (self.currentquestion.picture==YES) {
          //Check if a question is one of those pesky image questions
            self.Questions.hidden=YES;
            self.TextLabel.hidden=NO;
            self.Image.hidden=NO;
            self.TextLabel.text=self.currentquestion.Question;
            UIImage *image_set=[UIImage imageNamed:self.currentquestion.picture_location];
            [self.Image setImage:image_set];
            NSString *possible1=self.currentquestion.Correct_Answer;
            NSString *possible2=self.currentquestion.Wrong_Answer_1;
            NSString *possible3=self.currentquestion.Wrong_Answer_2;
            NSString *possible4=self.currentquestion.Wrong_Answer_3;
            
            
            
            NSMutableArray *squared=[[NSMutableArray alloc]init];
            
            [squared addObject:possible1];
            [squared addObject:possible2];
            [squared addObject:possible3];
            [squared addObject:possible4];
            
            for (int p=0; p<squared.count-1; p++) {
                [squared exchangeObjectAtIndex:p withObjectAtIndex:arc4random()%4];
            }
            
            
            
            
            
            [self.Button_1 setTitle:squared[0]forState:UIControlStateNormal];
            [self.Button_2 setTitle:squared[1] forState:UIControlStateNormal];
            [self.Button_3 setTitle:squared[2] forState:UIControlStateNormal];
            [self.Button_4 setTitle:squared[3] forState:UIControlStateNormal];
            self.j++;
            
        
            
        }
        
        else
            
        {
          //hide these values because the previous question was a image question
            self.Questions.hidden=NO;
            self.TextLabel.hidden=YES;
            self.Image.hidden=YES;
    self.currentquestion=[Questions_List objectAtIndex:self.j];
    
    
    self.Questions.text=self.currentquestion.Question;
    
    NSString *possible1=self.currentquestion.Correct_Answer;
    NSString *possible2=self.currentquestion.Wrong_Answer_1;
    NSString *possible3=self.currentquestion.Wrong_Answer_2;
    NSString *possible4=self.currentquestion.Wrong_Answer_3;
    
    
    
    NSMutableArray *squared=[[NSMutableArray alloc]init];
    
    [squared addObject:possible1];
    [squared addObject:possible2];
    [squared addObject:possible3];
    [squared addObject:possible4];
    
    for (int p=0; p<squared.count-1; p++) {
        [squared exchangeObjectAtIndex:p withObjectAtIndex:arc4random()%4];
    }
    
    
    
    
    
    [self.Button_1 setTitle:squared[0]forState:UIControlStateNormal];
    [self.Button_2 setTitle:squared[1] forState:UIControlStateNormal];
    [self.Button_3 setTitle:squared[2] forState:UIControlStateNormal];
    [self.Button_4 setTitle:squared[3] forState:UIControlStateNormal];
    self.j++;
    
    }
    }
    
}

-(void)wronganswerselected{

    
    self.Correct_Answer_Display.hidden=NO;
    [UIView transitionWithView:self.Button_1 duration:1 options:UIViewAnimationOptionTransitionFlipFromRight animations:^{
        
        [self.Button_1 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        
    } completion:^(BOOL finsihed){
         [NSThread sleepForTimeInterval:5];
        [self.Button_1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        self.nextquestion;
    }];
    
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
