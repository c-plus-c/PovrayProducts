    #include "colors.inc"
    #include "shapes.inc"
    #include "textures.inc"
    #include "woods.inc"
    #include "stones.inc"
    #include "glass.inc"
    #include "metals.inc" 
    
    


    
    camera{
        location <0,20,0>
        look_at <0,0,0>
    }
    
    light_source{
        <5,10,5>
        color White
    }
    
    #declare cover=
    difference{
    
    cylinder{
     <0,0,0>
     <0,0.1,0>            
     5
texture {T_Gold_3A}
finish{phong 1 reflection 0.2}
    }

   sphere_sweep {

     cubic_spline,

     4,

     <3.5*cos(-70),0,3.5*sin(-70)>, 1

     <3.5*cos(-50),0,3.5*sin(-50)>, 1
     
     <3.5*cos(-30),0,3.5*sin(-30)>, 1
     
     <3.5*cos(-10),0,3.5*sin(-10)>, 1
     
     tolerance 10 
     
texture {T_Gold_3A}
finish{phong 1 reflection 0.2}
     finish{ambient 1}


  }
 
  
  cylinder{
  <0,1,0>
  <0,-1,0>
  0.5
  }
  
   sphere_sweep {

     b_spline,

     4,

     25*<cos(-190),0,sin(-190)>, 1

     3*<cos(-180),0,sin(-180)>, 1
     
     4*<cos(-170),0,sin(-170)>, 1
     
     10*<cos(-150),0,sin(-150)>, 1
     
     tolerance 0 
     
texture {T_Gold_3A}
finish{phong 1 reflection 0.2}
     scale 0.7
     rotate y*-40
     translate <-4,0,0>


  }
  
   sphere_sweep {

     linear_spline,

     4,

     4*<cos(70),0,sin(70)>, 1

     3.5*<cos(70),0,sin(70)>, 1
     
     3*<cos(70),0,sin(70)>, 1
     
     2*<cos(70),0,sin(70)>, 1
     
     tolerance 0 
     
texture {T_Gold_3A}
finish{phong 1 reflection 0.2}
     scale 0.7
     rotate y*230
     translate <5.3,0,-1>


  }
  
   sphere_sweep {

     linear_spline,

     6,

     3.9*<cos(radians(-120)),0,sin(radians(-120))>, 0.5

     3.9*<cos(radians(-110)),0,sin(radians(-110))>, 0.5
     
     3.9*<cos(radians(-100)),0,sin(radians(-100))>, 0.5
     
     3.9*<cos(radians(-90)),0,sin(radians(-90))>, 0.5
     
     3.9*<cos(radians(-70)),0,sin(radians(-70))>, 0.5
     
     3.9*<cos(radians(-50)),0,sin(radians(-50))>, 0.5
     
     tolerance 0 
     
texture {T_Gold_3A}
finish{phong 1 reflection 0.2}
     finish{ambient 1}


  }
  
   sphere_sweep {

     linear_spline,

     6,

     2.6*<cos(radians(-120)),0,sin(radians(-120))>, 0.5

     2.6*<cos(radians(-110)),0,sin(radians(-110))>, 0.5
     
     2.6*<cos(radians(-100)),0,sin(radians(-100))>, 0.5
     
     2.6*<cos(radians(-90)),0,sin(radians(-90))>, 0.5
     
     2.6*<cos(radians(-70)),0,sin(radians(-70))>, 0.5
     
     2.6*<cos(radians(-50)),0,sin(radians(-50))>, 0.5
     
     
     tolerance 0 
     
texture {T_Gold_3A}
finish{phong 1 reflection 0.2}
     rotate y*5


  }
  
  box{
  <5,1,1.2>
  <-2.8,-1,-1.2>
  scale 0.4
  rotate y*65
  translate 3.7*<cos(radians(115)),0,sin(radians(115))>
  }    
  
  difference{
  cylinder{
    <0,10,0>
    <0,-10,0>
    1.8
  }
  
  cylinder{
    <0,11,0>
    <0,-11,0>
    1.2
  }
  
  box{
    <0,1,0.4>
    <1,-1,-0.4>
    translate x*1
  }

  
  }  
   

  
  }
  
 
  

   
    
