import 'package:foodie_flutter_app/models/course.dart';
import 'package:foodie_flutter_app/models/cuisine.dart';
import 'package:foodie_flutter_app/models/how_much_type.dart';
import 'package:foodie_flutter_app/models/ingredient.dart';
import 'package:foodie_flutter_app/models/recipe.dart';
import 'package:foodie_flutter_app/models/step.dart';

var recipes = [
  Recipe(
    name: 'Batata Poha',
    imagePaths: [
      'https://www.archanaskitchen.com/images/archanaskitchen/Indian_Breakfast_Tiffins/Indian_Aloo_Batata_Poha_with_Pomegranates_Recipe_Archanas_Kitchen-1.jpg',
      'https://i.ytimg.com/vi/vDLcIE-4o4w/maxresdefault.jpg',
      'https://c2.staticflickr.com/8/7239/27773925932_a7bb21ae68_z.jpg'
    ],
    videoPaths: [
      'https://www.youtube.com/watch?v=8z0f5mHzdPM',
    ],
    description:
        'Poha is a supremely breakfast recipe made with flat beaten rice, every household has their own version of making poha. Batata poha can be quickly made and can be served on any occasion. If you have guests popping up suddenly, you can definitely make poha in a jiffy. Method of cooking is also very simple. Maharashtrian style batata poha and Gujarati style bateta poha can be also served as an evening tea snack.',
    course: Course.BREAKFAST,
    cuisine: [Cuisine.GUJARATI],
    servings: 2,
    preparationTime: Duration(minutes: 10),
    cookingTime: Duration(minutes: 10),
    ingredients: [
      Ingredient(
        name: 'Jada Poha',
        imagePath:
            'https://image.shutterstock.com/image-photo/flattened-rice-beaten-very-common-260nw-1773527069.jpg',
        description:
            'Flattened rice is rice which is flattened into flat, light, dry flakes originating from the Indian subcontinent. Rice is parboiled before flattening so that it can be consumed with very little to no cooking.',
        howMuchType: HowMuchType.CUPS,
        howMuch: 2,
      ),
      Ingredient(
        name: 'Oil',
        imagePath:
            'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/324844_2200-732x549.jpg',
        description:
            'An oil is any nonpolar chemical substance that is a viscous liquid at ambient temperatures and is both hydrophobic (does not mix with water, literally "water fearing") and lipophilic (mixes with other oils, literally "fat loving").',
        howMuchType: HowMuchType.TBSP,
        howMuch: 2,
      ),
      Ingredient(
        name: 'Mustrad Seeds (Rai)',
        imagePath:
            'https://farm2kitchen.com/wp-content/uploads/2019/11/Black-Mustard-Seed-Farm2Kitchen.jpg',
        description:
            'Mustard seeds are the small round seeds of various mustard plants. The seeds are usually about 1 to 2 millimetres in diameter and may be colored from yellowish white to black.',
        howMuchType: HowMuchType.TBSP,
        howMuch: 0.5,
      ),
      Ingredient(
        name: 'Asafoetida (Hing)',
        imagePath:
            'https://c.files.bbci.co.uk/1833A/production/_115003199_gettyimages-860778428.jpg',
        description:
            'Asafoetida is the dried latex exuded from the rhizome or tap root of several species of Ferula, perennial herbs growing 1 to 1.5 m tall. They are part of the celery family, Umbelliferae.',
        howMuchType: HowMuchType.TBSP,
        howMuch: 2,
      ),
      Ingredient(
        name: 'Fine Chopped Onions',
        imagePath:
            'https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/BA9EFA4B-7A77-4D4E-86CC-C24D2BA4576B/Derivates/E91554A0-EEFC-4B7F-A6F6-F05B1E7DB2D8.jpg',
        description:
            'The onion, also known as the bulb onion or common onion, is a vegetable that is the most widely cultivated species of the genus Allium. Its close relatives include the garlic, scallion, shallot, leek, chive, and Chinese onion.',
        howMuchType: HowMuchType.CUPS,
        howMuch: 0.5,
      ),
      Ingredient(
        name: 'Peeled Potato Cubes',
        imagePath:
            'https://www.tarladalal.com/glossary/ing/Boiled_potato_cubes_DSC4611-(1).jpg',
        description:
            'The potato is a root vegetable native to the Americas, a starchy tuber of the plant Solanum tuberosum, and the plant itself is a perennial in the nightshade family, Solanaceae. Wild potato species, originating in modern-day Peru, can be found throughout the Americas, from the United States to southern Chile.',
        howMuchType: HowMuchType.CUPS,
        howMuch: 0.5,
      ),
      Ingredient(
        name: 'Turmeric Powder',
        imagePath:
            'https://c.ndtvimg.com/2018-10/0h5p521_turmeric-650_625x300_16_October_18.jpg',
        description:
            'Turmeric is the spice that gives curry its yellow color. It has been used in India for thousands of years as a spice and medicinal herb. Recently, science has started to back up what Indians have known for a long time — it really does contain compounds with medicinal properties',
        howMuchType: HowMuchType.TBSP,
        howMuch: 3 / 4,
      ),
      Ingredient(
        name: 'Ginger green chilli paste',
        imagePath:
            'https://www.viniscookbook.com/wp-content/uploads/2018/11/20181122_103712.jpg',
        description:
            'With busy morning schedule we hardly get time to manage breakfast. With this if we have ginger and green chilly paste ready then it gets little time saving. Ginger and green chilly paste can be prepared very easily.',
        howMuchType: HowMuchType.TBSP,
        howMuch: 1,
      ),
      Ingredient(
        name: 'Sugar',
        imagePath:
            'https://cdn.britannica.com/47/192347-050-7BAEDF24/types-sugar-brown.jpg',
        description:
            'Sugar is the generic name for sweet-tasting, soluble carbohydrates, many of which are used in food. Table sugar, granulated sugar, or regular sugar, refers to sucrose, a disaccharide composed of glucose and fructose. Simple sugars, also called monosaccharides, include glucose, fructose, and galactose.',
        howMuchType: HowMuchType.TBSP,
        howMuch: 1,
      ),
      Ingredient(
        name: 'Lemon Juice',
        imagePath: 'https://static.toiimg.com/photo/68215164.cms',
        description:
            'Lemon juice is a rich source of beneficial phytochemicals and has multiple health-promoting effects. Research has found several potential health benefits to drinking lemon juice: Antibacterial Effects. Lemon juice has antibacterial and antifungal properties.',
        howMuchType: HowMuchType.TBSP,
        howMuch: 2,
      ),
      Ingredient(
        name: 'Milk',
        imagePath:
            'https://static.toiimg.com/photo/msid-70139351/70139351.jpg?792974',
        description:
            'Milk is a nutrient-rich liquid food produced by the mammary glands of mammals. It is the primary source of nutrition for young mammals, including breastfed human infants before they are able to digest solid food.',
        howMuchType: HowMuchType.TBSP,
        howMuch: 1,
      ),
      Ingredient(
        name: 'Chopped Coriander (Dhania)',
        imagePath:
            'https://feelgoodfoodie.net/wp-content/uploads/2020/05/how-to-cut-cilantro-7-500x375.jpg',
        description:
            'Coriander is an annual herb in the family Apiaceae. It is also known as Chinese parsley, dhania or cilantro. All parts of the plant are edible, but the fresh leaves and the dried seeds are the parts most traditionally used in cooking.',
        howMuchType: HowMuchType.TBSP,
        howMuch: 1,
      ),
    ],
    preparationSteps: [],
    cookingSteps: [
      Step(
        description:
            'To make gujarati style batata poha, heatthe oil in a deep non-stick pan and add themustard seeds.',
        imagePath: 'https://i0.wp.com/vegecravings.com/wp-content/uploads/2018/11/Indori-Poha-Recipe-Step-By-Step-Instructions.jpg?fit=3114%2C2795&quality=65&strip=all&ssl=1',
      ),
      Step(
        description:
            'When the seeds crackle, add the asafoetidaand sauté on a medium flame for a fewseconds.',
        imagePath: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3HSwjrKxYb8Njpp6UCcBRkeEys-IWLXnRSQ&usqp=CAU',
      ),
      Step(
        description:
            'Add the onions and sauté on a mediumflame for 1 to 2 minutes.',
        imagePath: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3HSwjrKxYb8Njpp6UCcBRkeEys-IWLXnRSQ&usqp=CAU',
      ),
      Step(
        description:
            'Add the potatoes, 2 tbsp of water, salt and½ tsp of turmeric powder, mix well andcook on a medium flame for 4 to 5 minutes,while stirring occasionally.',
        imagePath: 'https://static.toiimg.com/thumb/53556784.cms?imgsize=306762&width=800&height=800',
      ),
      Step(
        description:
            'Meanwhile, place the beaten rice in a sieveand hold it under running water for a fewseconds. Toss well to drain out all excesswater.',
        imagePath: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3HSwjrKxYb8Njpp6UCcBRkeEys-IWLXnRSQ&usqp=CAU',
      ),
      Step(
        description:
            'Add the washed and drained beaten rice, alittle salt, ginger-green chilli paste,remaining ¼ tsp of turmeric powder, sugar,lemon juice and milk, mix well and cook ona medium flame for 2 minutes, whilestirring occasionally.',
        imagePath: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3HSwjrKxYb8Njpp6UCcBRkeEys-IWLXnRSQ&usqp=CAU',
      ),
      Step(
        description: 'Add the coriander and mix well.',
        imagePath: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3HSwjrKxYb8Njpp6UCcBRkeEys-IWLXnRSQ&usqp=CAU',
      ),
      Step(
        description:
            'Serve the gujarati style batata poha hot garnished with coriander and lemon wedge.',
        imagePath: 'https://i.ytimg.com/vi/vDLcIE-4o4w/maxresdefault.jpg',
      ),
    ],
  ),
  Recipe(
    name: 'Aloo Paratha',
    imagePaths: [
      'https://i2.wp.com/www.vegrecipesofindia.com/wp-content/uploads/2009/08/aloo-paratha-recipe-4.jpg',
      'https://i2.wp.com/www.vegrecipesofindia.com/wp-content/uploads/2009/08/alu-paratha.jpg',
    ],
    videoPaths: [
      'https://www.youtube.com/watch?v=r2N8ObqAgy0',
    ],
    description:
        'Aloo paratha is a popular Indian breakfast of unleavened whole wheat savory and spiced potato stuffed flatbread from Punjab, India. This delicious Punjabi aloo paratha is one of the most loved breakfast at my place. One of the first recipes I learnt from my Punjabi mother-in-law and been making them for years now.',
    course: Course.BREAKFAST,
    cuisine: [Cuisine.PUNJABI],
    servings: 2,
    preparationTime: Duration(minutes: 10),
    cookingTime: Duration(minutes: 10),
    ingredients: [
      Ingredient(
        name: 'Potato',
        imagePath:
            'https://sc01.alicdn.com/kf/Ua79c936b1c564d34baeb41894d845a6dX.jpg',
        description:
            'The potato is a root vegetable native to the Americas, a starchy tuber of the plant Solanum tuberosum, and the plant itself is a perennial in the nightshade family, Solanaceae. Wild potato species, originating in modern-day Peru, can be found throughout the Americas, from the United States to southern Chile.',
        howMuchType: HowMuchType.PCS,
        howMuch: 4,
      ),
      Ingredient(
        name: 'Green Chilli',
        imagePath:
            'https://i.pinimg.com/736x/64/89/48/648948e379f4cc5bfa6b0978d9e3f690.jpg',
        description:
            'The chili pepper, from Nahuatl chīlli, is the fruit of plants from the genus Capsicum which are members of the nightshade family, Solanaceae. Chili peppers are widely used in many cuisines as a spice to add heat to dishes.',
        howMuchType: HowMuchType.CUPS,
        howMuch: 3 / 4,
      ),
      Ingredient(
        name: 'Kashmiri Red Chilli Powder',
        imagePath:
            'https://m.media-amazon.com/images/I/41+ilJ1+4EL._SX466_.jpg',
        description:
            'The chili pepper, from Nahuatl chīlli, is the fruit of plants from the genus Capsicum which are members of the nightshade family, Solanaceae. Chili peppers are widely used in many cuisines as a spice to add heat to dishes.',
        howMuchType: HowMuchType.TBSP,
        howMuch: 1 / 4,
      ),
      Ingredient(
        name: 'Amchur',
        imagePath:
            'https://static.toiimg.com/thumb/msid-65873283,imgsize-206322,width-800,height-600,resizemode-75/65873283.jpg',
        description:
            'Amchoor or aamchur or amchur, also referred to as mango powder, is a fruity spice powder made from dried unripe green mangoes and is used as a citrusy seasoning. It is mostly produced in India, and is used to flavor foods and add the nutritional benefits of mangoes when the fresh fruit is out of season.',
        howMuchType: HowMuchType.TBSP,
        howMuch: 1,
      ),
      Ingredient(
        name: 'Finely chopped coriander leaves',
        imagePath:
            'https://feelgoodfoodie.net/wp-content/uploads/2020/05/how-to-cut-cilantro-7-500x375.jpg',
        description:
            'Coriander is an annual herb in the family Apiaceae. It is also known as Chinese parsley, dhania or cilantro. All parts of the plant are edible, but the fresh leaves and the dried seeds are the parts most traditionally used in cooking.',
        howMuchType: HowMuchType.TBSP,
        howMuch: 2.5,
      ),
      Ingredient(
        name: 'Salt',
        imagePath:
            'https://resize.indiatvnews.com/en/resize/newbucket/715_-/2020/03/salt-1585304899.jpg',
        description:
            'Salt is a mineral composed primarily of sodium chloride, a chemical compound belonging to the larger class of salts; salt in its natural form as a crystalline mineral is known as rock salt or halite. Salt is present in vast quantities in seawater, where it is the main mineral constituent. ',
        howMuchType: HowMuchType.TBSP,
        howMuch: 0.5,
      ),
      Ingredient(
        name: 'Whole wheat flour',
        imagePath:
            'https://5.imimg.com/data5/DX/OU/MY-13426952/whole-wheat-flour-500x500.jpg',
        description:
            'Wheat is a grass widely cultivated for its seed, a cereal grain which is a worldwide staple food. The many species of wheat together make up the genus Triticum; the most widely grown is common wheat.',
        howMuchType: HowMuchType.CUPS,
        howMuch: 2,
      ),
      Ingredient(
        name: 'Ginger green chilli paste',
        imagePath:
            'https://www.viniscookbook.com/wp-content/uploads/2018/11/20181122_103712.jpg',
        description:
            'With busy morning schedule we hardly get time to manage breakfast. With this if we have ginger and green chilly paste ready then it gets little time saving. Ginger and green chilly paste can be prepared very easily.',
        howMuchType: HowMuchType.TBSP,
        howMuch: 1,
      ),
      Ingredient(
        name: 'White butter',
        imagePath:
            'https://c.ndtvimg.com/2019-09/j3cvh8_white-butter_625x300_27_September_19.jpg',
        description:
            'Butter is a dairy product made from the fat and protein components of milk or cream. It is a semi-solid emulsion at room temperature, consisting of approximately 80% butterfat.',
        howMuchType: HowMuchType.TBSP,
        howMuch: 1,
      ),
    ],
    preparationSteps: [],
    cookingSteps: [
      Step(
        description:
            'First boil 4 medium-sized potatoes. You can boil or steam the potatoes in a pressure cooker, steamer or electric cooker. Add enough water in a 2-litre pressure cooker or pan just about covering the potatoes.',
        imagePath:
            'https://www.viniscookbook.com/wp-content/uploads/2018/11/20181122_103712.jpg',
      ),
      Step(
        description:
            'Peel & chop the boiled warm potatoes. Then mash the potatoes with a potato masher. You can even grate and then mash the potatoes.',
        imagePath:
            'https://www.viniscookbook.com/wp-content/uploads/2018/11/20181122_103712.jpg',
      ),
      Step(
        description:
            'The potatoes should be mashed very well. There should not be any tiny bits of unmashed potatoes.',
        imagePath:
            'https://www.viniscookbook.com/wp-content/uploads/2018/11/20181122_103712.jpg',
      ),
      Step(
        description:
            'Now add the chopped green chillies (1 to 2 green chilies, chopped finely), ¼ to ½ teaspoon punjabi garam masala powder or garam masala powder, ¼ to ½ teaspoon kashmiri red chilli powder or deghi mirch (optional), ½ to 1 teaspoon amchur (dry mango powder) and salt as per taste.',
        imagePath:
            'https://www.viniscookbook.com/wp-content/uploads/2018/11/20181122_103712.jpg',
      ),
      Step(
        description:
            'With a spoon, mix the spice powders and green chilies with the mashed potatoes very well. Check the taste and add more salt or red chilli powder or dry mango powder if required.',
        imagePath:
            'https://www.viniscookbook.com/wp-content/uploads/2018/11/20181122_103712.jpg',
      ),
      Step(
        description:
            'In another bowl or pan, take 2 cups whole wheat flour. Make a well in the center. Add ½ teaspoon salt or as required, 1 tablespoon oil or ghee and some water (roughly ⅓ to ½ cup).',
        imagePath:
            'https://www.viniscookbook.com/wp-content/uploads/2018/11/20181122_103712.jpg',
      ),
      Step(
        description:
            'Bring the mixture together and knead into a smooth soft dough for 8 to 10 minutes. Add more water if required while kneading. Cover and keep the dough aside for 20 to 30 minutes.',
        imagePath:
            'https://www.viniscookbook.com/wp-content/uploads/2018/11/20181122_103712.jpg',
      ),
      Step(
        description:
            'Pinch two small balls from the dough. Flatten them and dust with whole wheat flour.',
        imagePath:
            'https://www.viniscookbook.com/wp-content/uploads/2018/11/20181122_103712.jpg',
      ),
      Step(
        description:
            'With a rolling pin, roll them into about 4 to 5 inches diameter rounds. Try making both the rounds of the same size.',
        imagePath:
            'https://www.viniscookbook.com/wp-content/uploads/2018/11/20181122_103712.jpg',
      ),
      Step(
        description:
            'On one of the rolled dough circle, place the potato stuffing in the center and keep about 1 inch empty space from the sides.',
        imagePath:
            'https://www.viniscookbook.com/wp-content/uploads/2018/11/20181122_103712.jpg',
      ),
      Step(
        description: 'Gently place the second circle on top.',
        imagePath:
            'https://www.viniscookbook.com/wp-content/uploads/2018/11/20181122_103712.jpg',
      ),
      Step(
        description:
            'Press and seal the edges with your fingertips. If you are not able to seal the edges, then brush or spread some water on the edges of the two rounds and then seal.',
        imagePath:
            'https://www.viniscookbook.com/wp-content/uploads/2018/11/20181122_103712.jpg',
      ),
      Step(
        description:
            'Dust some flour on the stuffed paratha and start rolling the aloo paratha.',
        imagePath:
            'https://www.viniscookbook.com/wp-content/uploads/2018/11/20181122_103712.jpg',
      ),
      Step(
        description:
            'Roll the paratha into a round of about 7 to 8 inches in diameter or about the size of a normal roti or chapati.',
        imagePath:
            'https://www.viniscookbook.com/wp-content/uploads/2018/11/20181122_103712.jpg',
      ),
      Step(
        description:
            'You can also serve the aloo paratha directly from the tawa (skillet) straight in the serving plate. Serve some extra butter on the side, along with mango pickle or lemon pickle or dal makhani or some fresh curd (yogurt).',
        imagePath:
            'https://www.viniscookbook.com/wp-content/uploads/2018/11/20181122_103712.jpg',
      ),
    ],
  ),
  Recipe(
    name: 'Idli',
    imagePaths: [
      'https://i2.wp.com/www.vegrecipesofindia.com/wp-content/uploads/2012/04/idli-recipe-1.jpg',
      'https://i2.wp.com/www.vegrecipesofindia.com/wp-content/uploads/2012/04/idli-sambar.jpg',
    ],
    videoPaths: [
      'blob:https://www.vegrecipesofindia.com/a388d202-fd17-47d0-98e2-20cbd7c99bce',
    ],
    description:
        'Idli is a soft, pillowy steamed savory cake made from rice and lentil batter. The lentils used in making idli are urad dal (black gram). Idli is a traditional breakfast made in every South Indian household including mine. Idli is popular not only in the whole of India but outside India too. Idli is a naturally vegetarian, vegan, gluten free and makes for one of the healthiest breakfast.',
    course: Course.BREAKFAST,
    cuisine: [Cuisine.SOUTH_INDIAN],
    servings: 2,
    preparationTime: Duration(hours: 9),
    cookingTime: Duration(minutes: 25),
    ingredients: [
      Ingredient(
        name: 'Regular rice',
        imagePath:
            'https://5.imimg.com/data5/TF/SD/BY/SELLER-75018245/rice-regular-500x500.png',
        description:
            'Rice is the seed of the grass species Oryza glaberrima or Oryza sativa. As a cereal grain, it is the most widely consumed staple food for a large part of the world\'s human population, especially in Asia and Africa. It is the agricultural commodity with the third-highest worldwide production, after sugarcane and maize.',
        howMuchType: HowMuchType.CUPS,
        howMuch: 1,
      ),
      Ingredient(
        name: 'Split Urad dal',
        imagePath:
            'https://5.imimg.com/data5/SX/WQ/MY-21189722/split-urad-dal-500x500.jpg',
        description:
            'Vigna mungo, the black gram, urad bean, ulundu paruppu, minapa pappu, mungo bean or black matpe bean is a bean grown in the South Asia. Like its relative, the mung bean, it has been reclassified from the Phaseolus to the Vigna genus.',
        howMuchType: HowMuchType.GRAM,
        howMuch: 120,
      ),
      Ingredient(
        name: 'Thick poha',
        imagePath:
            'https://4.imimg.com/data4/HA/NP/MY-4071366/poha-rice-flakes-500x500.jpg',
        description:
            'Flattened rice is rice which is flattened into flat, light, dry flakes originating from the Indian subcontinent. Rice is parboiled before flattening so that it can be consumed with very little to no cooking.',
        howMuchType: HowMuchType.CUPS,
        howMuch: 1 / 4,
      ),
      Ingredient(
        name: 'Fenugreek seeds',
        imagePath:
            'https://post.healthline.com/wp-content/uploads/sites/3/2020/02/324334_2200-732x549.jpg',
        description:
            'Fenugreek is an annual plant in the family Fabaceae, with leaves consisting of three small obovate to oblong leaflets. It is cultivated worldwide as a semiarid crop. Its seeds and leaves are common ingredients in dishes from the Indian subcontinent where it is called methi.',
        howMuchType: HowMuchType.TBSP,
        howMuch: 1 / 4,
      ),
      Ingredient(
        name: 'Water',
        imagePath:
            'https://cdn-a.william-reed.com/var/wrbm_gb_food_pharma/storage/images/publications/cosmetics/cosmeticsdesign.com/article/2019/12/03/how-to-get-water-reduction-formulation-right/10431162-1-eng-GB/How-to-get-water-reduction-formulation-right_wrbm_large.jpg',
        description:
            'Water is an inorganic, transparent, tasteless, odorless, and nearly colorless chemical substance, which is the main constituent of Earth\'s hydrosphere and the fluids of all known living organisms. It is vital for all known forms of life, even though it provides no calories or organic nutrients.',
        howMuchType: HowMuchType.CUPS,
        howMuch: 2,
      ),
      Ingredient(
        name: 'Rock salt',
        imagePath:
            'https://cdn.shopify.com/s/files/1/0365/8229/3548/products/Pink-Himalayan-Salt-736_736x.jpg?v=1587107860',
        description:
            'Salt is a mineral composed primarily of sodium chloride, a chemical compound belonging to the larger class of salts; salt in its natural form as a crystalline mineral is known as rock salt or halite. Salt is present in vast quantities in seawater, where it is the main mineral constituent.',
        howMuchType: HowMuchType.TBSP,
        howMuch: 1,
      ),
    ],
    preparationSteps: [],
    cookingSteps: [
      Step(
        description: 'Pick and rinse both the regular rice and parboiled rice.',
        imagePath:
            'https://i2.wp.com/www.vegrecipesofindia.com/wp-content/uploads/2012/04/idli-sambar.jpg',
      ),
      Step(
        description: 'Rinse the poha and add to the rice.',
        imagePath:
            'https://i2.wp.com/www.vegrecipesofindia.com/wp-content/uploads/2012/04/idli-sambar.jpg',
      ),
      Step(
        description:
            'Add water. Mix well. Cover and keep the rice + poha to soak for 4 to 5 hours.',
        imagePath:
            'https://i2.wp.com/www.vegrecipesofindia.com/wp-content/uploads/2012/04/idli-sambar.jpg',
      ),
      Step(
        description:
            'In a separate bowl, rinse the urad dal and methi seeds a couple of times.',
        imagePath:
            'https://i2.wp.com/www.vegrecipesofindia.com/wp-content/uploads/2012/04/idli-sambar.jpg',
      ),
      Step(
        description:
            'Soak the urad dal with methi seeds separately in water for 4 to 5 hours. Drain the soaked urad dal. Reserve the water.',
        imagePath:
            'https://i2.wp.com/www.vegrecipesofindia.com/wp-content/uploads/2012/04/idli-sambar.jpg',
      ),
      Step(
        description:
            'Grind the urad dal, methi seed with ¼ cup of the reserved water for some seconds. Then add remaining ¼ cup water. Grind till you get a smooth and fluffy batter.',
        imagePath:
            'https://i2.wp.com/www.vegrecipesofindia.com/wp-content/uploads/2012/04/idli-sambar.jpg',
      ),
      Step(
        description:
            'Remaining batter can be stored in the refrigerator for a couple of days.',
        imagePath:
            'https://i2.wp.com/www.vegrecipesofindia.com/wp-content/uploads/2012/04/idli-sambar.jpg',
      ),
    ],
  ),
];
