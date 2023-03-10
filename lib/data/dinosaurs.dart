import 'package:flutter/material.dart';
import 'package:dinosaur_quiz/models/dinosaur.dart';
// There are 56 dinosaurs

const Map<String, Dinosaur> dinosaurs = {
  "Ankylosaurus": Dinosaur(
      name: "Ankylosaurus",
      group: Group.ankylosaur,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "ankylosaurus.jpg"),
  "Allosaurus": Dinosaur(
      name: "Allosaurus",
      group: Group.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.jurassic,
      imageFilename: "allosaurus.jpg"),
  "Albertaceratops": Dinosaur(
      name: "Albertaceratops",
      group: Group.ceratopsian,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "albertaceratops.jpg"),
  "Apatosaurus": Dinosaur(
      name: "Apatosaurus",
      group: Group.sauropod,
      diet: Diet.herbivore,
      imageFilename: "apatosaurus.jpg",
      timePeriod: TimePeriod.jurassic),
  "Amargasaurus": Dinosaur(
      name: "Amargasaurus",
      group: Group.sauropod,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "amargasaurus.jpg"),
  "Archaeopteryx": Dinosaur(
      name: "Archaeopteryx",
      group: Group.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.jurassic,
      imageFilename: "archaeopteryx.jpg"),
  "Argentinosaurus": Dinosaur(
      name: "Argentinosaurus",
      group: Group.sauropod,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "argentinosaurus.jpg"),
  "Centrosaurus": Dinosaur(
      name: "Centrosaurus",
      group: Group.ceratopsian,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "centrosaurus.jpg"),
  "Europasaurus": Dinosaur(
      name: "Europasaurus",
      group: Group.sauropod,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.jurassic,
      imageFilename: "europasaurus.jpg"),
  "Gallimimus": Dinosaur(
      name: "Gallimimus",
      group: Group.theropod,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.jurassic,
      imageFilename: "gallimimus.jpg"),
  "Mamenchisaurus": Dinosaur(
      name: "Mamenchisaurus",
      group: Group.sauropod,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.jurassic,
      imageFilename: "mamenchisaurus.jpg"),
  "Ouranosaurus": Dinosaur(
      name: "Ouranosaurus",
      group: Group.hadrosaur,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "ouranosaurus.jpg"),
  "Oviraptor": Dinosaur(
      name: "Oviraptor",
      group: Group.theropod,
      diet: Diet.omnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "oviraptor.jpg"),
  "Saurolophus": Dinosaur(
      name: "Saurolophus",
      group: Group.hadrosaur,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "saurolophus.jpg"),
  "Styracosaurus": Dinosaur(
      name: "Styracosaurus",
      group: Group.ceratopsian,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "styracosaurus.jpg"),
  "Tyrannosaurus": Dinosaur(
      name: "Tyrannosaurus",
      group: Group.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "tyrannosaurus.jpg"),
  "Triceratops": Dinosaur(
      name: "Triceratops",
      group: Group.ceratopsian,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "triceratops.jpg"),
  "Utahraptor": Dinosaur(
      name: "Utahraptor",
      group: Group.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "utahraptor.jpg"),
  "Velociraptor": Dinosaur(
      name: "Velociraptor",
      group: Group.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "velociraptor.jpg"),
  "Camarasaurus": Dinosaur(
      name: "Camarasaurus",
      group: Group.sauropod,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.jurassic,
      imageFilename: "camarasaurus.jpg"),
  "Camptosaurus": Dinosaur(
      name: "Camptosaurus",
      group: Group.ornithopod,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.jurassic,
      imageFilename: "camptosaurus.jpg"),
  "Carnotaurus": Dinosaur(
      name: "Carnotaurus",
      group: Group.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "carnotaurus.jpg"),
  "Compsognathus": Dinosaur(
      name: "Compsognathus",
      group: Group.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.jurassic,
      imageFilename: "compsognathus.jpg"),
  "Corythosaurus": Dinosaur(
      name: "Corythosaurus",
      group: Group.ornithopod,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "corythosaurus.jpg"),
  "Deinoychus": Dinosaur(
      name: "Deinoychus",
      group: Group.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "deinoychus.jpg"),
  "Megalosaurus": Dinosaur(
      name: "Megalosaurus",
      group: Group.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.jurassic,
      imageFilename: "megalosaurus.jpg"),
  "Microraptor": Dinosaur(
      name: "Microraptor",
      group: Group.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "microraptor.jpg"),
  "Miragaia": Dinosaur(
      name: "Miragaia",
      group: Group.stegosaur,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.jurassic,
      imageFilename: "miragaia.jpg"),
  "Mononykus": Dinosaur(
      name: "Mononykus",
      group: Group.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "mononykus.jpg"),
  "Pentaceratops": Dinosaur(
      name: "Pentaceratops",
      group: Group.ceratopsian,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "pentaceratops.jpg"),
  "Pteranodon": Dinosaur(
      name: "Pteranodon",
      group: Group.pterosaur,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "pteranodon.jpg"),
  "Spinosaurus": Dinosaur(
      name: "Spinosaurus",
      group: Group.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "spinosaurus.jpg"),
  "Tarbosaurus": Dinosaur(
      name: "Tarbosaurus",
      group: Group.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "tarbosaurus.jpg"),
  "Torvosaurus": Dinosaur(
      name: "Torvosaurus",
      group: Group.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.jurassic,
      imageFilename: "torvosaurus.jpg"),
  "Acrocanthosaurus": Dinosaur(
      name: "Acrocanthosaurus",
      group: Group.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "acrocanthosaurus.jpg"),
  "Brachiosaurus": Dinosaur(
      name: "Brachiosaurus",
      group: Group.sauropod,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.jurassic,
      imageFilename: "brachiosaurus.jpg"),
  "Ceratosaurus": Dinosaur(
      name: "Ceratosaurus",
      group: Group.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.jurassic,
      imageFilename: "ceratosaurus.jpg"),
  "Citipati": Dinosaur(
      name: "Citipati",
      group: Group.theropod,
      diet: Diet.omnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "citipati.jpg"),
  "Coelophysis": Dinosaur(
      name: "Coelophysis",
      group: Group.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.triassic,
      imageFilename: "coelophysis.jpg"),
  "Dilophosaurus": Dinosaur(
      name: "Dilophosaurus",
      group: Group.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.jurassic,
      imageFilename: "dilophosaurus.jpg"),
  "Diplodocus": Dinosaur(
      name: "Diplodocus",
      group: Group.sauropod,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.jurassic,
      imageFilename: "diplodocus.jpg"),
  "Giganotosaurus": Dinosaur(
      name: "Giganotosaurus",
      group: Group.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "giganotosaurus.jpg"),
  "Herrerasaurus": Dinosaur(
      name: "Herrerasaurus",
      group: Group.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.triassic,
      imageFilename: "herrerasaurus.jpg"),
  "Iguanodon": Dinosaur(
      name: "Iguanodon",
      group: Group.ornithopod,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "iguanodon.jpg"),
  "Kentrosaurus": Dinosaur(
      name: "Kentrosaurus",
      group: Group.stegosaur,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.jurassic,
      imageFilename: "kentrosaurus.jpg"),
  "Parasaurolophus": Dinosaur(
      name: "Parasaurolophus",
      group: Group.hadrosaur,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "parasaurolophus.jpg"),
  "Pachycephalosaurus": Dinosaur(
      name: "Pachycephalosaurus",
      group: Group.pachycephalosaur,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "pachycephalosaurus.jpg"),
  "Plateosaurus": Dinosaur(
      name: "Plateosaurus",
      group: Group.plateosaurid,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.triassic,
      imageFilename: "plateosaurus.jpg"),
  "Protoceratops": Dinosaur(
      name: "Protoceratops",
      group: Group.ceratopsian,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "protoceratops.jpg"),
  "Stegosaurus": Dinosaur(
      name: "Stegosaurus",
      group: Group.stegosaur,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.jurassic,
      imageFilename: "stegosaurus.jpg"),
  "Therizinosaurus": Dinosaur(
      name: "Therizinosaurus",
      group: Group.theropod,
      diet: Diet.omnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "therizinosaurus.jpg"),
  "Torosaurus": Dinosaur(
      name: "Torosaurus",
      group: Group.ceratopsian,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "torosaurus.jpg"),
  "Baryonyx": Dinosaur(
      name: "Baryonyx",
      group: Group.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "baryonyx.jpg"),
  "Cedarpelta": Dinosaur(
      name: "Cedarpelta",
      group: Group.ankylosaur,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "cedarpelta.jpg"),
  "Chasmosaurus": Dinosaur(
      name: "Chasmosaurus",
      group: Group.ceratopsian,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFilename: "chasmosaurus.jpg"),
  "Bagaceratops" : Dinosaur(name: "Bagaceratops", group: Group.ceratopsian, diet: Diet.herbivore, timePeriod: TimePeriod.cretaceous, imageFilename: "bagaceratops.jfif")
};

const Image velociraptorAndUtahraptor =
    Image(image: AssetImage("assets/images/velociraptor_and_utahraptor_and_deinoychus.jpg"));
