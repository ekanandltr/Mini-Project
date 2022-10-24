enum Category { CAT, DOG, BUNNY, HAMSTER }
enum Condition { Adoption, Disappear, Mating }

class Pet {

  String name;
  String location;
  String distance;
  Category category;
  String imageUrl;
  bool favorite;
  bool newest;

  Pet(this.name, this.location, this.distance, this.category, this.imageUrl, this.favorite, this.newest);

}

List<Pet> getPetList(){
  return <Pet>[
    Pet("Abyssinian Cats", "Surabaya", "2.5", Category.CAT, "assets/images/cats/cat_1.jpg", true, true),
    Pet("Scottish Fold", "Surabaya", "1.2", Category.CAT, "assets/images/cats/cat_2.jpg", false, false),
    Pet("Ragdoll", "Surabaya", "1.2", Category.CAT, "assets/images/cats/cat_3.jpg", false, false),
    Pet("Burmés", "Surabaya", "1.2", Category.CAT, "assets/images/cats/cat_4.jpg", true, true),
    Pet("American Shorthair", "Sidoarjo", "1.2", Category.CAT, "assets/images/cats/cat_5.jpg", true, false),
    Pet("British Shorthair", "Sidoarjo", "1.9", Category.CAT, "assets/images/cats/cat_6.jpg", false, false),
    Pet("Abyssinian Cats", "Sidoarjo", "2.5", Category.CAT, "assets/images/cats/cat_7.jpg", true, false),
    Pet("Scottish Fold", "Sidoarjo", "1.2", Category.CAT, "assets/images/cats/cat_8.jpg", false, false),
    Pet("Ragdoll", "Sidoarjo", "1.2", Category.CAT, "assets/images/cats/cat_9.jpg", false, true),

    Pet("Roborowski", "Surabaya", "2.5", Category.HAMSTER, "assets/images/hamsters/hamster_1.jpg", true, true),
    Pet("Ruso", "Surabaya", "2.5", Category.HAMSTER, "assets/images/hamsters/hamster_2.jpg", false, false),
    Pet("Golden", "Surabaya", "2.5", Category.HAMSTER, "assets/images/hamsters/hamster_3.jpg", false, false),
    Pet("Chinese", "Surabaya", "2.5", Category.HAMSTER, "assets/images/hamsters/hamster_4.jpg", true, true),
    Pet("Dwarf Campbell", "Sidoarjo", "2.5", Category.HAMSTER, "assets/images/hamsters/hamster_5.jpg", true, false),
    Pet("Syrian", "Sidoarjo", "2.5", Category.HAMSTER, "assets/images/hamsters/hamster_6.jpg", false, false),
    Pet("Dwarf Winter", "Sidoarjo", "2.5", Category.HAMSTER, "assets/images/hamsters/hamster_7.jpg", true, false),

    Pet("American Rabbit", "Surabaya", "2.5", Category.BUNNY, "assets/images/bunnies/bunny_1.jpg", true, true),
    Pet("Belgian Hare Rabbit", "Surabaya", "2.5", Category.BUNNY, "assets/images/bunnies/bunny_2.jpg", false, false),
    Pet("Blanc de Hotot", "Surabaya", "2.5", Category.BUNNY, "assets/images/bunnies/bunny_3.jpg", false, false),
    Pet("Californian Rabbits", "Surabaya", "2.5", Category.BUNNY, "assets/images/bunnies/bunny_4.jpg", true, true),
    Pet("Checkered Giant Rabbit", "Sidoarjo", "2.5", Category.BUNNY, "assets/images/bunnies/bunny_5.jpg", true, false),
    Pet("Dutch Rabbit", "Sidoarjo", "2.5", Category.BUNNY, "assets/images/bunnies/bunny_6.jpg", false, false),
    Pet("English Lop", "Sidoarjo", "2.5", Category.BUNNY, "assets/images/bunnies/bunny_7.jpg", true, false),
    Pet("English Spot", "Sidoarjo", "2.5", Category.BUNNY, "assets/images/bunnies/bunny_8.jpg", true, true),

    Pet("Affenpinscher", "Surabaya", "2.5", Category.DOG, "assets/images/dogs/dog_1.jpg", true, true),
    Pet("Akita Shepherd", "Surabaya", "2.5", Category.DOG, "assets/images/dogs/dog_2.jpg", false, false),
    Pet("American Foxhound", "Surabaya", "2.5", Category.DOG, "assets/images/dogs/dog_3.jpg", false, false),
    Pet("Shepherd Dog", "Surabaya", "2.5", Category.DOG, "assets/images/dogs/dog_4.jpg", true, true),
    Pet("Australian Terrier", "Sidoarjo", "2.5", Category.DOG, "assets/images/dogs/dog_5.jpg", true, false),
    Pet("Bearded Collie", "Sidoarjo", "2.5", Category.DOG, "assets/images/dogs/dog_6.jpg", false, false),
    Pet("Belgian Sheepdog", "Sidoarjo", "2.5", Category.DOG, "assets/images/dogs/dog_7.jpg", true, false),
    Pet("Bloodhound", "Sidoarjo", "2.5", Category.DOG, "assets/images/dogs/dog_8.jpg", true, true),
    Pet("Boston Terrier", "Sidoarjo", "2.5", Category.DOG, "assets/images/dogs/dog_9.jpg", true, true),
    Pet("Chinese Shar-Pei", "Sidoarjo", "2.5", Category.DOG, "assets/images/dogs/dog_10.jpg", false, false),
    Pet("Border Collie", "Sidoarjo", "2.5", Category.DOG, "assets/images/dogs/dog_11.jpg", false, false),
    Pet("Chow Chow", "Sidoarjo", "2.5", Category.DOG, "assets/images/dogs/dog_12.jpg", true, true),
  ];
}