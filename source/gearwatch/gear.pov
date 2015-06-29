    #include "colors.inc"
    #include "shapes.inc"
    #include "textures.inc"
    #include "woods.inc"
    #include "stones.inc"
    #include "glass.inc"
    #include "metals.inc" 
    
    
    #macro Gear(LINK_W,LINK_H,OUTSIDE,INSIDE,G_NUM,HOLE)
    merge{
        difference{
                cylinder{
                        <0,0,1>,
                        <0,0,-1>,
                        OUTSIDE
                        texture {T_Silver_2B}
                        finish{phong 1 reflection 0.2} 
                }
		#if(HOLE>0)
                cylinder{
                        <0,0,2>,
                        <0,0,-2>,
                        INSIDE
                        texture {T_Silver_2B}
                        finish{phong 1 reflection 0.2} 
                }
		#end
        
        }
        
        #declare a=0;
        #while (a<G_NUM)
        
        difference{
        
        box{
                <LINK_W,LINK_H,1>
                <-LINK_W,-LINK_H,-1>
                texture {T_Silver_2B}
                finish{phong 1 reflection 0.2} 
                translate y*(LINK_H-0.25+OUTSIDE)
                rotate z*a*(360/G_NUM)
        }
        
        box{
                <LINK_W,LINK_H,1>
                <-LINK_W,-LINK_H,-1>
                texture {T_Silver_2B}
                finish{phong 1 reflection 0.2}
                translate x*LINK_W
                translate y*LINK_H
                scale 2
                rotate z*80
                translate x*-LINK_W 
                translate y*(LINK_H-0.25+OUTSIDE)
                rotate z*a*(360/G_NUM)
                
        }
        
        box{
                <LINK_W,LINK_H,1>
                <-LINK_W,-LINK_H,-1>
                texture {T_Silver_2B}
                finish{phong 1 reflection 0.2}
                translate x*-LINK_W
                translate y*LINK_H
                scale 2
                rotate z*-80
                translate x*LINK_W 
                translate y*(LINK_H-0.25+OUTSIDE)
                rotate z*a*(360/G_NUM)
                
        }         
        
        }
        
        #declare a=a+1;
        #end
    }
    #end


#declare gear=
merge{
    
    object{
        Gear(0.2,0.5,5,4.5,40,1)        
                        
        scale z*0.5
        scale 0.3
    }
    
    #declare a=0;
    #while (a<3)
    
    box{
        <0.3,5,1>
        <-0.3,1,-1>
        texture {T_Silver_2B}
        finish{phong 1 reflection 0.2}
        scale z*0.5
        scale 0.3
        rotate z*120*a
    }
    
    #declare a=a+1;
    #end
    
    difference{
        cylinder{
                <0,0,1>,
                <0,0,-1>,
                1
                texture {T_Silver_2B}
                finish{phong 1 reflection 0.2}
                scale 0.3
                scale z*0.5
        }
    }
}

#declare gear2=
merge{
    
    object{
        Gear(0.2,0.5,5,4.5,0,1)        
                        
        scale z*0.5
        scale 0.3
    }
    
    #declare a=0;
    #while (a<5)
    
    box{
        <0.3,5,1>
        <-0.3,1,-1>
        texture {T_Silver_2B}
        finish{phong 1 reflection 0.2}
        scale z*0.5
        scale 0.3
        rotate z*72*a
    }
    
    #declare a=a+1;
    #end
    
    difference{
        cylinder{
                <0,0,1>,
                <0,0,-1>,
                1
                texture {T_Silver_2B}
                finish{phong 1 reflection 0.2}
                scale 0.3
                scale z*0.5
        }
    }
}

#declare gear3=
merge{
    
    object{
        Gear(0.2,0.5,5,4.5,50,0)        
                        
        scale z*0.5
        scale 0.3
    }
    
    #declare a=0;
    #while (a<5)
    
    box{
        <0.3,5,1>
        <-0.3,1,-1>
        texture {T_Silver_2B}
        finish{phong 1 reflection 0.2}
        scale z*0.5
        scale 0.3
        rotate z*72*a
    }
    
    #declare a=a+1;
    #end
    
    difference{
        cylinder{
                <0,0,1>,
                <0,0,-1>,
                1
                texture {T_Silver_2B}
                finish{phong 1 reflection 0.2}
                scale 0.3
                scale z*0.5
        }
    }
}

#macro gear_make(LINK_W,LINK_H,OUTSIDE,INSIDE,G_NUM,HOLE,JOINT)

merge{
    
    object{
        Gear(LINK_W,LINK_H,OUTSIDE,INSIDE,G_NUM,HOLE)        
                        
        scale z*0.5
        scale 0.3
    }
    
    #declare a=0;
    #while (a<JOINT)
    
    box{
        <0.3,5,1>
        <-0.3,1,-1>
        texture {T_Silver_2B}
        finish{phong 1 reflection 0.2}
        scale z*0.5
        scale 0.3
        rotate z*(360/JOINT)*a
    }
    
    #declare a=a+1;
    #end
    
    difference{
        cylinder{
                <0,0,1>,
                <0,0,-1>,
                1
                texture {T_Silver_2B}
                finish{phong 1 reflection 0.2}
                scale 0.3
                scale z*0.5
        }
    }
}
#end