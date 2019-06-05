library lorem_cutesum;

import 'dart:math';

/// A class for obtaining cute baby animal image url strings and lorem ipsum styled filler text
class Cutesum {
  /// Static list of image URL Strings
  static List<String> _imageUrlList = [
    'https://cdn.pixabay.com/photo/2018/03/28/13/31/mammal-3269279_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/11/04/14/54/bouquet-of-baby-2917747_960_720.jpg',
    'https://cdn.pixabay.com/photo/2015/08/17/16/24/animals-892664_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/07/13/16/10/cute-2500929_960_720.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/5/5f/He%27s_so_cute_-_geograph.org.uk_-_1516380.jpg',
    'https://cdn.pixabay.com/photo/2015/05/29/13/20/meerkat-789260_960_720.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Baby_fur_seal%2C_South_Georgia.jpg/1024px-Baby_fur_seal%2C_South_Georgia.jpg',
    'https://cdn.pixabay.com/photo/2017/07/07/21/05/kitten-2482743_960_720.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/e/ee/Baby_Cuttlefish2_%285589806913%29.jpg',
    'https://cdn.pixabay.com/photo/2018/10/09/18/21/kitten-3735600_960_720.jpg',
    'https://cdn.pixabay.com/photo/2018/01/25/16/07/cute-3106473_960_720.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/4/49/Sleepy_Kit_%286969930840%29.jpg',
    'https://cdn.pixabay.com/photo/2018/10/01/13/32/rabbit-3716254_960_720.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Exploring_Looking_Cute_%28140474085%29.jpeg/1024px-Exploring_Looking_Cute_%28140474085%29.jpeg',
    'https://cdn.pixabay.com/photo/2019/04/11/10/24/elephant-4119355_960_720.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Cute_Piglet.jpg/511px-Cute_Piglet.jpg',
    'https://cdn.pixabay.com/photo/2014/04/05/11/40/puppy-316670_960_720.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/9/9c/B%C3%A9b%C3%A9_Phoque_de_Weddell_-_Baby_Weddell_Seal.jpg',
    'https://cdn.pixabay.com/photo/2017/01/21/03/11/monkey-1996342_960_720.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Cute_deer_fawn.jpg/1024px-Cute_deer_fawn.jpg',
    'https://cdn.pixabay.com/photo/2019/04/17/10/29/cat-4133846_960_720.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/0/02/Cute_or_What_-_geograph.org.uk_-_511845.jpg',
    'https://cdn.pixabay.com/photo/2017/03/18/13/33/cat-2153990_960_720.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Keqs_young_european_hedgehog1.jpg/1024px-Keqs_young_european_hedgehog1.jpg',
    'https://cdn.pixabay.com/photo/2019/02/14/01/35/orangutan-3995717_960_720.jpg',
    'https://cdn.pixabay.com/photo/2018/04/04/19/15/cat-3290729_960_720.jpg',
    'https://cdn.pixabay.com/photo/2018/05/05/02/11/cute-3375522_960_720.jpg',
    'https://cdn.pixabay.com/photo/2015/11/22/19/32/raccoon-1056831_960_720.jpg',
    'https://cdn.pixabay.com/photo/2018/11/16/21/04/newborn-3820216_960_720.jpg',
    'https://cdn.pixabay.com/photo/2018/11/19/05/53/animal-3824672_960_720.jpg',
    'https://cdn.pixabay.com/photo/2018/12/04/13/58/fox-3855646_960_720.jpg',
    'https://cdn.pixabay.com/photo/2015/08/30/04/58/chick-913804_960_720.jpg',
    'https://cdn.pixabay.com/photo/2014/08/27/12/57/penguin-429125_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/06/14/22/15/goat-2403566_960_720.jpg',
    'https://cdn.pixabay.com/photo/2016/03/11/10/24/baby-squirrel-1250046_960_720.jpg',
    'https://cdn.pixabay.com/photo/2016/04/05/10/31/guinea-pig-1309129_960_720.jpg',
    'https://cdn.pixabay.com/photo/2012/12/24/08/39/rabbit-72192_960_720.jpg',
    'https://cdn.pixabay.com/photo/2016/03/29/22/26/mouse-1289577_960_720.jpg',
    'https://cdn.pixabay.com/photo/2012/12/21/10/06/kitten-71514_960_720.jpg',
    'https://cdn.pixabay.com/photo/2016/12/13/05/15/puppy-1903313_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/10/05/10/26/lion-cub-2818957_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/06/28/18/55/kitten-2451804_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/09/11/17/58/mouse-2739835_960_720.jpg',
    'https://cdn.pixabay.com/photo/2019/04/17/10/29/cat-4133846_960_720.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Haliaeetus_leucocephalus1.jpg/1024px-Haliaeetus_leucocephalus1.jpg',
    'https://cdn.pixabay.com/photo/2019/02/10/01/53/pig-3986310_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/02/23/10/49/dog-2091849_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/11/13/14/49/chihuahua-2945855_960_720.jpg',
    'https://cdn.pixabay.com/photo/2018/08/28/22/30/baby-3638732_960_720.jpg',
    'https://cdn.pixabay.com/photo/2014/01/24/03/15/wombat-250858_960_720.jpg',
    'https://cdn.pixabay.com/photo/2013/10/29/13/32/goats-202362_960_720.jpg',
    'https://cdn.pixabay.com/photo/2016/01/19/17/38/kangaroo-1149807_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/08/29/11/29/guinea-pig-912988_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/11/23/14/22/animal-1853178_1280.jpg',
    'https://cdn.pixabay.com/photo/2013/02/21/19/13/agriculture-84702_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/05/26/13/58/kid-4230380_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/12/26/21/27/mammal-3041446_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/10/05/18/03/cat-1717252_1280.jpg',
    'https://cdn.pixabay.com/photo/2018/04/01/15/28/cute-3281232_1280.jpg',
    'https://cdn.pixabay.com/photo/2018/07/13/09/59/cat-3535364_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/12/18/15/05/rabbit-1915918_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/09/19/03/41/chick-946790_1280.jpg',
    'https://cdn.pixabay.com/photo/2014/12/03/05/48/dog-555067_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/01/01/22/04/crawl-1945632_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/08/08/03/16/puppy-1577613_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/06/20/19/39/wild-pigs-2424438_1280.jpg',
    'https://cdn.pixabay.com/photo/2014/08/03/00/51/cat-408801_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/11/14/13/08/kitten-2948405_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/02/02/09/52/meerkat-1175002_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/07/21/07/28/alpaca-1531980_1280.jpg',
    'https://cdn.pixabay.com/photo/2018/04/20/09/38/animal-3335551_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/07/17/13/55/guinea-pig-849278_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/03/27/14/46/animal-2179166_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/11/06/16/36/hamster-1803421_1280.jpg',
    'https://cdn.pixabay.com/photo/2018/04/30/18/08/sheep-3363497_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/10/26/19/49/cat-2892258_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/07/19/22/31/alpaca-2520639_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/03/05/20/13/baby-cat-2119743_1280.jpg',
    'https://cdn.pixabay.com/photo/2018/05/04/23/23/sheep-3375322_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/11/27/06/11/baboon-baby-1065006_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/07/31/21/53/westie-1560055_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/07/22/15/22/cat-2528943_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/07/13/16/07/monkey-2500920_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/04/19/21/48/bouquet-4140550_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/12/06/14/47/guinea-pig-1079541_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/08/27/15/17/black-nosed-sheep-2686385_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/07/17/14/36/meerkat-2512557_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/03/20/02/15/monkey-681668_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/12/01/19/57/dog-1876045_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/02/20/19/12/foal-4009829_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/09/09/15/59/animal-931698_1280.jpg',
    'https://cdn.pixabay.com/photo/2018/03/28/13/31/mammal-3269279_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/07/18/17/11/guinea-pig-850563_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/09/22/02/50/chick-2774310_1280.jpg',
    'https://cdn.pixabay.com/photo/2018/07/22/19/19/duckling-3555317_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/03/20/12/22/kid-1268524_1280.jpg',
    'https://cdn.pixabay.com/photo/2018/02/26/18/03/cute-3183637_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/09/05/21/43/beef-2719256_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/04/07/20/06/sheep-1314614_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/03/19/00/38/gosling-4064496_1280.jpg',
  ];

  /// Static list of animal baby name Strings
  static List<String> _animalBabyNameList = [
    'pup',
    'kitten',
    'piglet',
    'shoat',
    'farrow',
    'cub',
    'calf',
    'caterpillar',
    'larva',
    'pupa',
    'chick',
    'pullet',
    'nymph',
    'codling',
    'hake',
    'sprag',
    'sprat',
    'chick',
    'duckling',
    'whelp',
    'hatchling',
    'colt',
    'foal',
    'fledgling',
    'eaglet',
    'puggle',
    'kit',
    'fingerling',
    'billy',
    'leveret',
    'eyas',
    'ephyna',
    'joey',
    'pinkie',
  ];

  /// Static function which returns a randomly selected image URL String
  static String randomImageUrl() {
    return _imageUrlList[Random().nextInt(_imageUrlList.length)];
  }

  /// Static function which returns a formatted String of randomly selected animal baby names
  static String loremCutesum({int words = 10}) {
    String result = "";
    int count = 0;
    if (words < 1) {
      return result;
    }
    while (count < words) {
      result +=
          "${_animalBabyNameList[Random().nextInt(_animalBabyNameList.length)]} ";
      count++;
    }
    return result.substring(0, 1).toUpperCase() +
        result.substring(1, result.length - 1) +
        '.';
  }
}
