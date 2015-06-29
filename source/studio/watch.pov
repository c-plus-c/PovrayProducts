	#include "colors.inc"
	#include "shapes.inc"
    	#include "textures.inc"
    	#include "woods.inc"
    	#include "stones.inc"
    	#include "glass.inc"
    	#include "metals.inc"
    	

 

 
 
#declare num=array[12];

 #declare num[0]=
text {
ttf "timrom.ttf" "1"
0.1, <0, 0, 0>
pigment{color rgb <0,0,0>}
finish {ambient 1}
translate<-0.15,0,0>
} 

#declare num[1]=
text {
ttf "timrom.ttf" "2"
0.1, <0, 0, 0>
pigment{color rgb <0,0,0>}
finish {ambient 1}
translate<-0.20,0,0>
} 

#declare num[2]=
text {
ttf "timrom.ttf" "3"
0.1, <0, 0, 0>
pigment{color rgb <0,0,0>}
finish {ambient 1}
translate<-0.20,0,0>
}

#declare num[3]=
text {
ttf "timrom.ttf" "4"
0.1, <0, 0, 0>
pigment{color rgb <0,0,0>}
finish {ambient 1}
translate<-0.25,0,0>
}

#declare num[4]=
text {
ttf "timrom.ttf" "5"
0.1, <0, 0, 0>
pigment{color rgb <0,0,0>}
finish {ambient 1}
translate<-0.20,0,0>
}
 
#declare num[5]=
text {
ttf "timrom.ttf" "6"
0.1, <0, 0, 0>
pigment{color rgb <0,0,0>}
finish {ambient 1}
translate<-0.220,0,0>
} 

#declare num[6]=
text {
ttf "timrom.ttf" "7"
0.1, <0, 0, 0>
pigment{color rgb <0,0,0>}
finish {ambient 1}
translate<-0.21,0,0>
}

#declare num[7]=
text {
ttf "timrom.ttf" "8"
0.1, <0, 0, 0>
pigment{color rgb <0,0,0>}
finish {ambient 1}
translate<-0.195,0,0>
}

#declare num[8]=
text {
ttf "timrom.ttf" "9"
0.1, <0, 0, 0>
pigment{color rgb <0,0,0>}
finish {ambient 1}
translate<-0.21,0,0>
}

#declare num[9]=
text {
ttf "timrom.ttf" "10"
0.1, <0, 0, 0>
pigment{color rgb <0,0,0>}
finish {ambient 1}
translate<-0.4,0,0>
} 

#declare num[10]=
text {
ttf "timrom.ttf" "11"
0.1, <0, 0, 0>
pigment{color rgb <0,0,0>}
finish {ambient 1}
translate<-0.4,0,0>
} 

#declare num[11]=
text {
ttf "timrom.ttf" "12"
0.1, <0, 0, 0>
pigment{color rgb <0,0,0>}
finish {ambient 1}
translate<-0.4,0,0>
}

//boards
#declare board=union{
#declare a=0;
#while (a<12)
object{
num[a]
translate <4.3*cos(radians(a*(-30)+60)),4.3*sin(radians(a*(-30)+60))-0.35,>
}
#declare a=a+1;
#end


     disc{
     <0,0,0>,
     z,
     5.4,
     0

       pigment{color White}

       finish{phong 1 reflection 0.1 crand 3 ambient 1}
       
       translate <0,0,0.1>

     }
     
#declare a=0;
#while (a<60)
#switch (mod(a,5))
#case (0)
cylinder{
<0,0,0>,
<0,-0.4,0>,
0.03
pigment{
color Black
}
translate <0,5.2,0>
rotate <0,0,a*6>
}
#break;
#else
cylinder{
<0,0,0>,
<0,-0.25,0>,
0.02
pigment{
color Black
}
translate <0,5.2,0>
rotate <0,0,a*6>
}
#end
#declare a=a+1;
#end
}
//boarde
#declare longpin=

merge{
sphere{
<0,0,0>
0.1
texture {T_Chrome_1E}
finish{phong 1 reflection 0.2}
scale y*10
}
cylinder{
<0,0.7,0>,
<0,3,0>,
0.05
texture {T_Chrome_1E}
finish{phong 1 reflection 0.2}
}
torus{
0.2,
0.05
texture {T_Chrome_1E}
finish{phong 1 reflection 0.2}
rotate <90,0,0>
translate <0,3.2,0>
}
}

#declare longpinc=
merge{
difference{
object{
longpin
translate<0,1,0>
}
box{
<10,10,-10>
<-10,-10,-0.05>
texture {T_Chrome_1E}
finish{phong 1 reflection 0.2}
}
box{
<10,10,10>
<-10,-10,0.05>
texture {T_Chrome_1E}
finish{phong 1 reflection 0.2}
}
}
cylinder{
<0,0,0.1>,
<0,0,-0.1>,
0.3
texture {T_Chrome_1E}
finish{phong 1 reflection 0.2}
}
}


#declare shortpin=
merge{
sphere{
<0,0,0>
0.1
texture {T_Chrome_1E}
finish{phong 1 reflection 0.2}
scale y*7
translate<0,-0.05,0>
}
cylinder{
<0,0.5,0>,
<0,1.5,0>,
0.05
texture {T_Chrome_1E}
finish{phong 1 reflection 0.2}
}
torus{
0.2,
0.05
texture {T_Chrome_1E}
finish{phong 1 reflection 0.2}
rotate <90,0,0>
translate <0,1.7,0>
}
}



#declare shortpinc=
merge{
difference{
object{
shortpin
translate<0,1,0.1>
}
box{
<10,10,-10>
<-10,-10,0.05>
texture {T_Chrome_1E}
finish{phong 1 reflection 0.2}
}
box{
<10,10,10>
<-10,-10,0.07>
texture {T_Chrome_1E}
finish{phong 1 reflection 0.2}
}
}
cylinder{
<0,0,0.2>,
<0,0,0>,
0.4
texture {T_Chrome_1E}
finish{phong 1 reflection 0.2}
}
}


#declare cover=merge{
difference{
     superellipsoid{
     <1,0.5>

 texture {Gold_Texture}

       finish{phong 1 reflection 0.2}
       

       scale <6,6,0>
       translate <0,0,1>
    

     }
     superellipsoid{
     <1,0.5> 
   texture {Gold_Texture}

       finish{phong 1 reflection 0.2}
       

       scale <5.4,5.4,0>
       translate <0,0,1>
    

     }
 box{
 <6,6,0.5>,
 <-6,-6,-1>
    texture {Gold_Texture}

       finish{phong 1 reflection 0.2}
       }
        
     }
     
intersection{
difference{
superellipsoid{<1,0.5>
material { texture { pigment { color Clear } finish { F_Glass4 } } interior { I_Glass_Caustics1 fade_color Col_Gypsum_02 } }
       

       scale <6,6,0>
       translate <0,0,1>
    

     }
     superellipsoid{<1,0.5>
material { texture { pigment { color Clear } finish { F_Glass4 } } interior { I_Glass_Caustics1 fade_color Col_Gypsum_02 } }

       

       scale <5.4,5.4,0>
       translate <0,0,1>
    

     }
     
}
 box{
 <6,6,0.5>,
 <-6,-6,-1>
    material { texture { pigment { color Clear } finish { F_Glass4 } } interior { I_Glass_Caustics1 fade_color Col_Gypsum_02 } }


       }
       

 }
}

#declare watchkari = union{

      

object{
board
translate<0,0,1>
}


object{
longpinc
rotate<0,0,15>
translate<0,0,1>
}

object{
shortpinc
rotate <0,0,40>
translate<0,0,1>
} 


object{
cover
}

}

#declare watch=union{
object{
watchkari
rotate<90,0,0>
translate <0,3,0>
scale y*1.5
}

union{
merge{
difference{
cone{
<0,8.5,0>,
0.35,
<0,7.5,0>,
0.55
    texture {Gold_Texture}

       finish{phong 1 reflection 0.2}
       }
#declare a=0;
#while (a<30)
cylinder{
<0.35,8.5,0>,
<0.55,7.5,0>,
0.02
texture {Gold_Texture}
       
       rotate <0,a*12,0>
       }
#declare a=a+1;
#end
translate<0,0,1>
}

sphere{
<0,8.5,1>
0.35
    texture {Gold_Texture}

       finish{phong 1 reflection 0.2}
       }
       }


torus{
0.8,
0.15
    texture {Gold_Texture}

       finish{phong 1 reflection 0.2}
       rotate<90,0,0>
       scale <1.5,1.5,0>
       translate<0,8,1>
       } 
       
difference{
  cylinder{
  <0,7.5,1>,
  <0,6,1>,
  0.3 
      texture {Gold_Texture}

       finish{phong 1 reflection 0.2}
       }
  torus{
0.8,
0.2
    texture {Gold_Texture}

       finish{phong 1 reflection 0.2}
       rotate<90,0,0>
       scale <1.5,1.5,0>
       translate<0,8,1>
       }
        
       }
       rotate <90,0,0>
       translate<0,4,0>
      }
      translate <0,-1.5,0> 
      } 




