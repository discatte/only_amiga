// POV-Ray 3.7 Scene File " ... .pov"
// author:  discatte  @galacticfurball
// date:    Nov, 19, 2020
// Based on default pov mirror sphere scene.
//--------------------------------------------------------------------------
#version 3.7;
global_settings{ assumed_gamma 1.0 }
#default{ finish{ ambient 0.1 diffuse 0.9 }} 
//--------------------------------------------------------------------------
#include "colors.inc"
#include "textures.inc"
#include "glass.inc"
#include "metals.inc"
#include "golds.inc"
#include "stones.inc"
#include "woods.inc"
#include "shapes.inc"
#include "shapes2.inc"
#include "functions.inc"
#include "math.inc"
#include "transforms.inc"
//--------------------------------------------------------------------------
// camera ------------------------------------------------------------------
#declare Camera_0 = camera {perspective angle 75               // front view
                            location  <0.0 , 2.0 ,-3.0>
                            right     x*image_width/image_height
                            look_at   <0.0 , 0.9 , 0.0>}
#declare Camera_1 = camera {/*ultra_wide_angle*/ angle 90   // diagonal view
                            location  <2.0 , 2.5 ,-3.0>
                            right     x*image_width/image_height
                            look_at   <0.0 , 1.0 , 0.0>}
#declare Camera_2 = camera {/*ultra_wide_angle*/ angle 90  //right side view
                            location  <3.0 , 1.0 , 0.0>
                            right     x*image_width/image_height
                            look_at   <0.0 , 1.0 , 0.0>}
#declare Camera_3 = camera {/*ultra_wide_angle*/ angle 90        // top view
                            location  <0.0 , 3.0 ,-0.001>
                            right     x*image_width/image_height
                            look_at   <0.0 , 1.0 , 0.0>}
camera{Camera_0}
// sun ----------------------------------------------------------------------
light_source{< 3000,3000,-3000> color White}
// sky ----------------------------------------------------------------------
background {
	rgb< 1, 1, 1> * 0.55
	}
// ground -------------------------------------------------------------------
plane{ <0,1,0>, 0 
         texture { //Polished_Chrome
                   pigment{ 
                              tiling 1 // 1~24 Pattern_Number
              color_map{
                [ 0.0 color rgb<1,1,1>*0.55]
                [ 0.9 color rgb<1,1,1>*0.55]
                [ 0.9 color rgb<0.678, 0.314, 0.678>*0.8]
                [ 1.0 color rgb<0.678, 0.314, 0.678>*0.8]
                } // end color_map
           scale 0.4}
                   finish { phong 1 reflection {0.40 metallic 0.5}}
                 } // end of texture 
     } // end of plane
//---------------------------------------------------------------------------
//---------------------------- objects in scene ----------------------------
//---------------------------------------------------------------------------

// sample sphere
sphere { <0,0,0>, 1 
       texture{
       	 pigment{
       	 	 checker color rgb<1,0,0>*1 color rgb<1,1,1>*1
       	 	 scale <0.06,0.1>
       	 	 warp{ spherical
                     orientation <0,0,1>
                     dist_exp 0
                   }
       	 	 }
              //normal { bumps 0.75 scale 0.025}
                finish { phong 0.1}
              } // end of texture


          scale<1,1,1>  rotate<0,0,-15>  translate<0,1.1,0>  
       }  // end of sphere ----------------------------------- 
