import 'package:express_app_self/modals/harry_potter.dart';
import 'package:express_app_self/widgets/home_screen_button.dart';
import 'package:express_app_self/widgets/input_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NonAcademicScreen extends StatelessWidget {
  final List<ProductHP> loadedProducts = [
    ProductHP(
      id: 'p1',
      title: 'Harry Potter and the Sorcerer’s Stone',
      description:
          "Harry Potter has never even heard of Hogwarts when the letters start dropping on the doormat at number four, Privet Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly aunt and uncle. Then, on Harry's eleventh birthday, a great beetle-eyed giant of a man called Rubeus Hagrid bursts in with some astonishing news: Harry Potter is a wizard, and he has a place at Hogwarts School of Witchcraft and Wizardry. An incredible adventure is about to begin!",
      author: 'J. K. Rowling',
      authorImage:
          'https://images-na.ssl-images-amazon.com/images/S/amzn-author-media-prod/fvh43djng407r1iq142ng0sk5f._US230_.jpg',
      imageUrl: 'https://m.media-amazon.com/images/I/51UoqRAxwEL.jpg',
      writtenOn: 1997,
    ),
    ProductHP(
      id: 'p2',
      title: 'Harry Potter and the Chamber of Secrets',
      description:
          "Harry Potter's summer has included the worst birthday ever, doomy warnings from a house-elf called Dobby, and rescue from the Dursleys by his friend Ron Weasley in a magical flying car! Back at Hogwarts School of Witchcraft and Wizardry for his second year, Harry hears strange whispers echo through empty corridors - and then the attacks start. Students are found as though turned to stone... Dobby's sinister predictions seem to be coming true.",
      author: 'J. K. Rowling',
      authorImage:
          'https://images-na.ssl-images-amazon.com/images/S/amzn-author-media-prod/fvh43djng407r1iq142ng0sk5f._US230_.jpg',
      imageUrl: 'https://m.media-amazon.com/images/I/51TA3VfN8RL.jpg',
      writtenOn: 1998,
    ),
    ProductHP(
      id: 'p3',
      title: 'Harry Potter and the Prisoner of Azkaban',
      description:
          "When the Knight Bus crashes through the darkness and screeches to a halt in front of him, it's the start of another far from ordinary year at Hogwarts for Harry Potter. Sirius Black, escaped mass-murderer and follower of Lord Voldemort, is on the run - and they say he is coming after Harry. In his first ever Divination class, Professor Trelawney sees an omen of death in Harry's tea leaves... But perhaps most terrifying of all are the Dementors patrolling the school grounds, with their soul-sucking kiss...",
      author: 'J. K. Rowling',
      authorImage:
          'https://images-na.ssl-images-amazon.com/images/S/amzn-author-media-prod/fvh43djng407r1iq142ng0sk5f._US230_.jpg',
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51Dfqo6jR5L._SX331_BO1,204,203,200_.jpg',
      writtenOn: 1999,
    ),
    ProductHP(
      id: 'p4',
      title: 'Harry Potter and the Goblet of Fire',
      description:
          "The Triwizard Tournament is to be held at Hogwarts. Only wizards who are over seventeen are allowed to enter - but that doesn't stop Harry dreaming that he will win the competition. Then at Hallowe'en, when the Goblet of Fire makes its selection, Harry is amazed to find his name is one of those that the magical cup picks out. He will face death-defying tasks, dragons and Dark wizards, but with the help of his best friends, Ron and Hermione, he might just make it through - alive!",
      author: 'J. K. Rowling',
      authorImage:
          'https://images-na.ssl-images-amazon.com/images/S/amzn-author-media-prod/fvh43djng407r1iq142ng0sk5f._US230_.jpg',
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51Vjb2qJwzL._SX331_BO1,204,203,200_.jpg',
      writtenOn: 2000,
    ),
    ProductHP(
      id: 'p5',
      title: 'Harry Potter and the Order of the Phoenix',
      description:
          "Dark times have come to Hogwarts. After the Dementors' attack on his cousin Dudley, Harry Potter knows that Voldemort will stop at nothing to find him. There are many who deny the Dark Lord's return, but Harry is not alone: a secret order gathers at Grimmauld Place to fight against the Dark forces. Harry must allow Professor Snape to teach him how to protect himself from Voldemort's savage assaults on his mind. But they are growing stronger by the day and Harry is running out of time...",
      author: 'J. K. Rowling',
      authorImage:
          'https://images-na.ssl-images-amazon.com/images/S/amzn-author-media-prod/fvh43djng407r1iq142ng0sk5f._US230_.jpg',
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51-SI2+aQ2L._SX331_BO1,204,203,200_.jpg',
      writtenOn: 2003,
    ),
    ProductHP(
      id: 'p6',
      title: 'Harry Potter and the Half-Blood Prince',
      description:
          "When Dumbledore arrives at Privet Drive one summer night to collect Harry Potter, his wand hand is blackened and shrivelled, but he does not reveal why. Secrets and suspicion are spreading through the wizarding world, and Hogwarts itself is not safe. Harry is convinced that Malfoy bears the Dark Mark: there is a Death Eater amongst them. Harry will need powerful magic and true friends as he explores Voldemort's darkest secrets, and Dumbledore prepares him to face his destiny...",
      author: 'J. K. Rowling',
      authorImage:
          'https://images-na.ssl-images-amazon.com/images/S/amzn-author-media-prod/fvh43djng407r1iq142ng0sk5f._US230_.jpg',
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51myHyjJsyL._SX331_BO1,204,203,200_.jpg',
      writtenOn: 2005,
    ),
    ProductHP(
      id: 'p7',
      title: 'Harry Potter and the Deathly Hallows',
      description:
          "As he climbs into the sidecar of Hagrid's motorbike and takes to the skies, leaving Privet Drive for the last time, Harry Potter knows that Lord Voldemort and the Death Eaters are not far behind. The protective charm that has kept Harry safe until now is broken, but he cannot keep hiding. The Dark Lord is breathing fear into everything Harry loves and to stop him Harry will have to find and destroy the remaining Horcruxes. The final battle must begin - Harry must stand and face his enemy...",
      author: 'J. K. Rowling',
      authorImage:
          'https://images-na.ssl-images-amazon.com/images/S/amzn-author-media-prod/fvh43djng407r1iq142ng0sk5f._US230_.jpg',
      imageUrl: 'https://m.media-amazon.com/images/I/511DhzIj4cL.jpg',
      writtenOn: 2007,
    ),
    ProductHP(
      id: 'p8',
      title: 'Harry Potter and the Deathly Hallows',
      description:
          'While Harry grapples with a past that refuses to stay where it belongs, his youngest son Albus must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and son learn the uncomfortable truth: sometimes, darkness comes from unexpected places.',
      author: 'J. K. Rowling',
      authorImage:
          'https://images-na.ssl-images-amazon.com/images/S/amzn-author-media-prod/fvh43djng407r1iq142ng0sk5f._US230_.jpg',
      imageUrl: 'https://m.media-amazon.com/images/I/51G+WN7UghL._SY346_.jpg',
      writtenOn: 2016,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: FaIcon(FontAwesomeIcons.search),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: FaIcon(
              FontAwesomeIcons.arrowAltCircleLeft,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/onlineLibraryScreen',
              );
            }),
        title: Text(
          'Non-academic Section',
          textAlign: TextAlign.end,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: loadedProducts.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Image.network(
                        loadedProducts[index].imageUrl,
                      ), //Icon(Icons.album)
                      title: Text(loadedProducts[index].title),
                      subtitle: Text(
                          'Written by ${loadedProducts[index].author} on ${loadedProducts[index].writtenOn}.'),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('SHOW DETAILS'),
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(25.0),
                                      child: Center(
                                        child: ListView(
                                          scrollDirection: Axis.vertical,
                                          children: [
                                            Text(
                                              "About this book",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 35,
                                                letterSpacing: 1.1,
                                                color: Color(0xff0099ff),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Text(
                                              loadedProducts[index].description,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Text(
                                              "Author:",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                                letterSpacing: 1.1,
                                                color: Color(0xff0099ff),
                                              ),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Image.network(
                                                loadedProducts[index]
                                                    .authorImage,
                                                height: 100,
                                                width: 100,
                                              ),
                                            ),
                                            Text(
                                              loadedProducts[index].author,
                                              textAlign: TextAlign.center,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                        ),
                        FlatButton(
                          child: const Text('READ'),
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: ListView(
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Text(
                                          "To continue reading",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 35,
                                            letterSpacing: 1.1,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Text(
                                          "Please enter the verification code provided by the concerned Library your account is associated to.",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        InputTextFeild(
                                          reqText: "Verification Code / ID",
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        HomeScreenButton(
                                          title: "Verify and continue",
                                          colours: Colors.black,
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Chip(
                                          avatar: CircleAvatar(
                                            backgroundColor: Color(0xffebebeb),
                                            child: FaIcon(
                                              FontAwesomeIcons
                                                  .solidQuestionCircle,
                                              color: Colors.black,
                                              size: 15,
                                            ),
                                          ),
                                          label:
                                              Text("Facing issue? Contact us."),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        FlatButton(
                          child: const Text('ADD TO YOUR SHELF'),
                          onPressed: () {/* ... */},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
