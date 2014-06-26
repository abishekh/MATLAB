#include<iostream.h>
#include<conio.h>

struct age
{
 	int age;
   float value;
};

void comp();
void comp1(age a[]);
void inter();
void inter1(age a[],age b[]);
void un();
void un1(age a[],age b[]);

age y[]={0,1,5,1,10,1,15,1,20,.6,25,0.8,30,0};
age m[]={20,0,25,.7,30,1,35,1,40,.9,45,.6,50,0};
age o[]={40,0,45,.5,50,1,55,1,60,1,65,.5,70,0};

void main()
{
	clrscr();
	int ch,temp=1;
   do
	{
   	cout<<"\n\t\tMain Menu ";
      cout<<"\n\t\t1.Intersection ";
      cout<<"\n\t\t2.Union ";
      cout<<"\n\t\t3.Complement ";
      cout<<"\n\t\t4.Exit ";
      cout<<"\n\tEnter your choice ";
      cin>>ch;
      switch(ch)
      {
      	case 1:inter();
         		break;
         case 2:un();
         		break;
         case 3:comp();
         		break;
         case 4:temp=0;
         		break;
         default:cout<<"Enter the correct choice";
      }
   }while(temp==1);
}
void inter()
{
	clrscr();
	int ch,temp=1;
   do
	{
   	cout<<"\n\t\tINTERSECTION";
      cout<<"\n\t\t1.Young & Middle Age ";
      cout<<"\n\t\t2.Middle & Old Age ";
      cout<<"\n\t\t3.Young & Old ";
      cout<<"\n\t\t4.Exit " ;
      cout<<"\n\tEnter your choice ";
      cin>>ch;
      switch(ch)
      {
      	case 1:inter1(y,m);
         		break;
      	case 2:inter1(m,o);
         		break;
         case 3:inter1(y,o);
         		break;
         case 4:temp=0;
         	break;
         default:cout<<"Enter the correct choice";
      }
   }while(temp==1);
}
void inter1(age a[],age b[])
{
	cout<<"\n";
	int i,j;
   float temp;
   cout<<"{";
   for(i=0;i<7;i++)
   {
   	for(j=0;j<7;j++)
      {

      	if(a[i].age==b[j].age)
         {
         	cout<<"("<<a[i].age<<",";
            temp=(a[i].value<b[j].value)?a[i].value:b[j].value;
            cout<<temp<<") ";
         }
      }
   }
   cout<<"}";
}
void comp()
{
	clrscr();
	int ch,temp=1;
   do
	{
   	cout<<"\n\t\tCOMPLEMENT";
      cout<<"\n\t\t1.Young Age ";
      cout<<"\n\t\t2.Middle Age ";
      cout<<"\n\t\t3.Old Age ";
      cout<<"\n\t\t4.Exit " ;
      cout<<"\n\tEnter your choice ";
      cin>>ch;
      switch(ch)
      {
      	case 1:comp1(y);
         		break;
         case 2:comp1(m);
         		break;
         case 3:comp1(o);
         		break;
         case 4:temp=0;
         	break;
         default:cout<<"Enter the correct choice";
      }
   }while(temp==1);
}
void comp1(age a[])
{
	int i;
   for(i=0;i<7;i++)
   {
   	cout<<"("<<a[i].age<<",";
      cout<<(1-a[i].value)<<") ";
   }
}
void un()
{
	clrscr();
	int ch,temp=1;
   do
	{
   	cout<<"\n\t\tUNION ";
      cout<<"\n\t\t1.Young U Middle Age ";
      cout<<"\n\t\t2.Middle Age U Old Age";
      cout<<"\n\t\t3.Young U Old Age";
      cout<<"\n\t\t4.Exit " ;
      cout<<"\n\tEnter your choice ";
      cin>>ch;
      switch(ch)
      {
      	case 1:un1(y,m);
         		break;
         case 2:un1(m,o);
         		break;
         case 3:un1(y,o);
      			break;
         case 4:temp=0;
         	break;
         default:cout<<"Enter the correct choice";
      }
   }while(temp==1);
}
void un1(age a[],age b[])
{
	int temp=0,i,j;
   float t;
   cout<<"{";
   for(i=0;i<7;i++)
   {
   	for(j=0;j<7;j++)
      {
      	if(a[i].age==b[j].age)
         {
         	temp=1;
            break;
         }
      }
      if(temp==1)
      {
          cout<<" ("<<a[i].age<<",";
          t=(a[i].value>b[j].value)?a[i].value:b[j].value;
          cout<<t<<")";
      }
      else
      {
      	cout<<" ("<<a[i].age<<","<<a[i].value<<")";
      }
      temp=0;
   }
   for(i=0;i<7;i++)
   {
   	for(j=0;j<7;j++)
      {
      	if(b[i].age==a[j].age)
         {
         	temp=1;
            break;
         }
      }
      if(temp!=1)
      {
      	cout<<" ("<<b[i].age<<","<<b[i].value<<")";
      }
      temp=0;
   }
   cout<<"}";
}



