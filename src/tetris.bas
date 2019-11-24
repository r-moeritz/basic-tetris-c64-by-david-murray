   10 poke 53281,0:poke 53280,14
   20 print"{clr}{wht} basic tetris {CBM-A}CCCCCCCCCC{CBM-S}     {CBM-A}CCCCCCC{CBM-S}";
   30 print"     2014     B{blk}{rvon}LLLLLLLLLL{rvof}{wht}{CBM-Q}CCCCC{CBM-W} {lblu}score{wht} B";
   40 print" david murray B{blk}{rvon}LLLLLLLLLL{rvof}{wht}B     B       B";
   50 print"              B{blk}{rvon}LLLLLLLLLL{rvof}{wht}B     {CBM-Z}CCCCCCC{CBM-X}";
   60 print"              B{blk}{rvon}LLLLLLLLLL{rvof}{wht}B"
   70 print"              B{blk}{rvon}LLLLLLLLLL{rvof}{wht}B  {CBM-A}CCCC{CBM-S}"
   80 print"              B{blk}{rvon}LLLLLLLLLL{rvof}{wht}{CBM-Q}CC{CBM-W}{lblu}next{wht}B"
   90 print"              B{blk}{rvon}LLLLLLLLLL{rvof}{wht}B  B{blk}{rvon}LLLL{rvof}{wht}B"
  100 print"     {CBM-A}CCCCC{CBM-S}  B{blk}{rvon}LLLLLLLLLL{rvof}{wht}B  B{blk}{rvon}LLLL{rvof}{wht}B"
  110 print"     B{lblu}level{wht}{CBM-Q}CC{CBM-W}{blk}{rvon}LLLLLLLLLL{rvof}{wht}B  B{blk}{rvon}LLLL{rvof}{wht}B"
  120 print"     B     B  B{blk}{rvon}LLLLLLLLLL{rvof}{wht}B  B{blk}{rvon}LLLL{rvof}{wht}B"
  130 print"     {CBM-Z}CCCCC{CBM-X}  B{blk}{rvon}LLLLLLLLLL{rvof}{wht}B  {CBM-Z}CCCC{CBM-X}"
  140 print" {gry1}{CBM-P}{wht}            B{blk}{rvon}LLLLLLLLLL{rvof}{wht}B"
  150 print" {gry1}{rvon}z{rvof} rotate{wht}     B{blk}{rvon}LLLLLLLLLL{rvof}{wht}B"
  160 print" {gry1}{CBM-P}{wht}            B{blk}{rvon}LLLLLLLLLL{rvof}{wht}B"
  170 print" {gry1}{rvon},{rvof} left{wht}       B{blk}{rvon}LLLLLLLLLL{rvof}{wht}B"
  180 print" {gry1}{CBM-P}{wht}            B{blk}{rvon}LLLLLLLLLL{rvof}{wht}B"
  190 print" {gry1}{rvon}.{rvof} drop{wht}       B{blk}{rvon}LLLLLLLLLL{rvof}{wht}B"
  200 print" {gry1}{CBM-P}{wht}            B{blk}{rvon}LLLLLLLLLL{rvof}{wht}B"
  210 print" {gry1}{rvon}/{rvof} right{wht}      B{blk}{rvon}LLLLLLLLLL{rvof}{wht}B"
  220 print"              B{blk}{rvon}LLLLLLLLLL{rvof}{wht}B"
  230 print"              {CBM-Z}CCCCCCCCCC{CBM-X}"
  240 print"                          "
  250 print"                          {home}"
  260 goto 500
  300 rem draw tetrimino
  310 poke tf+q,c:poke tf+w,c:poke tf+e,c:poke tf+r,c:return
  320 rem erase tetrimino
  330 poke tf+q,0:poketf+w,0:poketf+e,0:poketf+r,0:return
  340 rem define tetrimino
  350 q=d(p,1):w=d(p,2):e=d(p,3):r=d(p,4):return
  500 dim d(7,4):dim ra(7,4,4)
  510 s=0:l=0:ll=25:p=0:np=0:ro=1:rem score level piece next rotation
  520 for x=1 to 7:for y=1 to 4
  530 read d(x,y):next y:next x
  540 data 1,41,81,121:rem i piece
  550 data 2,42,82,81:rem j piece
  560 data 1,41,81,82:rem l piece
  570 data 41,42,81,82:rem o piece
  580 data 41,42,80,81:rem s piece
  590 data 40,41,42,81:rem t piece
  600 data 40,41,81,82:rem z piece
  700 rem rotational data
  701 data 39,0,-39,-78:rem i
  702 data -39,0,39,78:rem i
  703 data 39,0,-39,-78:rem i
  704 data -39,0,39,78:rem i
  705 data 39,0,-39,2:rem j
  706 data 41,0,-41,-80:rem j
  707 data -39,0,39,-2:rem j
  708 data -41,0,41,80:rem j
  709 data 39,0,-39,-80:rem l
  710 data 41,0,-41,-2:rem l
  711 data -39,0,39,80:rem l
  712 data -41,0,41,2:rem l
  713 data 0,0,0,0:rem o
  714 data 0,0,0,0:rem o
  715 data 0,0,0,0:rem o
  716 data 0,0,0,0:rem o
  717 data 0,-41,2,-39:rem s
  718 data 0,41,-2,39:rem s
  719 data 0,-41,2,-39:rem s
  720 data 0,41,-2,39:rem s
  721 data 41,0,-41,-39:rem t
  722 data -39,0,39,-41:rem t
  723 data -41,0,41,39:rem t
  724 data 39,0,-39,41:rem t
  725 data 41,0,-39,-80:rem z
  726 data -41,0,39,80:rem z
  727 data 41,0,-39,-80:rem z
  728 data -41,0,39,80:rem z
  800 tf=55351:rem tetris field
  810 for y=1 to 7:forx=1 to 4:for z=1 to 4
  820 read ra(y,x,z):next z:next x:next y
  900 np=4:gosub 1120:gosub1140:gosub 5510:goto 5000
 1000 rem draw next piece
 1010 for x=55605 to 55608:poke x,0:nextx
 1020 for x=55645 to 55648:poke x,0:nextx
 1030 for x=55685 to 55688:poke x,0:nextx
 1040 for x=55725 to 55728:poke x,0:nextx
 1050 ty=55605:nc=np+1
 1060 for x=1 to 4: poke ty+d(np,x),nc:next x:return
 1100 rem update level
 1120 print"{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{rght}{rght}{rght}{rght}{rght}{rght}{wht}     {left}{left}{left}{left}"l:return
 1130 rem update score
 1140 print"{home}{down}{down}{down}{left}{left}{left}{left}{left}{left}{left}{left}{wht}       {left}{left}{left}{left}{left}{left}{left}"s
 1150 b=int(s/5000):if b<>l then l=b:gosub 1120:ll=25-l*2
 1160 return
 5000 get a$
 5010 t=t+1:if t=ll then t=0:gosub 5260
 5020 if a$="z"then gosub 5610
 5030 if a$=","then gosub 5190
 5040 if a$="/"then gosub 5120
 5050 if a$="."then gosub 5260
 5100 goto 5000
 5110 rem move right
 5120 gosub 330:rem erase piece
 5130 q=q+1:w=w+1:e=e+1:r=r+1
 5140 b=(peek(tf+q)and15)+(peek(tf+w)and15)+(peek(tf+e)and15)+(peek(tf+r)and15)
 5150 if b<>0 then 5170
 5160 gosub 310:return
 5170 q=q-1:w=w-1:e=e-1:r=r-1:gosub 310:return
 5180 rem move left
 5190 gosub 330:rem erase piece
 5200 q=q-1:w=w-1:e=e-1:r=r-1
 5210 b=(peek(tf+q)and15)+(peek(tf+w)and15)+(peek(tf+e)and15)+(peek(tf+r)and15)
 5220 if b<>0 then 5240
 5230 gosub 310:return
 5240 q=q+1:w=w+1:e=e+1:r=r+1:gosub 310:return
 5250 rem lower piece
 5260 gosub 330:rem erase piece
 5270 q=q+40:w=w+40:e=e+40:r=r+40
 5280 b=(peek(tf+q)and15)+(peek(tf+w)and15)+(peek(tf+e)and15)+(peek(tf+r)and15)
 5290 if b<>0 then 5310
 5300 gosub 310:return
 5310 q=q-40:w=w-40:e=e-40:r=r-40:gosub 310:gosub6000:gosub 5510:return
 5500 rem new piece
 5510 p=np:c=p+1:np=int(rnd(1)*7)+1:gosub 1010:s=s+5:gosub1140
 5520 gosub 350:q=q+4:w=w+4:e=e+4:r=r+4:ro=1:gosub 310
 5530 return
 5600 rem rotate piece
 5610 gosub 330:rem erase piece
 5615 qq=q:ww=w:ee=e:rr=r
 5620 q=q+ra(p,ro,1):w=w+ra(p,ro,2):e=e+ra(p,ro,3):r=r+ra(p,ro,4)
 5625 rem printq","w","e","r
 5630 b=(peek(tf+q)and15)+(peek(tf+w)and15)+(peek(tf+e)and15)+(peek(tf+r)and15)
 5640 if b<>0 then 5670
 5650 gosub 310:ro=ro+1:if ro=5 then ro=1
 5660 return
 5670 q=qq:w=ww:e=ee:r=rr:gosub 310:return
 6000 rem scan the field
 6010 zz=0:sf=int(q/40):gosub 6110
 6020 sg=int(w/40):if sg <> sf then sf=sg:gosub 6110
 6030 sg=int(e/40):if sg <> sf then sf=sg:gosub 6110
 6040 sg=int(r/40):if sg <> sf then sf=sg:gosub 6110
 6050 if zz<>0then gosub 6210:s=s+(zz*100)*2:gosub 1140
 6060 return
 6100 rem detect line
 6110 ss=sf*40+tf:z=0
 6120 for x=ss to ss+9:if (peek(x)and15)<>0 then z=z+1
 6130 next x
 6140 if z<>10 then return
 6150 for x=ss to ss+9:poke x,15:next x:zz=zz+1:return
 6200 rem clear lines
 6210 for y=tf to tf+760 step 40
 6220 if (peek(y)and15)=15 then gosub 6240
 6230 next y:return
 6240 for x=0 to 9:for yy=y to tf+40 step-40
 6250 poke yy+x,peek(yy+x-40):next yy:next x:return
