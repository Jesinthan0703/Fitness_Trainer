import 'package:flutter/foundation.dart';

class Trainer {
  final String name;
  final int age;
  final int rating;
  final String image;
  final String description;
  final String experience;
  final String number;
  final String speciality;

  const Trainer({
    @required this.name,
    @required this.age,
    @required this.rating,
    @required this.image,
    @required this.description,
    @required this.experience,
    @required this.number,
    @required this.speciality,
  });
}

class WorkoutCategory {
  final String name;
  final String image;
  final List<Trainer> trainers;

  const WorkoutCategory({
    @required this.name,
    @required this.image,
    @required this.trainers,
  });
}

class Workout {
  final String name;
  final String videos;
  final String reps;
  final String image;
  final int sets;
  final String muscleGroupTargeted;

  const Workout({
    @required this.name,
    @required this.videos,
    @required this.image,
    @required this.reps,
    @required this.sets,
    @required this.muscleGroupTargeted,
  });
}

class Videos {
  final String category;
  final String image;
  final List<Workout> workouts;

  const Videos({
    @required this.category,
    @required this.workouts,
    @required this.image,
  });
}

class LiveClass {
  final String title;
  final String image;
  final String time;
  final String instructor;
  final String channelName;
  final int participants;
  final String date;

  const LiveClass({
    @required this.title,
    @required this.image,
    @required this.time,
    @required this.instructor,
    @required this.channelName,
    @required this.participants,
    @required this.date,
  });
}

class Appoinment {
  final String addresss;
  final String date;
  final String time;
  final String user;
  const Appoinment({
    @required this.addresss,
    @required this.date,
    @required this.time,
    @required this.user,
  });
}

const List<WorkoutCategory> workOutCategoryData = const [
  WorkoutCategory(
    name: "Strength and Conditioning",
    image: "assets/images/Strength.jpg",
    trainers: strengthTrainerData,
  ),
  WorkoutCategory(
    name: "Muscle Building",
    image: "assets/images/Muscle.png",
    trainers: muscleBuildingTrainerData,
  ),
  WorkoutCategory(
    name: "Rehab",
    image: "assets/images/rehab.jpg",
    trainers: rehabBuildingTrainerData,
  ),
  WorkoutCategory(
    name: "Endurance",
    image: "assets/images/endurance.jpg",
    trainers: enduranceBuildingTrainerData,
  ),
  WorkoutCategory(
    name: "Agility",
    image: "assets/images/agility.jpg",
    trainers: agilityTrainerData,
  ),
  WorkoutCategory(
    name: "Speed",
    image: "assets/images/speed.jpg",
    trainers: speedTrainerData,
  ),
  WorkoutCategory(
    name: "Pilates",
    image: "assets/images/Pilates.jpg",
    trainers: pilatesTrainerData,
  ),
  WorkoutCategory(
    name: "Yoga",
    image: "assets/images/acro-yoga.jpg",
    trainers: yogaTrainerData,
  ),
  WorkoutCategory(
    name: "Acro Yoga",
    image: "assets/images/acro-yoga.jpg",
    trainers: acroYogaTrainerData,
  ),
  WorkoutCategory(
    name: "Aerial Yoga",
    image: "assets/images/aerial-yoga.jpg",
    trainers: aerialYogaTrainerData,
  ),
];

const List<Trainer> strengthTrainerData = const [
  Trainer(
    name: "Drake",
    age: 38,
    rating: 5,
    image: "assets/images/Drake.jpg",
    description:
        "Drake is a friendly person. He is an SCA certified trainer. He has 12 years of experience in this field and has worked with state level atheletes for 8 years",
    experience: "12 years",
    speciality: "Strength & Conditioning",
    number: "7620366323",
  ),
  Trainer(
    name: "Nathan",
    age: 42,
    rating: 5,
    image: "assets/images/Nathan.jpg",
    description:
        "Nathan is down to earth and a polite person. He is an SCA certified trainer. He has been working with tennis and badminton players for the past 9 years",
    experience: "16 years",
    speciality: "Strength & Conditioning",
    number: "8120366323",
  ),
  Trainer(
    name: "Sam",
    age: 36,
    rating: 5,
    image: "assets/images/Sam.jpg",
    description:
        "He is an NSCA certified trainer, He completed his training in USA. He has worked with several Track & Field atheletes",
    experience: "13 years",
    speciality: "Strength & Conditioning",
    number: "6230366323",
  ),
  Trainer(
    name: "Elena",
    age: 44,
    rating: 4,
    image: "assets/images/Elena.jpg",
    description:
        "She has been working with State and Zonal level Swimmers for the past 12 years. She was part of the State Swimming team for 6 years",
    experience: "18 years",
    speciality: "Strength & Conditioning",
    number: "9120323323",
  ),
  Trainer(
    name: "Alana Peirce",
    age: 33,
    rating: 5,
    image: "assets/images/Alana_Peirce.jpg",
    description:
        "She works best for both body and mind. She is a professional Skater. She has competed at state and national level",
    experience: "10 years",
    speciality: "Strength & Conditioning",
    number: "7620366323",
  ),
];

const List<Trainer> muscleBuildingTrainerData = const [
  Trainer(
    name: "Nathan",
    age: 42,
    rating: 5,
    image: "assets/images/Nathan.jpg",
    description:
        "Nathan is down to earth and a polite person. He is an SCA certified trainer. He has been working with tennis and badminton players for the past 9 years",
    experience: "16 years",
    speciality: "Muscle Building",
    number: "8120366323",
  ),
  Trainer(
    name: "Elena",
    age: 44,
    rating: 4,
    image: "assets/images/Elena.jpg",
    description:
        "She has been working with State and Zonal level Swimmers for the past 12 years. She was part of the State Swimming team for 6 years",
    experience: "18 years",
    speciality: "Muscle Building",
    number: "9120323323",
  ),
  Trainer(
    name: "The Rock",
    age: 30,
    rating: 5,
    image: "assets/images/The_Rock.jpg",
    description:
        "He is a certified body building and Gym trainer from NSB. He has 6 years of experience in training district level body builders",
    experience: "8 years",
    speciality: "Muscle Building",
    number: "7620366323",
  ),
  Trainer(
    name: "Reagan Fox",
    age: 37,
    rating: 4,
    image: "assets/images/Reagan_Fox.jpg",
    description:
        "She was a State level Body Builder for 6 years. She is a certified body building and Gym trainer from NSB. Her major focus is on beginners",
    experience: "9 years",
    speciality: "Muscle Building",
    number: "8920456327",
  ),
];
const List<Trainer> rehabBuildingTrainerData = const [
  Trainer(
    name: "Jackson",
    age: 29,
    rating: 5,
    image: "assets/images/Jackson.jpg",
    description:
        "He is a Physiotherapist and has completed courses in Rehabilitation Physiotherapy. Has worked with State level Football and Hockey team",
    experience: "5 years",
    speciality: "Rehab",
    number: "8920456327",
  ),
  Trainer(
    name: "Romio",
    age: 36,
    rating: 4,
    image: "assets/images/Romio.jpg",
    description:
        "She has a Batchelor of Science in Rehabilitation Services. She has a 8 years of working experience. She was a professional 400 and 800 meters athelete ",
    experience: "11 years",
    number: "7920456327",
    speciality: "Rehab",
  ),
];
const List<Trainer> enduranceBuildingTrainerData = const [
  Trainer(
    name: "Drake",
    age: 38,
    rating: 5,
    image: "assets/images/Drake.jpg",
    description:
        "Drake is a friendly person. He is an SCA certified trainer. He has 12 years of experience in this field and has worked with state level atheletes for 8 years",
    experience: "12 years",
    number: "7620366323",
    speciality: "Endurance",
  ),
  Trainer(
    name: "Sam",
    age: 36,
    rating: 5,
    image: "assets/images/Sam.jpg",
    description:
        "He is an NSCA certified trainer, He completed his training in USA. He has worked with several Track & Field athelets",
    experience: "13 years",
    number: "6230366323",
    speciality: "Endurance",
  ),
];
const List<Trainer> agilityTrainerData = const [
  Trainer(
    name: "Drake",
    age: 38,
    rating: 5,
    image: "assets/images/Drake.jpg",
    description:
        "Drake is a friendly person. He is an SCA certified trainer. He has 12 years of experience in this field and has worked with state level atheletes for 8 years",
    experience: "12 years",
    number: "7620366323",
    speciality: "Agility",
  ),
  Trainer(
    name: "Sam",
    age: 36,
    rating: 5,
    image: "assets/images/Sam.jpg",
    description:
        "He is an NSCA certified trainer, He completed his training in USA. He has worked with several Track & Field athelets",
    experience: "13 years",
    number: "6230366323",
    speciality: "Agility",
  ),
  Trainer(
    name: "Rose",
    age: 39,
    rating: 4,
    image: "assets/images/Rose.jpg",
    description:
        "She is Humble and Polite. She was a National level 110m and 400m Hurdler. She is also a Certified Running Coach",
    experience: "9 years",
    number: "8735261092",
    speciality: "Agility",
  ),
];
const List<Trainer> speedTrainerData = const [
  Trainer(
    name: "Drake",
    age: 38,
    rating: 5,
    image: "assets/images/Drake.jpg",
    description:
        "Drake is a friendly person. He is an SCA certified trainer. He has 12 years of experience in this field and has worked with state level atheletes for 8 years",
    experience: "12 years",
    number: "7620366323",
    speciality: "Speed",
  ),
  Trainer(
    name: "Sam",
    age: 36,
    rating: 5,
    image: "assets/images/Sam.jpg",
    description:
        "He is an NSCA certified trainer, He completed his training in USA. He has worked with several Track & Field athelets",
    experience: "13 years",
    number: "6230366323",
    speciality: "Speed",
  ),
  Trainer(
    name: "Rose",
    age: 39,
    rating: 4,
    image: "assets/images/Rose.jpg",
    description:
        "She is Humble and Polite. She was a National level 110m and 400m Hurdler. She is also a Certified Running Coach",
    experience: "9 years",
    number: "8735261092",
    speciality: "Speed",
  ),
];
const List<Trainer> pilatesTrainerData = const [
  Trainer(
    name: "Dawson",
    age: 29,
    rating: 4,
    image: "assets/images/Dawson.jpg",
    description:
        "He is trained from NYP, USA. He has a 3 years of teaching experience. He is suitable for beginners and intermediate",
    experience: "4 years",
    number: "7334261382",
    speciality: "Pilates",
  ),
  Trainer(
    name: "Daisy",
    age: 33,
    rating: 5,
    image: "assets/images/Daisy.jpg",
    description:
        "She is Certified Pilates Trainer from ASFA, USA. She has a 7 years of teaching experience. She is an Advanced Level Instructor and has worked with Sports Professionals and Actors",
    experience: "9 years",
    number: "8726161672",
    speciality: "Pilates",
  ),
];
const List<Trainer> yogaTrainerData = const [
  Trainer(
    name: "Dawson",
    age: 29,
    rating: 4,
    image: "assets/images/Dawson.jpg",
    description:
        "He is trained from HYI, India. He has a 3 years of teaching experience. He is suitable for beginners and intermediate",
    experience: "4 years",
    number: "7334261382",
    speciality: "Yoga",
  ),
  Trainer(
    name: "Daisy",
    age: 33,
    rating: 5,
    image: "assets/images/Daisy.jpg",
    description:
        "She is Certified Yoga Trainer from ASFA, USA. She has a 7 years of teaching experience. She is an Advanced Level Instructor and has worked with Sports Professionals and Actors",
    experience: "9 years",
    number: "8726161672",
    speciality: "Yoga",
  ),
  Trainer(
    name: "Rose",
    age: 39,
    rating: 3,
    image: "assets/images/Rose.jpg",
    description:
        "She is Humble and Polite. She is a Certified Yoga Teacher. She also teaches Yoga for Beginners and Intermediate",
    experience: "3 years",
    number: "8735261092",
    speciality: "Yoga",
  ),
];
const List<Trainer> acroYogaTrainerData = const [
  Trainer(
    name: "Dawson",
    age: 29,
    rating: 4,
    image: "assets/images/Dawson.jpg",
    description:
        "He is trained from HYI, India. He has a 3 years of teaching experience. He is suitable for beginners and intermediate",
    experience: "4 years",
    number: "7334261382",
    speciality: "Acro Yoga",
  ),
  Trainer(
    name: "Daisy",
    age: 33,
    rating: 5,
    image: "assets/images/Daisy.jpg",
    description:
        "She is Certified Yoga Trainer from ASFA, USA. She has a 7 years of teaching experience. She is an Advanced Level Instructor and has worked with Sports Professionals and Actors",
    experience: "9 years",
    number: "8726161672",
    speciality: "Acro Yoga",
  ),
];
const List<Trainer> aerialYogaTrainerData = const [
  Trainer(
    name: "Dawson",
    age: 29,
    rating: 4,
    image: "assets/images/Dawson.jpg",
    description:
        "He is trained from HYI, India. He has a 3 years of teaching experience. He is suitable for beginners and intermediate",
    experience: "4 years",
    number: "7334261382",
    speciality: "Aerial Yoga",
  ),
  Trainer(
    name: "Daisy",
    age: 33,
    rating: 5,
    image: "assets/images/Daisy.jpg",
    description:
        "She is Certified Yoga Trainer from ASFA, USA. She has a 7 years of teaching experience. She is an Advanced Level Instructor and has worked with Sports Professionals and Actors",
    experience: "9 years",
    number: "8726161672",
    speciality: "Aerial Yoga",
  ),
];

const List<Videos> offlineVideosData = const [
  Videos(
    category: "Mobility",
    image: "assets/images/offline_videos/mobility.jpg",
    workouts: [
      Workout(
        name: "Single Leg Glute Bridge",
        videos: "assets/videos/sl_glute_bridge.mp4",
        reps: "10 each side",
        sets: 1,
        image: "assets/images/Strength.jpg",
        muscleGroupTargeted: "Glutes and Lower back",
      ),
      Workout(
        name: "Butterfly Stretch",
        videos: "assets/videos/sl_glute_bridge.mp4",
        reps: "10",
        sets: 1,
        image: "assets/images/Strength.jpg",
        muscleGroupTargeted: "Groin, Adductor and Hip flexor",
      ),
      Workout(
        name: "Leg Extension",
        videos: "assets/videos/sl_glute_bridge.mp4",
        reps: "10 each side",
        sets: 1,
        image: "assets/images/Strength.jpg",
        muscleGroupTargeted: "Hamstring and Calf",
      ),
      Workout(
        name: "Scorpion",
        videos: "assets/videos/sl_glute_bridge.mp4",
        reps: "5 each side",
        sets: 1,
        image: "assets/images/Strength.jpg",
        muscleGroupTargeted:
            "Core, Hips, Legs, Lower Body, Upper Legs and Waist.",
      ),
      Workout(
        name: "90/90",
        videos: "assets/videos/sl_glute_bridge.mp4",
        reps: "10 each side",
        sets: 1,
        image: "assets/images/Strength.jpg",
        muscleGroupTargeted: "IT Band, Hip Flexor and Waist",
      ),
      Workout(
        name: "Lion Stretch",
        videos: "assets/videos/sl_glute_bridge.mp4",
        reps: "10",
        sets: 1,
        image: "assets/images/Strength.jpg",
        muscleGroupTargeted: "T-span, Scapula and Lat",
      ),
      Workout(
        name: "YTWL",
        videos: "assest/videos/sl_glute_bridge.mp4",
        reps: "10 each side",
        sets: 1,
        image: "assets/images/Strength.jpg",
        muscleGroupTargeted:
            "T-span, Scapula, Lat, Teres minor, Teres major and Trapezius",
      ),
      Workout(
        name: "Adductor Rocks",
        videos: "assets/videos/sl_glute_bridge.mp4",
        reps: "10 each side",
        sets: 1,
        image: "assets/images/Strength.jpg",
        muscleGroupTargeted: "Adductor and Groin",
      ),
      Workout(
        name: "Hip Flexor Rocks",
        videos: "assets/videos/",
        reps: "10 each side",
        sets: 1,
        image: "assets/images/Strength.jpg",
        muscleGroupTargeted: "Hip Flexor and Quadricep",
      ),
      Workout(
        name: "World's Greatest",
        videos: "assets/videos/",
        reps: "10 each side",
        sets: 1,
        image: "assets/images/Strength.jpg",
        muscleGroupTargeted:
            "Groin, Adductor, Hip flexor, T-span, Scapula and Mid-back",
      ),
      Workout(
        name: "Ankle Pumps",
        videos: "assets/videos/",
        reps: "10 each side",
        sets: 1,
        image: "assets/images/Strength.jpg",
        muscleGroupTargeted: "Calf, Shin, Achilles and Soleus",
      ),
    ],
  ),
  Videos(
      image: "assets/images/offline_videos/Cardio.jpg",
      category: "Cardio",
      workouts: [
        Workout(
          name: "Mountain Climbers",
          videos: "assets/videos/",
          reps: "30 sec on 15 sec off",
          sets: 4,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Glutes, Legs, Triceps and Shoulders",
        ),
        Workout(
          name: "Pulse Pushups",
          videos: "assets/videos/",
          reps: "30 sec on 15 sec off",
          sets: 4,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Chest, Triceps, Abs and Shoulders",
        ),
        Workout(
          name: "Skater Jumps",
          videos: "assets/videos/",
          reps: "30 sec on 15 sec off",
          sets: 4,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Quads, Hamstrings, Glutes and Calves",
        ),
        Workout(
          name: "Bicycling Crunches",
          videos: "assets/videos/",
          reps: "30 sec on 15 sec off",
          sets: 4,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Rectus Abdominus, Hips and Obliques",
        ),
        Workout(
          name: "Pulse Squats",
          videos: "assets/videos/",
          reps: "30 sec on 15 sec off",
          sets: 4,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Glutes, Quads, Hamstrings, Calves and Core",
        ),
        Workout(
          name: "Quick Feet Step Ups",
          videos: "assets/videos/",
          reps: "30 sec on 15 sec off",
          sets: 4,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Quadriceps, Hamstrings, Glute and Calf",
        ),
      ]),
  Videos(
      image: "assets/images/offline_videos/core.jpg",
      category: "Core",
      workouts: [
        Workout(
          name: "Sit-up",
          videos: "assets/videos/",
          reps: "15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Upper Abs",
        ),
        Workout(
          name: "Leg Raise",
          videos: "assest/videos/",
          reps: "15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Lower Abs",
        ),
        Workout(
          name: "Jackknife Sit-up",
          videos: "assest/videos/",
          reps: "15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Upper and Lower Abs",
        ),
        Workout(
          name: "Knee-in",
          videos: "assest/videos/",
          reps: "15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Lower Abs",
        ),
        Workout(
          name: "Toe-toucher",
          videos: "assest/videos/",
          reps: "15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Upper and Lower Abs",
        ),
        Workout(
          name: "Crunch",
          videos: "assest/videos/",
          reps: "15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Upper Abs",
        ),
        Workout(
          name: "Reverse Crunch",
          videos: "assest/videos/",
          reps: "15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Upper and lower Abs",
        ),
      ]),
  Videos(
      image: "assets/images/offline_videos/S_C.jpg",
      category: "Strength & Conditioning",
      workouts: [
        Workout(
          name: "Shoulder Press",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Deltoids (posterior, medial, and anterior shoulder),Triceps, Traps and Upper Chest",
        ),
        Workout(
          name: "Jumping Lunges",
          videos: "assest/videos/",
          reps: "12-15 each side",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Quads, Glutes, Hamstrings and Calves",
        ),
        Workout(
          name: "Lateral Raise",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Middle Deltoid and Traps",
        ),
        Workout(
          name: "Single Leg RDL",
          videos: "assest/videos/",
          reps: "12-15 each side",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Glutes, Hamstrings, Lats and Spinal Erectors",
        ),
        Workout(
          name: "Reverse Fly",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Rhomboids",
        ),
        Workout(
          name: "Lateral Step-up",
          videos: "assest/videos/",
          reps: "12-15 each side",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Quads, Hamstrings, Glutes and also improves balance and agility ",
        ),
        Workout(
          name: "Bicep Curl and Hammer Curl",
          videos: "assest/videos/",
          reps: "12-15 each side",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Biceps Brachii, Brachialis and Brachioradialis",
        ),
        Workout(
          name: "Calf Raise",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Gastrocnemius, Tibialis Posterior and Soleus ",
        ),
        Workout(
          name: "Dead Bug",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Erector Ppinae, Obliques, Rectus Abdominis, Transverse Abdominis ",
        ),
      ]),
  Videos(
      image: "assets/images/offline_videos/upper-body.jpg",
      category: "Upper Body",
      workouts: [
        Workout(
          name: "Bent Over Rows",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Rear Delt, Infraspinatus and Teres Minor",
        ),
        Workout(
          name: "Arnold Press",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Deltoids",
        ),
        Workout(
          name: "Bench Press",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Pectoralis Major, Anterior Deltoids and Triceps",
        ),
        Workout(
          name: "Pull Over",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Pectoralis Major and Latissimus Dorsi",
        ),
        Workout(
          name: "Reverse Fly",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Posterior Deltoids, Rhomboids and Trapezius",
        ),
        Workout(
          name: "Bicep Curl",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Biceps Brachii",
        ),
        Workout(
          name: "Tricep Extension",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Triceps, Shoulders, Chest, Lats and Forearms",
        ),
        Workout(
          name: "Chest Fly",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Pectoralis Major ",
        ),
      ]),
  Videos(
      image: "assets/images/offline_videos/lower-body.jpg",
      category: "Lower Body",
      workouts: [
        Workout(
          name: " Barbell Back Squat",
          videos: "assest/videos/",
          reps: "8-12",
          sets: 4,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Quadriceps, Gluteals, Hamstrings and Spinal Erectors",
        ),
        Workout(
          name: "Romanian Deadlift",
          videos: "assest/videos/",
          reps: "8-12",
          sets: 4,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Hamstrings, Glutes and Forearm Flexors",
        ),
        Workout(
          name: "Bulgarian Split Squat",
          videos: "assest/videos/",
          reps: "8-12",
          sets: 4,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Quads, Hamstrings, Glutes, Calves, Core and Arms",
        ),
        Workout(
          name: "Glute Ham Raise",
          videos: "assest/videos/",
          reps: "8-12",
          sets: 4,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Glutes, Hamstrings, Gluteus Maximus, Gluteus Medius and Gluteus Minimus",
        ),
        Workout(
          name: "Standing Single Leg Calf Raise",
          videos: "assest/videos/",
          reps: "8-12",
          sets: 4,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Gastrocnemius",
        ),
        Workout(
          name: "Seated Calf Raise",
          videos: "assest/videos/",
          reps: "8-12",
          sets: 4,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Medial and Lateral Soleus",
        ),
      ]),
  Videos(
      image: "assets/images/offline_videos/chest.jpg",
      category: "Chest",
      workouts: [
        Workout(
          name: "Bench press",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 4,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Pectoralis Major, Anterior Deltoids and Triceps",
        ),
        Workout(
          name: "Incline bench press",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 4,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Pectoralis Major Muscle, Upper Pectoral Muscles",
        ),
        Workout(
          name: "A incline dumbell press",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 4,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Pectoralis Major",
        ),
        Workout(
          name: " B Incline Dumbell Flye",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 4,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Upper Pectorals and Triceps",
        ),
        Workout(
          name: "PressUp",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 4,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Pectorals, Deltoids, Triceps, Abdominal, Serratus Anterior.",
        ),
      ]),
  Videos(
      image: "assets/images/offline_videos/arms.jpg",
      category: "Arms",
      workouts: [
        Workout(
          name: "Over Head Press",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Pectorals, Deltoids, Triceps, Trapezius",
        ),
        Workout(
          name: "Chin-Ups",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Biceps, Teres Major, Posterior Deltoid, Transverse Abdominis",
        ),
        Workout(
          name: "Upright Row",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Deltoids, Trapezius, Rhomboids and  Biceps",
        ),
        Workout(
          name: "Incline Dumbbell Bicep Curl",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Biceps Brachii",
        ),
        Workout(
          name: "Dumbbell Lateral Raise",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Deltoid, Upper Trap, Supraspinatus and Serratus Anterior",
        ),
        Workout(
          name: "Tricep Press Down",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Triceps",
        ),
      ]),
  Videos(
      image: "assets/images/offline_videos/back.jpg",
      category: "Back",
      workouts: [
        Workout(
          name: "Pull Up",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Biceps, Teres Major, Posterior Deltoid, Transverse Abdominis",
        ),
        Workout(
          name: "Hammer Grip Pull Up",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Latissimus Dorsi",
        ),
        Workout(
          name: "Prone Dumbbell Row",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Trapezius, Rhomboids and Latissimus Dorsi",
        ),
        Workout(
          name: "Prone Dumbbell Flye",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Deltoids",
        ),
        Workout(
          name: "Lat pull Down",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Latissimus Dorsi, Shoulders, Bicep",
        ),
        Workout(
          name: "Seated Row",
          videos: "assest/videos/",
          reps: "12-15",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Lat, Rhomboids, Bicep, Traps",
        ),
      ]),
  Videos(
      image: "assets/images/offline_videos/speed.jpg",
      category: "Speed",
      workouts: [
        Workout(
          name: "High Knee",
          videos: "assest/videos/",
          reps: "30 sec on 30 sec off",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Hip Flexor",
        ),
        Workout(
          name: "But Kick",
          videos: "assest/videos/",
          reps: "30 sec on 30 sec off",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Hamstring and Calf",
        ),
        Workout(
          name: "Jumping Jacks",
          videos: "assest/videos/",
          reps: "30 sec on 30 sec off",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Calf, Shoulder, Groin and Adductor",
        ),
        Workout(
          name: "Siccors",
          videos: "assest/videos/",
          reps: "30 sec on 30 sec off",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Calf, Quads and Hamstring",
        ),
        Workout(
          name: "Double Leg Side To Side Hop",
          videos: "assest/videos/",
          reps: "30 sec on 30 sec off",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Calf, Side Abs and IT Band",
        ),
        Workout(
          name: "Double Leg Forward Backward",
          videos: "assest/videos/",
          reps: "30 sec on 30 sec off",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Calf, Quads and Hamstring",
        ),
        Workout(
          name: "Single Leg Side To Side Hop",
          videos: "assest/videos/",
          reps: "30 sec on 30 sec off",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Calf, IT Band, Adductor and Groin",
        ),
        Workout(
          name: "Single Leg Forward Backward Hop",
          videos: "assest/videos/",
          reps: "30 sec on 30 sec off",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Calf, Quads and Hamstring",
        ),
        Workout(
          name: "Squat Jump",
          videos: "assest/videos/",
          reps: "30 meters",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Calf, Quads, Hamstring and Glutes ",
        ),
        Workout(
          name: "60 Meters Sprints",
          videos: "assest/videos/",
          reps: "10",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Full Lower Body",
        ),
      ]),
  Videos(
      image: "assets/images/offline_videos/endurance.jpg",
      category: "Endurance",
      workouts: [
        Workout(
          name: "200m Run and 100m Jog",
          videos: "assest/videos/",
          reps: "10",
          sets: 2,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Increase Lung Capacity and Stamina, Leg and Shoulder Muscles",
        ),
      ]),
  Videos(
      image: "assets/images/offline_videos/agility.jpg",
      category: "Agility",
      workouts: [
        Workout(
          name: "Shuttle Run 10m-20m-30m-40m",
          videos: "assest/videos/",
          reps: "10",
          sets: 2,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Abs, Calves, Glutes, Hip Flexors, Hamstrings, Lower Back and Quadriceps",
        ),
      ]),
  Videos(
      image: "assets/images/offline_videos/yoga.jpg",
      category: "Yoga",
      workouts: [
        Workout(
          name: "Child's Pose",
          videos: "assest/videos/",
          reps: "1 min",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Stretches your Lower Back, Hips, Thighs, Knees and Ankles and Relaxes your Spine, Shoulders and Neck",
        ),
        Workout(
          name: "Downward-Facing Dog",
          videos: "assest/videos/",
          reps: "1 min",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Strengthens the Arms, Shoulders and Back while stretching the Hamstrings, Calves and Arches of your Feet",
        ),
        Workout(
          name: "Plank Pose",
          videos: "assest/videos/",
          reps: "1 min",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Helps build strength in the Core, Shoulders, Arms and Legs",
        ),
        Workout(
          name: "Four-Limbed Staff Pose",
          videos: "assest/videos/",
          reps: "1 min",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Abs, Glute, Shoulders, Tricep and Forearm",
        ),
        Workout(
          name: "Cobra Pose",
          videos: "assest/videos/",
          reps: "1 min",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Strengthen the Back Muscles, Increase Spinal Flexibility and Stretches the Chest, Shoulders and Abdomen",
        ),
        Workout(
          name: "Tree Pose",
          videos: "assest/videos/",
          reps: "1 min",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Improve your balance, It can also strengthen your Core, Ankles, Calves, Thighs and Spine",
        ),
        Workout(
          name: "Triangle Pose",
          videos: "assest/videos/",
          reps: "1 min",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Build strength in the legs and stretches the Hips, Spine, Chest, Shoulders, Groins, Hamstrings and Calves",
        ),
        Workout(
          name: "Seated Half-Spinal Twist Pose",
          videos: "assest/videos/",
          reps: "1 min",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Increase the flexibility in your back, while stretching the Shoulders, Hips and Chest",
        ),
        Workout(
          name: "Bridge Pose",
          videos: "assest/videos/",
          reps: "1 min",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted:
              "Stretches the muscles of the Chest, Back, Neck and also builds strength in the Back and Hamstring Muscles",
        ),
        Workout(
          name: "Corpse Pose",
          videos: "assest/videos/",
          reps: "1 min",
          sets: 3,
          image: "assets/images/Strength.jpg",
          muscleGroupTargeted: "Allows for a Moment of Relaxation",
        ),
      ]),
];

const List<Workout> workoutList = [
  Workout(
    name: "Single Leg Glute Bridge",
    videos: "assets/videos/sl_glute_bridge.mp4",
    image: "assets/images/Pilates.jpg",
    reps: "10 each side",
    sets: 1,
    muscleGroupTargeted: "Glutes and Lower back",
  ),
  Workout(
    name: "Butterfly Stretch",
    videos: "assets/videos/butterfly_stretch.mp4",
    image: "assets/images/endurance.jpg",
    reps: "10",
    sets: 1,
    muscleGroupTargeted: "Groin, Adductor and Hip flexor",
  ),
  Workout(
    name: "Leg Extension",
    videos: "assets/videos/sl_glute_bridge.mp4",
    image: "assets/images/Muscle.png",
    reps: "10 each side",
    sets: 1,
    muscleGroupTargeted: "Hamstring and Calf",
  ),
  Workout(
    name: "Scorpion",
    videos: "assets/videos/downward_dog.mp4",
    reps: "5 each side",
    image: "assets/images/rehab.jpg",
    sets: 1,
    muscleGroupTargeted: "Core, Hips, Legs, Lower Body, Upper Legs and Waist.",
  ),
  Workout(
    name: "90/90",
    videos: "assets/videos/plank2.mp4",
    reps: "10 each side",
    image: "assets/images/speed.jpg",
    sets: 1,
    muscleGroupTargeted: "IT Band, Hip Flexor and Waist",
  ),
  Workout(
    name: "Lion Stretch",
    videos: "assets/videos/triangle_pose.mp4",
    image: "assets/images/Strength.jpg",
    reps: "10",
    sets: 1,
    muscleGroupTargeted: "T-span, Scapula and Lat",
  ),
  Workout(
    name: "YTWL",
    videos: "assets/videos/push_up.mp4",
    reps: "10 each side",
    image: "assets/images/agility.jpg",
    sets: 1,
    muscleGroupTargeted:
        "T-span, Scapula, Lat, Teres minor, Teres major and Trapezius",
  ),
];
