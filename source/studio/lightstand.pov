	#include "colors.inc"
	#include "shapes.inc"
    	#include "textures.inc"
    	#include "woods.inc"
    	#include "stones.inc"
    	#include "glass.inc"
    	#include "metals.inc"
    	
/* 
camera{
 location<35,35,-40>
 look_at<0,35,-16>
 }
 */
 

    	
#declare MySpline =
  spline {
    cubic_spline
    0.00, <0,5,0>
    0.25, <0,10,-1>
    0.50, <0,15,-2>
    0.75, <0,20,-4>
    1.00, <0,25,-7>
    1.25, <0,30,-11>
    1.50, <0,35,-16>
    1.75, <0,40,-22>
    2.00, <0,45,-29>
  }
  
#declare kari= union{
difference{
sphere{
 <0,6,0>,
 5
 scale <1.5,0,1.5>
    texture {finish {Phong_Dull} pigment{White} }
    finish{phong 0.5 reflection 0.3 ambient 0.7}
}
box{
<30,6,-30>
<-30,-10,30>
    texture {finish {Phong_Dull} pigment{White} }
    finish{phong 0.5 reflection 0.3 ambient 0.7}
}
}


difference{
sphere{
<0,0,0>,
7
    texture {finish {Phong_Dull} pigment{White} }
    finish{phong 0.5 reflection 0.3 ambient 0.7}
}
sphere{
<0,0,0>,
6.9
   texture {finish {Mirror} pigment{White} }
}
sphere{
<0,0,0>,
6.9
    texture {finish {Mirror} pigment{White} }
translate <0,-7,0>
}
rotate<30,0,0>
translate MySpline(1.7)
}

difference{
sphere{
<0,0,0>,
6
material { texture { pigment { color Clear } finish { F_Glass4 } } interior { I_Glass_Caustics1 fade_color Col_Gypsum_02 ior 0.1} }
}
sphere{
<0,0,0>,
5.99
material { texture { pigment { color Clear } finish { F_Glass4 } } interior { I_Glass_Caustics1 fade_color Col_Gypsum_02 ior 0.1} }
}
translate MySpline(1.7)
}
	#declare ctr=0;
	#while (ctr<1.5)
#declare ctr = 0.00;
#while (ctr <= 1.40)
   torus{
    1,
    0.2
    texture {finish {Phong_Dull} pigment{White} }
    finish{phong 0.5 reflection 0.3 ambient 0.7}
    scale x*2 
    translate MySpline(ctr)
    
  }
  #declare ctr = ctr + 0.02;
#end

} 




#declare lightstand=
object{
kari
translate<0,-6,0>
}

