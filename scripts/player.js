var text = document.getElementById('textArea');
var sumbit = document.getElementById('submitButtonArea');

var player = {
    "name": "",
    "face": 3,
    "skin": [217, 183, 31],
    "hair": 0,
    "hairColor": [0, 0, 0],
    "tshirt": 'e',
    "tColor": [255, 0, 0],
    'pColor': [0, 50, 0],
    'hp': 50,
    'mp': 10,
    'maxhp': 50,
    'maxmp': 10,
    'mapX': 13,
    'mapY': 5,
    'xp': 0,
    'nextLevel': 100,
    'money': 0,
    'facing':'South',
    'items': [{'item':'shirt',
             'n':1,
             'def':1,
             'desc':'A shirt with a math symbol.',
             use(){
               text.innerHTML = 'You put on the shirt.';
               player.torso = {'item':'shirt','def':1,'eva':0}; 
               player.def = player.head.def + player.leftHand.def + player.rightHand.def + player.torso.def;
               player.def += player.legs.def + player.feet.def;
               player.eva = player.head.eva + player.leftHand.eva + player.rightHand.eva + player.torso.eva;
               player.eva += player.legs.eva + player.feet.eva;  
             }
            },
             {'item':'pants',
             'n':1,
             'desc':'A pair of pants.',
              'def':1,
             use(){
               text.innerHTML = 'You put on the pants.';
               player.leg = {'item':'pants','def':1,'eva':0};
               player.def = player.head.def + player.leftHand.def + player.rightHand.def + player.torso.def;
               player.def += player.legs.def + player.feet.def;
               player.eva = player.head.eva + player.leftHand.eva + player.rightHand.eva + player.torso.eva;
               player.eva += player.legs.eva + player.feet.eva;
             }
            },
              {'item':'shoes',
                'n':1,
                 'desc':'A pair of shoes.',
                use(){
                    text.innerHTML = 'You put on the shoes.';
                    player.feet = {'item':'shoes','def':1,'eva':1};
                    player.def = player.head.def + player.leftHand.def + player.rightHand.def + player.torso.def;
                    player.def += player.legs.def + player.feet.def;
                    player.eva = player.head.eva + player.leftHand.eva + player.rightHand.eva + player.torso.eva;
                    player.eva += player.legs.eva + player.feet.eva;  
              }
            }],
    'head':{'item':'None','def':0,'eva':0},
    'leftHand':{'item':'None','atk':0,'def':0,'eva':0},
    'rightHand':{'item':'None','atk':0,'def':0,'eva':0},
    'torso':{'item':'shirt','def':1,'eva':0},
    'legs':{'item':'pants','def':1,'eva':0},
    'feet':{'item':'shoes','def':1,'eva':1},
    'def': 3,
    'eva': 1,
    'atk': 1,
     'questLog':[],
     x: 280,
     y: 100
 };

var game = {
    'mode':'map'
}
