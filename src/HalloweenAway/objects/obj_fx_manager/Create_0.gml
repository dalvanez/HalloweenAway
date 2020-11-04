/// @description Create Global Particles
global.p_fx = part_system_create_layer(layer,false);

//Smoke Particles
global.fx_smoke = part_type_create();
part_type_sprite(global.fx_smoke,spr_fx_smoke,false,false,true);
part_type_life(global.fx_smoke,16,20);
part_type_size(global.fx_smoke,.5,1.5,-.02,.01);
part_type_alpha3(global.fx_smoke,.9,1,.7);