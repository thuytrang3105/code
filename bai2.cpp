#include <bits/stdc++.h>
using namespace std;
class thoigian {
	public :
		int gio;
		int phut;
		int giay;
		void nhap(int h,int m,int s)
		{
			this -> gio=h;
			this -> phut=m;
			this -> giay=s;
		}
		void in()
		{
			printf("Thoi gian vua nhap la %d:%d:%d ",gio%24,phut,giay);
		 } 
};
int main()
{
	thoigian a; 
	int h,m,s;
	cout<<"Nhap gio phut giay :";
	cin>>h>>m>>s;
	a.nhap(h,m,s);
	a.in(); 
}
