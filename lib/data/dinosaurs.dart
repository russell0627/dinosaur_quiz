import 'package:flutter/material.dart';
import '../models/dinosaur.dart';
// There are 56 dinosaurs

const Map<String, Dinosaur> dinosaurs = {
  "aardonyx": Dinosaur(
    name: "Aardonyx",
    suborder: Suborder.sauropod,
    diet: Diet.herbivore,
    timePeriod: TimePeriod.jurassic,
    imageFileName: "aardonyx.jpg",
  ),
  "abelisaurus": Dinosaur(
    name: "Abelisaurus",
    suborder: Suborder.theropod,
    diet: Diet.carnivore,
    timePeriod: TimePeriod.cretaceous,
    imageFileName: "abelisaurus.jpg",
  ),
  "achillobator" : Dinosaur(name:"Achillobator", suborder: Suborder.theropod, diet: Diet.carnivore, timePeriod: TimePeriod.cretaceous, imageFileName: "achillobator"),
  "achelosaurus": Dinosaur(
    name: "Achelosaurus",
    suborder: Suborder.theropod,
    diet: Diet.herbivore,
    timePeriod: TimePeriod.cretaceous,
    imageFileName: "achelosaurus.jpg",
  ),
  "acrocanthosaurus": Dinosaur(
      name: "Acrocanthosaurus",
      suborder: Suborder.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "acrocanthosaurus.jpg"),
  "aegyptosaurus": Dinosaur(
      name: "Acrocanthosaurus",
      suborder: Suborder.sauropod,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "aegyptosaurus.jpg"),
  "ankylosaurus": Dinosaur(
      name: "Ankylosaurus",
      suborder: Suborder.ankylosaur,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "ankylosaurus.jpg"),
  "allosaurus": Dinosaur(
      name: "Allosaurus",
      suborder: Suborder.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.jurassic,
      imageFileName: "allosaurus.jpg"),
  "albertaceratops": Dinosaur(
      name: "Albertaceratops",
      suborder: Suborder.ceratopsian,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "albertaceratops.jpg"),
  "apatosaurus": Dinosaur(
      name: "Apatosaurus",
      suborder: Suborder.sauropod,
      diet: Diet.herbivore,
      imageFileName: "apatosaurus.jpg",
      timePeriod: TimePeriod.jurassic),
  "amargasaurus": Dinosaur(
      name: "Amargasaurus",
      suborder: Suborder.sauropod,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "amargasaurus.jpg"),
  "ampelosaurus": Dinosaur(
    name: "Ampelosaurus",
    suborder: Suborder.sauropod,
    diet: Diet.herbivore,
    timePeriod: TimePeriod.cretaceous,
    imageFileName: "ampelosaurus.jpg",
  ),
  "archaeopteryx": Dinosaur(
      name: "Archaeopteryx",
      suborder: Suborder.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.jurassic,
      imageFileName: "archaeopteryx.jpg"),
  "argentinosaurus": Dinosaur(
      name: "Argentinosaurus",
      suborder: Suborder.sauropod,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "argentinosaurus.jpg"),
  "bagaceratops": Dinosaur(
      name: "Bagaceratops",
      suborder: Suborder.ceratopsian,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "bagaceratops.jfif"),
  "baryonyx": Dinosaur(
      name: "Baryonyx",
      suborder: Suborder.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "baryonyx.jpg"),
  "brachiosaurus": Dinosaur(
      name: "Brachiosaurus",
      suborder: Suborder.sauropod,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.jurassic,
      imageFileName: "brachiosaurus.jpg"),
  "cedarpelta": Dinosaur(
      name: "Cedarpelta",
      suborder: Suborder.ankylosaur,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "cedarpelta.jpg"),
  "chasmosaurus": Dinosaur(
      name: "Chasmosaurus",
      suborder: Suborder.ceratopsian,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "chasmosaurus.jpg"),
  "ceratosaurus": Dinosaur(
      name: "Ceratosaurus",
      suborder: Suborder.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.jurassic,
      imageFileName: "ceratosaurus.jpg"),
  "citipati": Dinosaur(
      name: "Citipati",
      suborder: Suborder.theropod,
      diet: Diet.omnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "citipati.jpg"),
  "coelophysis": Dinosaur(
      name: "Coelophysis",
      suborder: Suborder.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.triassic,
      imageFileName: "coelophysis.jpg"),
  "centrosaurus": Dinosaur(
      name: "Centrosaurus",
      suborder: Suborder.ceratopsian,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "centrosaurus.jpg"),
  "camarasaurus": Dinosaur(
      name: "Camarasaurus",
      suborder: Suborder.sauropod,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.jurassic,
      imageFileName: "camarasaurus.jpg"),
  "camptosaurus": Dinosaur(
      name: "Camptosaurus",
      suborder: Suborder.ornithopod,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.jurassic,
      imageFileName: "camptosaurus.jpg"),
  "carnotaurus": Dinosaur(
      name: "Carnotaurus",
      suborder: Suborder.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "carnotaurus.jpg"),
  "compsognathus": Dinosaur(
      name: "Compsognathus",
      suborder: Suborder.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.jurassic,
      imageFileName: "compsognathus.jpg"),
  "corythosaurus": Dinosaur(
      name: "Corythosaurus",
      suborder: Suborder.ornithopod,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "corythosaurus.jpg"),
  "deinoychus": Dinosaur(
      name: "Deinoychus",
      suborder: Suborder.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "deinoychus.jpg"),
  "dilophosaurus": Dinosaur(
      name: "Dilophosaurus",
      suborder: Suborder.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.jurassic,
      imageFileName: "dilophosaurus.jpg"),
  "diplodocus": Dinosaur(
      name: "Diplodocus",
      suborder: Suborder.sauropod,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.jurassic,
      imageFileName: "diplodocus.jpg"),
  "europasaurus": Dinosaur(
      name: "Europasaurus",
      suborder: Suborder.sauropod,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.jurassic,
      imageFileName: "europasaurus.jpg"),
  "gallimimus": Dinosaur(
      name: "Gallimimus",
      suborder: Suborder.theropod,
      diet: Diet.omnivore,
      timePeriod: TimePeriod.jurassic,
      imageFileName: "gallimimus.jpg"),
  "giganotosaurus": Dinosaur(
      name: "Giganotosaurus",
      suborder: Suborder.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "giganotosaurus.jpg"),
  "herrerasaurus": Dinosaur(
      name: "Herrerasaurus",
      suborder: Suborder.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.triassic,
      imageFileName: "herrerasaurus.jpg"),
  "iguanodon": Dinosaur(
      name: "Iguanodon",
      suborder: Suborder.ornithopod,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "iguanodon.jpg"),
  "kentrosaurus": Dinosaur(
      name: "Kentrosaurus",
      suborder: Suborder.stegosaur,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.jurassic,
      imageFileName: "kentrosaurus.jpg"),
  "mamenchisaurus": Dinosaur(
      name: "Mamenchisaurus",
      suborder: Suborder.sauropod,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.jurassic,
      imageFileName: "mamenchisaurus.jpg"),
  "megalosaurus": Dinosaur(
      name: "Megalosaurus",
      suborder: Suborder.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.jurassic,
      imageFileName: "megalosaurus.jpg"),
  "microraptor": Dinosaur(
      name: "Microraptor",
      suborder: Suborder.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "microraptor.jpg"),
  "miragaia": Dinosaur(
      name: "Miragaia",
      suborder: Suborder.stegosaur,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.jurassic,
      imageFileName: "miragaia.jpg"),
  "mononykus": Dinosaur(
      name: "Mononykus",
      suborder: Suborder.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "mononykus.jpg"),
  "ouranosaurus": Dinosaur(
      name: "Ouranosaurus",
      suborder: Suborder.hadrosaur,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "ouranosaurus.jpg"),
  "oviraptor": Dinosaur(
      name: "Oviraptor",
      suborder: Suborder.theropod,
      diet: Diet.omnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "oviraptor.jpg"),
  "pentaceratops": Dinosaur(
      name: "Pentaceratops",
      suborder: Suborder.ceratopsian,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "pentaceratops.jpg"),
  "pteranodon": Dinosaur(
      name: "Pteranodon",
      suborder: Suborder.pterosaur,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "pteranodon.jpg"),
  "parasaurolophus": Dinosaur(
      name: "Parasaurolophus",
      suborder: Suborder.hadrosaur,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "parasaurolophus.jpg"),
  "pachycephalosaurus": Dinosaur(
      name: "Pachycephalosaurus",
      suborder: Suborder.pachycephalosaur,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "pachycephalosaurus.jpg"),
  "plateosaurus": Dinosaur(
      name: "Plateosaurus",
      suborder: Suborder.plateosaurid,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.triassic,
      imageFileName: "plateosaurus.jpg"),
  "protoceratops": Dinosaur(
      name: "Protoceratops",
      suborder: Suborder.ceratopsian,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "protoceratops.jpg"),
  "saurolophus": Dinosaur(
      name: "Saurolophus",
      suborder: Suborder.hadrosaur,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "saurolophus.jpg"),
  "spinosaurus": Dinosaur(
      name: "Spinosaurus",
      suborder: Suborder.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "spinosaurus.jpg"),
  "stegosaurus": Dinosaur(
      name: "Stegosaurus",
      suborder: Suborder.stegosaur,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.jurassic,
      imageFileName: "stegosaurus.jpg"),
  "styracosaurus": Dinosaur(
      name: "Styracosaurus",
      suborder: Suborder.ceratopsian,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "styracosaurus.jpg"),
  "tarbosaurus": Dinosaur(
      name: "Tarbosaurus",
      suborder: Suborder.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "tarbosaurus.jpg"),
  "therizinosaurus": Dinosaur(
      name: "Therizinosaurus",
      suborder: Suborder.theropod,
      diet: Diet.omnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "therizinosaurus.jfif"),
  "torosaurus": Dinosaur(
      name: "Torosaurus",
      suborder: Suborder.ceratopsian,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "torosaurus.jpg"),
  "torvosaurus": Dinosaur(
      name: "Torvosaurus",
      suborder: Suborder.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.jurassic,
      imageFileName: "torvosaurus.jpg"),
  "triceratops": Dinosaur(
      name: "Triceratops",
      suborder: Suborder.ceratopsian,
      diet: Diet.herbivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "triceratops.jpg"),
  "tyrannosaurus": Dinosaur(
      name: "Tyrannosaurus",
      suborder: Suborder.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "tyrannosaurus.jpg"),
  "utahraptor": Dinosaur(
      name: "Utahraptor",
      suborder: Suborder.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "utahraptor.jpg"),
  "velociraptor": Dinosaur(
      name: "Velociraptor",
      suborder: Suborder.theropod,
      diet: Diet.carnivore,
      timePeriod: TimePeriod.cretaceous,
      imageFileName: "velociraptor.jpg"),
};

const Image velociraptorAndUtahraptor =
    Image(image: AssetImage("assets/images/velociraptor_and_utahraptor_and_deinoychus.jpg"));
