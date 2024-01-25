

import 'package:flutter/material.dart';
import 'package:material_timesheets/data/model/plant.dart';
import 'package:material_timesheets/data/model/todo.dart';

import '../data/model/comment.dart';

var dataPlant = <Plant>[
  Plant(color: Colors.purple.shade600, icon: Icons.notifications, title: "Smart Watering Reminders", body: "Receive a notification when each of your plants is ready for watering"),
  Plant(color: Colors.purple.shade400, icon: Icons.my_library_books_rounded, title: "360 Guides", body: "10+ guides for light, dertillizer propagation"),
  Plant(color: Colors.brown, icon: Icons.energy_savings_leaf, title: "Smart Fertilizer reminders", body: "Recerve a notfitication wwhen your plants are reader for a nutrient boots!"),
  Plant(color: Colors.blue.shade300, icon: Icons.water_drop, title: "Percision Watering", body: "Find out how much H2O each lant needs and never overwater again!"),
  Plant(color: Colors.green.shade700, icon: Icons.search, title: "Plant Identification", body: "Discover ther species basic needs of each plant in your collection"),
  Plant(color: Colors.yellow.shade400, icon: Icons.settings_applications_outlined, title: "Indoor Light Gauge", body: "Ensure that all your plants are getting enough sunshine to thrive"),
  Plant(color: Colors.orangeAccent, icon: Icons.energy_savings_leaf_rounded, title: "Seasonal Updates", body: "Get plants care recs that adapt as the weater in your area changes"),
  Plant(color: Colors.red.shade300, icon: Icons.hot_tub_sharp, title: "Expert Health Checks", body: "Take a photo, ask a question, and get a response in 24 hours, or less"),
];

var dataTodo = <Todo>[
  Todo(color: Colors.teal, time: "Today", title: "Get Instant Access", body: "See if your plants have all thay need to flourish"),
  Todo(color: Colors.green, time: "Day 5", title: "Trial Reminder Sent", body: "We'll ping you before the Trial ends, in case you want to cancel"),
  Todo(color: Colors.green, time: "Day 7", title: "Subscription", body: "Your subscription starts Jul 4, 2022. Let's get growing!"),
];

var dataComment = <Comment>[
  Comment(rating: 5, title: "They're ALIVE!!", body: "First time I've never killed my plan. Thank you, Greg. \n-Plant newbie"),
  Comment(rating: 5, title: "OMG!", body: 'This app is phenomenal! I am far from a bignner, having grown plants for 40 plus year, but this app will make me a better grower. Thanks, Greg, you are phenomenal! \n-Ted\'s3'),
  Comment(rating: 3, title: "There's no better plant app!!", body: 'Greg is superior to all the plant apps out there. THis is my favourite app on my phone. A must have for plant lovers!'),
  Comment(rating: 5, title: "Brilliant job.", body: 'Legit, the best plant app on the market. I\'ve been using since their launch and it truly has gotten better with every update. The information is extremely helpful and watering rhythm\'s rock \n-Gracegrows'),
];