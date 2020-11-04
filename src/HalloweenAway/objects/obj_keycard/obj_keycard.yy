{
  "spriteId": {
    "name": "spr_keycard",
    "path": "sprites/spr_keycard/spr_keycard.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "obj_candy",
    "path": "objects/obj_candy/obj_candy.yy",
  },
  "physicsObject": true,
  "physicsSensor": true,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [
    {"x":0.0,"y":0.0,},
    {"x":16.0,"y":0.0,},
    {"x":16.0,"y":16.0,},
    {"x":0.0,"y":16.0,},
  ],
  "eventList": [
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"parent":{"name":"obj_keycard","path":"objects/obj_keycard/obj_keycard.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":1,"collisionObjectId":null,"parent":{"name":"obj_keycard","path":"objects/obj_keycard/obj_keycard.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":1,"value":"-1","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"light_set","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [
    {"propertyId":{"name":"random_sprite","path":"objects/obj_candy/obj_candy.yy",},"objectId":{"name":"obj_candy","path":"objects/obj_candy/obj_candy.yy",},"value":"False","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"floaty","path":"objects/obj_candy/obj_candy.yy",},"objectId":{"name":"obj_candy","path":"objects/obj_candy/obj_candy.yy",},"value":"True","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"reward","path":"objects/obj_candy/obj_candy.yy",},"objectId":{"name":"obj_candy","path":"objects/obj_candy/obj_candy.yy",},"value":"100","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
  ],
  "parent": {
    "name": "Collectables",
    "path": "folders/Objects/Game/Collectables.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_keycard",
  "tags": [],
  "resourceType": "GMObject",
}