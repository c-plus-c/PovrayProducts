#include "gear.pov"    
    #include "cover.pov"
        /*
          sky_sphere{
            pigment{
              gradient z
              color_map{
                [ 0.0 White*0.9 ]
                [ 1.0 color rgb<0.3,0.4,1.2>]
              }
            }
          }
          */

    global_settings { charset utf8 }
	
    camera{
        location <10,20,-10>*0.56
        look_at <0,0,0>
    }
    
    light_source{
        <0,10,0>
        color White
    }

difference{

superellipsoid{<1,0.1>
texture {T_Gold_3A}
finish{phong 1 reflection 0.2}
translate z*-1
scale 3
rotate x*90
}

cylinder{
<0,0,0>,
<0,10,0>,
1
texture {T_Gold_3A}
finish{phong 1 reflection 0.2}
scale 2.8
translate y*0.3
}
scale <2,0.25,2>
}

union{

object{
	gear
texture {T_Brass_1A}	
	rotate x*90
	translate <2,0.5,0>
}

cylinder{
 <0,0,0>
 <0,1.4,0>
 0.1
	texture {T_Gold_1A}
        finish{phong 1 reflection 0.2}
 translate <2,0,0>
} 

object{
	gear
texture {T_Brass_1A}	
	rotate x*90
	translate 2.5*<cos(radians(180)),0,sin(radians(180))>
	translate y*(0.9)
}

sphere{
  <0,0,0>
  0.2
	translate 2.5*<cos(radians(180)),0,sin(radians(180))>
	translate y*1.3
	texture {T_Gold_1A}
        finish{phong 1 reflection 0.2}
}

cylinder{
 <0,0,0>
 <0,1.4,0>
 0.1
	texture {T_Gold_1A}
        finish{phong 1 reflection 0.2}
 translate 2.5*<cos(radians(180)),0,sin(radians(180))>
} 


object{
	gear_make(0.2,0.5,5,4.5,40,0,0) 
texture {T_Brass_1A}
        scale 0.6	
	rotate x*90
	rotate y*(360/100)*34
	translate 2*<cos(radians(0)),0,sin(radians(0))>
	translate y*(0.7)
}

sphere{
  <0,0,0>
  0.2
	translate 2*<cos(radians(0)),0,sin(radians(0))>
	translate y*1.3
	texture {T_Gold_1A}
        finish{phong 1 reflection 0.2}
}

cylinder{
 <0,0,0>
 <0,1.4,0>
 0.1
	texture {T_Gold_1A}
        finish{phong 1 reflection 0.2}
 translate 2*<cos(radians(0)),0,sin(radians(0))>
} 


object{
	gear3
texture {T_Brass_1A}	
	rotate x*90
	scale 0.6
	rotate y*5
	translate 2.5*<cos(radians(220)),0,sin(radians(220))>
	translate y*0.6
}

sphere{
  <0,0,0>
  0.2
	translate 2.5*<cos(radians(220)),0,sin(radians(220))>
	translate y*1.3
	texture {T_Gold_1A}
        finish{phong 1 reflection 0.2}
}

cylinder{
 <0,0,0>
 <0,1.4,0>
 0.1
	texture {T_Gold_1A}
        finish{phong 1 reflection 0.2}
 translate 2.5*<cos(radians(220)),0,sin(radians(220))>
} 

object{
	gear_make(0.2,0.5,5,4.5,0,1,3)
texture {T_Brass_1A}	
	rotate x*90
	scale 0.9
	rotate y*5
	translate 2.1*<cos(radians(290)),0,sin(radians(290))>
	translate y*0.2
}

cylinder{
 <0,0,0>
 <0,1.4,0>
 0.1
	texture {T_Gold_1A}
        finish{phong 1 reflection 0.2}
 translate 2.1*<cos(radians(290)),0,sin(radians(290))>
} 


object{
	gear_make(0.2,0.5,5,4.5,0,1,3)
texture {T_Brass_1A}	
	rotate x*90
	scale 1
	rotate y*5
	translate 2.4*<cos(radians(90)),0,sin(radians(90))>
	translate y*0.8
}

sphere{
  <0,0,0>
  0.2
	translate 2.4*<cos(radians(90)),0,sin(radians(90))>
	translate y*1.3
	texture {T_Gold_1A}
        finish{phong 1 reflection 0.2}
}

cylinder{
 <0,0,0>
 <0,1.4,0>
 0.1
	texture {T_Gold_1A}
        finish{phong 1 reflection 0.2}
 translate 2.4*<cos(radians(90)),0,sin(radians(90))>
} 

object{
	gear_make(0.2,0.5,5,4.5,50,1,4) 
texture {T_Brass_1A}
        scale 0.5	
	rotate x*90
	rotate y*60
	translate 2.5*<cos(radians(180)),0,sin(radians(180))>
	translate y*(0.6)
}

sphere{
  <0,0,0>
  0.2
	translate 2.5*<cos(radians(180)),0,sin(radians(180))>
	translate y*1.3
	texture {T_Gold_1A}
        finish{phong 1 reflection 0.2}
}

cylinder{
 <0,0,0>
 <0,1.4,0>
 0.1
	texture {T_Gold_1A}
        finish{phong 1 reflection 0.2}
 translate 2.5*<cos(radians(180)),0,sin(radians(180))>
} 

object{
	gear_make(0.2,0.5,5,4.5,50,0,0) 
texture {T_Brass_1A}
        scale 0.4	
	rotate x*90
	rotate y*5
	translate <0,1.5,0>
}

cylinder{
 <0,0,0>
 <0,1.4,0>
 0.1
	texture {T_Gold_1A}
        finish{phong 1 reflection 0.2}
 translate <0,0,0>
} 



object{
	gear_make(0.2,0.5,5,4.5,30,1,4) 
texture {T_Brass_1A}
        scale 0.5	
	rotate x*90
	rotate y*60
	translate 2.2*<cos(radians(-110)),0,sin(radians(-110))>
	translate y*(0.4)
}
/*
sphere{
  <0,0,0>
  0.2
	translate 2.2*<cos(radians(-110)),0,sin(radians(-110))>
	translate y*1.3
	texture {T_Gold_1A}
        finish{phong 1 reflection 0.2}
*/ 

cylinder{
 <0,0,0>
 <0,1.4,0>
 0.1
	texture {T_Gold_1A}
        finish{phong 1 reflection 0.2}
 translate 2.2*<cos(radians(-110)),0,sin(radians(-110))>
} 

object{
	gear_make(0.2,0.5,5,4.5,50,1,4) 
texture {T_Brass_1A}
        scale 0.8	
	rotate x*90
	rotate y*63
	translate 3.5*<cos(radians(-40)),0,sin(radians(-40))>
	translate y*(0.7)
}

sphere{
  <0,0,0>
  0.2
	translate 3.5*<cos(radians(-40)),0,sin(radians(-40))>
	translate y*1.3
	texture {T_Gold_1A}
        finish{phong 1 reflection 0.2}
}

cylinder{
 <0,0,0>
 <0,1.4,0>
 0.1
	texture {T_Gold_1A}
        finish{phong 1 reflection 0.2}
 translate 3.5*<cos(radians(-40)),0,sin(radians(-40))>
} 

scale <0.8,1,0.8>
}
   
difference{

cylinder{
<0,0.1,0>
<0,0,0>
5.6
pigment { color White} 
finish{phong 1 reflection 0.2}
} 

cylinder{
<0,1,0>
<0,-1,0>
5*0.8
}
translate y*1.3 
}



object{
 cover
 pigment{color rgbt<1,1,1,0.7>}
 scale 0.8
// scale 2
 translate y*1.3
}

#declare sc=1.2;
#declare a=1;
#while (a<=12)
text {
ttf "msgothic.ttc" str(a,1,0)
0.1, <0,0,0>
translate <-0.25,-0.30,-0.5>
scale sc
rotate x*90
translate 4.8*<cos(radians(90-a*30)),0,sin(radians(90-a*30))>
translate y*0.85
}
#declare a=a+1;
#end

 cylinder{
  <0,0,0>
  <0,2,0>
   0.3
   texture {T_Chrome_1A}
        finish{phong 1 reflection 0.2}
 }

union{
 cylinder{
  <0,1.6,0>,
  <4.5,1.6,0>,
   0.1
   texture {T_Chrome_1A}
        finish{phong 1 reflection 0.2}
   rotate y*66
 }

}

union{
  cylinder{
  <0,1.8,0>,
  <3,1.8,0>,
   0.1
   texture {T_Chrome_1A}
        finish{phong 1 reflection 0.2}
   rotate y*30+(30*(26/60))
 }
}

union{
  cylinder{
  <0,1.95,0>,
  <4.7,1.95,0>,
   0.05
   texture {T_Chrome_1A}
        finish{phong 1 reflection 0.2}
   rotate y*120
 }
}

merge{
cone{
 <0,0,0>,
 0.5,
 <0,0,1>,
 0.4
 	texture {T_Gold_1A}
        finish{phong 1 reflection 0.2}
}

sphere{
 <0,0,1>,
 0.4
 	texture {T_Gold_1A}
        finish{phong 1 reflection 0.2}
}

torus{
 1.6,
 0.25
 	texture {T_Gold_1A}
        finish{phong 1 reflection 0.2}
 translate z*0.5
}

cylinder{
 <0,0,0>,
 <0,0,-4>,
 0.3
 	texture {T_Gold_1A}
        finish{phong 1 reflection 0.2}
}
translate <0,0.6,8>
}

plane{
<0,-1,0>,
0
texture {pigment { Pink_Granite} scale 10}
}