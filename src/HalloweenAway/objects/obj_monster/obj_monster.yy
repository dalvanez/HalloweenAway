{
  "spriteId": {
    "name": "spr_space_monster",
    "path": "sprites/spr_space_monster/spr_space_monster.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": null,
  "physicsObject": true,
  "physicsSensor": true,
  "physicsShape": 0,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": true,
  "physicsShapePoints": [
    {"x":32.0,"y":32.0,},
    {"x":18.0,"y":32.0,},
  ],
  "eventList": [
    {"isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,"parent":{"name":"obj_monster","path":"objects/obj_monster/obj_monster.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"parent":{"name":"obj_monster","path":"objects/obj_monster/obj_monster.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":8,"collisionObjectId":null,"parent":{"name":"obj_monster","path":"objects/obj_monster/obj_monster.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,"parent":{"name":"obj_monster","path":"objects/obj_monster/obj_monster.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":0,"value":".1","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"aggression","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"4","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"light_radius","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":".5","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"move_speed","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [],
  "parent": {
    "name": "Game",
    "path": "folders/Objects/Game.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_monster",
  "tags": [],
  "resourceType": "GMObject",
}