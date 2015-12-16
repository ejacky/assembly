/*************************************************************************
	> File Name: swap-frame.c
	> Author: 
	> Mail: 
	> Created Time: Wed 16 Dec 2015 06:47:28 PM CST
 ************************************************************************/

int zip1 = 15213;
int zip2 = 91125;

void call_swap()
{
    swap(&zip1, &zip2);
}

void swap(int *xp, int *yp)
{
    int t0 = *xp;
    int t1 = *yp;
    *xp = t1;
    *yp = t0;
}
