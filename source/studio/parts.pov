	#include "colors.inc"
	#include "shapes.inc"
    	#include "textures.inc"
    	#include "woods.inc"
    	#include "stones.inc"
    	#include "glass.inc"
    	#include "metals.inc"
    	

    	

camera{
location <20,20,-50>
look_at<0,0,0>
}


    	
#declare radi = 10;            // radius of spring
#declare thick = 0.5;            // thickness of spring
#declare delta_theta = 10;     // delta theta
#declare pitch = 5;           // z direction pitch per turn
#declare num_turn = 10;         // number of turn

#declare num_sphere = 360 * num_turn / delta_theta;
#declare theta = 0;
 
#declare spring =
sphere_sweep {
  linear_spline, num_sphere,
  #declare zz = 0;
  #while ( theta < 360 * num_turn )
    #declare xx = radi * cos( pi * theta / 180 );
    #declare yy = radi * sin( pi * theta / 180 );
    #declare zz = zz + pitch / 360 * delta_theta;
    <xx,yy,zz>, thick
    #declare theta = theta + delta_theta;
  #end
        finish{phong 1 reflection 0.2}
  scale 0.15
  translate<0,10.5*0.15,0>
}

#declare cutter = 
sphere{
<0,7,-8>
6.95
scale x*0.075
texture {T_Copper_1E}
finish{phong 1 reflection 0.2}

}

#declare motite=merge{
cylinder{
<0,0,0>,
<0,0,8>,
1
texture {pigment { DMFWood3} }
finish{phong 0.5 reflection 0.2}
}
sphere{
<0,0,8>
1
texture {pigment { DMFWood3} }
finish{phong 0.5 reflection 0.2}
}
}

#declare toucher=
        difference{
        box{
        <0.7,0.5,0.5>
        <-0.7,-0.5,-0.5>
       texture {T_Gold_2D}
        finish{phong 1 reflection 0.2 crand 0.2}
        } 
        box{
        <0,1,0>
        <2,-1,2>
        texture {T_Gold_2D}
        finish{phong 1 reflection 0.2 crand 0.2}
        rotate<0,-85,0>                                           
        translate<-0.5,0,-0.5>
        } 
        box{
        <0,1,0>
        <-2,-1,2>
        texture {T_Gold_2D}
        finish{phong 1 reflection 0.2 crand 0.2}
        rotate<0,85,0>
        translate<0.5,0,-0.5>
        }
        }
        
#declare gear1=
difference{        
intersection{
merge{

   cylinder{
   <0,0.5,0>,
   <0,-0.5,0>,
   3
   texture {T_Gold_2D}
        finish{phong 1 reflection 0.2 crand 0.2}
   }
   
   #declare a=0;
   #while (a<12)
   object{
   toucher
   translate<0,0,3.4>
   rotate<0,30*a,0>
   }
   #declare a=a+1;
   #end
   }
   
cylinder{
   <0,-0.6,0>
   <0,0.6,0>
   3.85
   texture {T_Gold_2D}
        finish{phong 1 reflection 0.2}
   }
   }
   
cylinder{
   <0,-0.6,0>
   <0,0.6,0>
   2
   texture {T_Gold_2D}
        finish{phong 1 reflection 0.2}
   }
   translate<0,0.5,0>
   } 
              
#declare driver=
merge{
              
difference{
//drivers
merge{
//motite
difference{
object{
motite
translate<0,0,3>
}
torus{
3,
2.2
texture {pigment { DMFWood3} }
finish{phong 0.3 reflection 0.1}
rotate<90,0,0>
translate<0,0,4>
}
#declare a=0;
#while (a<4)
cylinder{
<0,0,20>,
<0,0,-20>,
0.3
texture {pigment { DMFWood3} }
finish{phong 0.3 reflection 0.1}
translate<0,1,0>
rotate<0,0,90*a+45>
}
#declare a=a+1;
#end
}
torus{
0.7,
0.3
texture {pigment { DMFWood3} }
finish{phong 0.3 reflection 0.1}
rotate<90,0,0>
translate<0,0,3> 
}

//motiteowari
cylinder{
   <0,0,3>,
   <0,0,-7>,
   0.4
  texture {T_Copper_1E}
  finish{  diffuse 0.7  crand 0.2}
   }   
cone{
<0,0,-7>,
0.4,
<0,0,-8>,
0.05
texture {T_Copper_1E}
finish{ diffuse 0.7  crand 0.2}
}
sphere{
<0,0,-8>
0.05
texture {T_Copper_1E}
finish{ diffuse 0.7  crand 0.2}
}
}

//drivere
#declare a=0;
#while (a<4)
object{
cutter
rotate<0,0,90*a>
}
#declare a=a+1;
#end         

}
translate <0,1,0>
}

   
#declare bolt=merge{

cylinder{
<0,0,10>
<0,0,0>
0.7
texture {T_Chrome_4A}
finish{phong 0.5 reflection 0.2}

}

#declare radi2 = 0.7;            // radius of spring
#declare thick2 = 0.15;            // thickness of spring
#declare delta_theta2 = 10;     // delta theta
#declare pitch2 = 1/3;           // z direction pitch per turn
#declare num_turn2 = 30;         // number of turn

#declare num_sphere2 = 360 * num_turn2 / delta_theta2;
#declare theta2 = 0;
 
sphere_sweep {
  linear_spline, num_sphere2,
  #declare zz2 = 0;
  #while ( theta2 < 360 * num_turn2 )
    #declare xx2 = radi2 * cos( pi * theta2 / 180 );
    #declare yy2 = radi2 * sin( pi * theta2 / 180 );
    #declare zz2 = zz2 + pitch2 / 360 * delta_theta2;
    <xx2,yy2,zz2>, thick2
    #declare theta2 = theta2 + delta_theta2;
  #end
    texture {T_Chrome_4A}
        finish{phong 0.5 reflection 0.2}
}

difference{
sphere{
<0,0,0>
2
texture {T_Chrome_4A}
        finish{phong 0.5 reflection 0.2}
scale <0,0,0.5>
translate <0,0,10>
}

box{
<10,10,10>
<-10,-10,-10>
texture {T_Chrome_4A}
        finish{phong 0.5 reflection 0.2}
}

box{
<10,-0.2,10.5>
<-10,0.2,12>
texture {T_Chrome_4A}
        finish{phong 0.5 reflection 0.2}
rotate <0,0,45>
}

box{
<10,0.2,10.5>
<-10,-0.2,12>
texture {T_Chrome_4A}
        finish{phong 0.5 reflection 0.2}
rotate <0,0,-45>
}
}
}

#declare boltmax=
object{
bolt
rotate<-atan2(1.3,10),0,0>
translate <0,cos(atan(1.3/10)),0>
}


      