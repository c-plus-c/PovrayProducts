    #include "colors.inc"
	#include "shapes.inc"
    	#include "textures.inc"
    	#include "woods.inc"
    	#include "stones.inc"
    	#include "glass.inc"
    	#include "metals.inc" 
    	#include "lightstand.pov"
    	#include "watch.pov"
    	#include "parts.pov"
    	


media{ scattering { 1, rgb 0.008 /*extinction 0.1*/ } }

 global_settings { 

    adc_bailout 0.0039
    radiosity{
    brightness 4
}

 }






#declare tran=-6;
#declare x1=70;
#declare y1=20;
#declare ro=70;

#declare MySp =
  spline {
    cubic_spline
    0.00, <0,5,0>
    0.25, <-1*sin(radians(ro))+x1,10+tran,-1*cos(radians(ro))+y1>
    0.50, <-2*sin(radians(ro))+x1,15+tran,-2*cos(radians(ro))+y1>
    0.75, <-4*sin(radians(ro))+x1,20+tran,-4*cos(radians(ro))+y1>
    1.00, <-7*sin(radians(ro))+x1,25+tran,-7*cos(radians(ro))+y1>
    1.25, <-11*sin(radians(ro))+x1,30+tran,-11*cos(radians(ro))+y1>
    1.50, <-16*sin(radians(ro))+x1,35+tran,-16*cos(radians(ro))+y1>
    1.75, <-22*sin(radians(ro))+x1,40+tran,-22*cos(radians(ro))+y1>
    2.00, <-29*sin(radians(ro))+x1,45+tran,-29*cos(radians(ro))+y1>
  }            

camera{
        location<25,75,-60>
        look_at <25,0,0>
        }  

       
object{
lightstand
rotate<0,ro,0>
translate <x1,0,y1>
}



object{
watch
scale 1.5
rotate<0,35,0>
translate <-2,0,-6>
}

object{
gear1
scale <0,0.5,0>
translate <20,0,-15>
}

object{
gear1
scale <0,0.5,0>
translate <30,0,5>
}



light_source{
MySp(1.7)
color rgbt <1,1,1,0.6>
spotlight
point_at <30,0,0>
radius 80
falloff 80
tightness 50
}

light_source{
MySp(1.7)
color rgb <1,1,1>
spotlight
point_at <30,0,0>
radius 80
falloff 80
tightness 50
}


object{
driver
scale 2.4
rotate<0,70,0>
translate<30,0,-3>
}

object{
spring
scale <0.5,0,0>
rotate<0,45,0>
translate <30,0,-11>
}

merge{
sphere_sweep{
linear_spline,
5,
<80,-5,30>,5
<80,-5,-25>,5
<-30,-5,-25>,5
<-30,-5,30>,5
<80,-5,30>,5
texture { DMFWood6 scale 3} 

       finish{phong 1 diffuse 1}
}

box{
<-30,0,-25>
<80,-10,30>
       texture { DMFWood6 scale 3}

       /*finish{diffuse 1}*/
       }
       }
       
box{
<-30,-10,-25>
<-25,-80,-20>
       texture { DMFWood6}

       finish{phong 1 }
       }
       
box{
<-30,-10,25>
<-25,-80,30>
       texture { DMFWood6}

       finish{phong 1 }
       }

box{
<80,-10,-25>
<75,-80,-20>
       texture { DMFWood6}

       finish{phong 1 }
       }
       
box{
<80,-10,25>
<75,-80,30>
       texture { DMFWood6}

       finish{phong 1 }
       }
       
box{
<200,-80,35>
<-100,-90,-40>
texture {EMBWood1} 
finish{ambient 1}
}

box{
<200,-80,35>
<-100,100,40>
 texture{
   pigment{
     brick  color Gray color rgb<0.8,0.3,0.1>
     scale 1
   }
 }
 finish{phong 1 ambient 0.1}
}

box{
<-35,-80,-35>
<-40,100,40>
 texture{
   pigment{
     brick  color Gray color rgb<0.8,0.3,0.1>
     scale 1
   }
 }
 finish{phong 1 ambient 0.1}
}

object{
spring
scale <0.5,0,0>
rotate<0,172,0>
translate <40,0,-5>
}

object{
longpinc
scale 2
rotate <90,-39,0>
translate <10,0.1,-21>
}

object{
shortpinc
scale 2
rotate <90,-303,0>
translate <15,0.2,-25>
}

object{
boltmax
scale 0.35
rotate<0,165,0>
translate <15,0,5>
}

object{
boltmax
scale 0.35
rotate<0,238,0>
translate <24,0,3>
}

