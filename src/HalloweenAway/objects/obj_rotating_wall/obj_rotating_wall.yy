{
  "spriteId": {
    "name": "spr_rotating_wall",
    "path": "sprites/spr_rotating_wall/spr_rotating_wall.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "obj_collision",
    "path": "objects/obj_collision/obj_collision.yy",
  },
  "physicsObject": true,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.0,
  "physicsRestitution": 0.0,
  "physicsLinearDamping": 0.0,
  "physicsAngularDamping": 0.0,
  "physicsFriction": 0.0,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [
    {"x":1.0,"y":0.0,},
    {"x":7.0,"y":0.0,},
    {"x":7.0,"y":31.0,},
    {"x":1.0,"y":31.0,},
  ],
  "eventList": [
    {"isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,"parent":{"name":"obj_rotating_wall","path":"objects/obj_rotating_wall/obj_rotating_wall.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,"parent":{"name":"obj_rotating_wall","path":"objects/obj_rotating_wall/obj_rotating_wall.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":8,"collisionObjectId":null,"parent":{"name":"obj_rotating_wall","path":"objects/obj_rotating_wall/obj_rotating_wall.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":3,"value":"True","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"active","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"1","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"rotate_speed","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":1,"value":"-1","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"lever","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [],
  "parent": {
    "name": "Obstacles",
    "path": "folders/Objects/Game/Obstacles.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_rotating_wall",
  "tags": [
    "lever",
  ],
  "resourceType": "GMObject",
}