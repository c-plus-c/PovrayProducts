    #include "colors.inc"

    #include "shapes.inc"

    #include "textures.inc"

    #include "woods.inc"

    #include "stones.inc"

    #include "glass.inc"

    #include "metals.inc"

    #include "winegrass.pov"

	#include "rand.inc"


#declare ap=2/3;
#declare r = seed(100); 


difference{
sphere{
<0,0,0>
500
pigment{color White}
}
sphere{
<0,0,0>
499
pigment {color White}
}
}

global_settings{
radiosity{
brightness 4
}
}

camera{
location <-16*ap,5,8*ap>
look_at<0,4.75,0>
}



#declare bullet=
merge{
cylinder{
<1,0,0>,
<-1,0,0>,
0.7
texture {Bronze_Texture}
}
sphere{
<0,0,0>
0.7
texture {Bronze_Texture}
scale <2,0,0>
translate<-1,0,0>
}
}

object{
bullet
scale 0.3
translate <-6,4.3,0>
}


difference{
object{
winegrass
}

cylinder{
<10,4,0>
<-10,4,0>
0.9
	material { texture { pigment { Col_Glass_Clear } finish{ F_Glass1 } } interior { ior 1.5 fade_color Col_Topaz_01} }
}



#declare I = 0;
#while (I < 150)
    box{<0.5,0.5,0.5>
<-0.5,-0.5,-0.5>
material { texture { pigment { Col_Glass_Clear } finish{ F_Glass1 } } interior { ior 1.5 fade_color Col_Topaz_01} }
	rotate<3.6*rand(r),13*rand(r),49*rand(r)>
	translate<5*rand(r)-2.5,10*rand(r)-4,5*rand(r)-2.5>  
    }

#declare I = I + 1;
#end
material { texture { pigment { Col_Glass_Clear } finish{ F_Glass1 } } interior { ior 1.5 fade_color Col_Topaz_01} }
rotate <20,10,30>
translate <0,1.5,-2>
}

#declare superhahen=
union{
#declare r1 = seed(300);


#declare I=0;
#while (I<200)
intersection{
object{
winegrass
}


    box{<0.5,0.5,0.5>
<-0.5,-0.5,-0.5>
	rotate<3.6*rand(r1),13*rand(r1),49*rand(r1)>
	translate<3*rand(r1),5*rand(r1),3*rand(r1)>  
    }

material { texture { pigment { Col_Glass_Clear } finish{ F_Glass1 } } interior { ior 1.5 fade_color Col_Topaz_01} } 
	rotate<3.6*rand(r),13*rand(r),49*rand(r)>
	translate<5*rand(r)-2.5,5*rand(r),5*rand(r)-2.5>
}
#declare I=I+1;
#end

}

object{ superhahen
translate <-3,-1.5,-0.5>
}













box{
<3,0,3>
<-3,-5,-3>
texture {pigment { Red_Marble} scale 10 }
}

cylinder{
<-6,4.3,0>
<1000,4.3,0>
0.21
texture {FBM_Clouds scale 0.1}
}






