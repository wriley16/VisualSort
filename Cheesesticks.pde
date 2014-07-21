int[] array = new int[20];
int iter = 0;
int max = 30;
void setup()
{
  size (400,200);
  for(int i=0; i<20; i++)
  {
  array[i]=(int)random(0,300);
  }
}

void drawSticks()
{
  background(#050505);
  fill(#EA231C);
  for (int i=0; i<20; i++)
  {
    rectMode(CENTER); 
    rect(i*20,0,20,array[i]);
  }  
}

void sortNums()
{
  if (max==1)
  {
    return;
  }
  else if(iter==max-1)
  {
    iter=0;
    max--;
  }
  else if(array[iter]>array[iter+1])
  {
    // this swaps
    int temp = array[iter];
    array[iter]=array[iter+1];
    array[iter+1] = temp;
  }
  iter++;
}

void draw()
{
  drawSticks();
  sortNums();
}


