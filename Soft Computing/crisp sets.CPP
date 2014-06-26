#include<iostream.h>
#include<conio.h>
void un();
void inter();
void comp();
void comp1(int a[]);
void inter1(int a[],int b[]);
void un1(int a[],int b[]);

int prime[]={2,3,5,7,9};
int even[]={0,2,4,6,8};
int odd[]={1,3,5,7,9};

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
void comp()
{
   clrscr();
	int ch,temp=1;
   do
	{
   	cout<<"\n\t\tCOMPLEMENT ";
      cout<<"\n\t\t1.Prime ";
      cout<<"\n\t\t2.Odd ";
      cout<<"\n\t\t3.Even ";
      cout<<"\n\t\t4.Exit " ;
      cout<<"\n\tEnter your choice ";
      cin>>ch;
      switch(ch)
      {
      	case 1:comp1(prime);
         		break;
         case 2:comp1(odd);
         		break;
         case 3:comp1(even);
         		break;
         case 4:temp=0;
         	break;
         default:cout<<"Enter the correct choice";
      }
   }while(temp==1);
}
void comp1(int a[])
{
	int i,j,flag;
   for(i=0;i<10;i++)
   {
   	for(j=0;j<5;j++)
      {
      	if(i==a[j])
         	flag=1;
      }
      if(flag!=1)
      	cout<<i<<" ";
      flag=0;
   }
}
void inter()
{
	clrscr();
	int ch,temp=1;
   do
	{
   	cout<<"\n\t\tINTERSECTION";
      cout<<"\n\t\t1.Prime & Even ";
      cout<<"\n\t\t2.Prime & Odd ";
      cout<<"\n\t\t3.Even & Odd ";
      cout<<"\n\t\t4.Exit " ;
      cout<<"\n\tEnter your choice ";
      cin>>ch;
      switch(ch)
      {
      	case 1:inter1(prime,even);
         		break;
         case 2:inter1(prime,odd);
         		break;
         case 3:inter1(even,odd);
         		break;
         case 4:temp=0;
         	break;
         default:cout<<"Enter the correct choice";
      }
   }while(temp==1);
}
void inter1(int a[],int b[])
{
	int i,j,temp;
   for(i=0;i<5;i++)
   {
   	temp=a[i];
      for(j=0;j<5;j++)
      {
   		if(temp==b[j])
      		cout<<temp<<" ";
      }
   }
}
void un()
{
	clrscr();
	int ch,temp=1;
   do
	{
   	cout<<"\n\t\tUNION ";
      cout<<"\n\t\t1.Prime U Even ";
      cout<<"\n\t\t2.Prime U Odd ";
      cout<<"\n\t\t3.Even U Odd ";
      cout<<"\n\t\t4.Exit " ;
      cout<<"\n\tEnter your choice ";
      cin>>ch;
      switch(ch)
      {
      	case 1:un1(prime,even);
         		break;
         case 2:un1(prime,odd);
         		break;
         case 3:un1(even,odd);
         		break;
         case 4:temp=0;
         	break;
         default:cout<<"Enter the correct choice";
      }
   }while(temp==1);
}
void un1(int a[],int b[])
{
     int i,flag=0,temp,j;
     for(i=0;i<5;i++)
     {
     	cout<<a[i]<<" ";
     }
     for(i=0;i<5;i++)
     {
        temp=b[i];
        for(j=0;j<5;j++)
        {
         	if(temp==a[j])
         		flag=1;
        }
        if(flag!=1)
             cout<<temp<<" ";
        flag=0;
     }
}

