import 'package:flutter/material.dart';
import 'package:dinosaur_quiz/models/dinosaur.dart';

const triceratops = Dinosaur(
    name: "Triceratops",
    group: Group.ceratopsian,
    diet: Diet.herbivore,
    timePeriod: TimePeriod.cretaceous,
    imageFilename: "triceratops.jpg");
const ankylosaurus = Dinosaur(
    name: "Ankylosaurus",
    group: Group.ankylosaur,
    diet: Diet.herbivore,
    timePeriod: TimePeriod.cretaceous,
    imageFilename: "ankylosaurus.jpg");
const pteranodon = Dinosaur(
    name: "Pteranodon",
    group: Group.pterosaur,
    diet: Diet.carnivore,
    timePeriod: TimePeriod.cretaceous,
    imageFilename: "pteranodon.jpg");
const allosaurus = Dinosaur(
    name: "Allosaurus",
    group: Group.theropod,
    diet: Diet.carnivore,
    timePeriod: TimePeriod.jurassic,
    imageFilename: "allosaurus.jpg");
const albertaceratops = Dinosaur(
    name: "Albertaceratops",
    group: Group.ceratopsian,
    diet: Diet.herbivore,
    timePeriod: TimePeriod.cretaceous,
    imageFilename: "albertaceratops.jpg");
const apatosaurus = Dinosaur(
    name: "Apatosaurus",
    group: Group.sauropod,
    diet: Diet.herbivore,
    imageFilename: "apatosaurus.jpg",
    timePeriod: TimePeriod.jurassic);
const Dinosaur amargasaurus = Dinosaur(
    name: "Amargasaurus",
    group: Group.sauropod,
    diet: Diet.herbivore,
    timePeriod: TimePeriod.cretaceous,
    imageFilename: "amargasaurus.jpg");
const Dinosaur archaeopteryx = Dinosaur(
    name: "Archaeopteryx",
    group: Group.theropod,
    diet: Diet.carnivore,
    timePeriod: TimePeriod.jurassic,
    imageFilename: "archaeopteryx.jpg");
const Dinosaur argentinosaurus = Dinosaur(
    name: "Argentinosaurus",
    group: Group.sauropod,
    diet: Diet.herbivore,
    timePeriod: TimePeriod.cretaceous,
    imageFilename: "argentinosaurus.jpg");
const Dinosaur centrosaurus = Dinosaur(
    name: "Centrosaurus",
    group: Group.ceratopsian,
    diet: Diet.herbivore,
    timePeriod: TimePeriod.cretaceous,
    imageFilename: "centrosaurus.jpg");
const Dinosaur europasaurus = Dinosaur(
    name: "Europasaurus",
    group: Group.sauropod,
    diet: Diet.herbivore,
    timePeriod: TimePeriod.jurassic,
    imageFilename: "europasaurus.jpg");
const Dinosaur gallimimus = Dinosaur(
    name: "Gallimimus",
    group: Group.theropod,
    diet: Diet.herbivore,
    timePeriod: TimePeriod.jurassic,
    imageFilename: "gallimimus.jpg");
const Dinosaur mamenchisaurus = Dinosaur(
    name: "Mamenchisaurus",
    group: Group.sauropod,
    diet: Diet.herbivore,
    timePeriod: TimePeriod.jurassic,
    imageFilename: "mamenchisaurus.jpg");
const Dinosaur ouranosaurus = Dinosaur(
    name: "Ouranosaurus",
    group: Group.hadrosaur,
    diet: Diet.herbivore,
    timePeriod: TimePeriod.cretaceous,
    imageFilename: "ouranosaurus.jpg");
const Dinosaur oviraptor = Dinosaur(
    name: "oviraptor",
    group: Group.theropod,
    diet: Diet.omnivore,
    timePeriod: TimePeriod.cretaceous,
    imageFilename: "oviraptor.jpg");
const Dinosaur sauruolophus = Dinosaur(
    name: "sauruolophus",
    group: Group.hadrosaur,
    diet: Diet.herbivore,
    timePeriod: TimePeriod.cretaceous,
    imageFilename: "sauruolophus.jpg");
const Dinosaur styracosaurus = Dinosaur(
    name: "Styracosaurus",
    group: Group.ceratopsian,
    diet: Diet.herbivore,
    timePeriod: TimePeriod.cretaceous,
    imageFilename: "styracosaurus.jpg");
const Dinosaur tyrannosaurus = Dinosaur(
    name: "Tyrannosaurus",
    group: Group.theropod,
    diet: Diet.carnivore,
    timePeriod: TimePeriod.cretaceous,
    imageFilename: "tyrannosaurus.jpg");
const Dinosaur utahraptor = Dinosaur(
    name: "Utahraptor",
    group: Group.theropod,
    diet: Diet.carnivore,
    timePeriod: TimePeriod.cretaceous,
    imageFilename: "utahraptor.jpg");
const Dinosaur velociraptor = Dinosaur(
    name: "Velociraptor",
    group: Group.theropod,
    diet: Diet.carnivore,
    timePeriod: TimePeriod.cretaceous,
    imageFilename: "velociraptor.jpg");

List<Dinosaur> dinosaurs = [
  albertaceratops,
  allosaurus,
  amargasaurus,
  ankylosaurus,
  apatosaurus,
  archaeopteryx,
  argentinosaurus,
  centrosaurus,
  europasaurus,
  gallimimus,
  mamenchisaurus,
  ouranosaurus,
  oviraptor,
  pteranodon,
  sauruolophus,
  styracosaurus,
  triceratops,
  tyrannosaurus,
  utahraptor,
  velociraptor,
];

const Image velociraptorAndUtahraptor =
    Image(image: AssetImage("assets/images/velociraptor_and_utahraptor_and_deinonychus.jpg"));
