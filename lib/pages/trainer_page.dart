import 'package:agora_flutter_quickstart/pages/trainerDetail_page.dart';

import '../data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:snapclip_pageview/snapclip_pageview.dart';
import 'package:date_time_picker/date_time_picker.dart';

class TrainerPage extends StatefulWidget {
  static const routeName = '/trainerpage';
  @override
  _TrainerPageState createState() => _TrainerPageState();
}

class _TrainerPageState extends State<TrainerPage> {
  List<Trainer> data;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments as List;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color(0x00000000),
        elevation: 0,
      ),
      body: SnapClipPageView(
        backgroundBuilder: buildBackground,
        itemBuilder: buildChild,
        length: data.length,
        initialIndex: 0,
      ),
    );
  }

  BackgroundWidget buildBackground(_, index) {
    final trainer = data[index];
    return BackgroundWidget(
      key: Key(index.toString()),
      child: Image.asset(trainer.image, fit: BoxFit.fill),
      index: index,
    );
  }

  PageViewItem buildChild(_, int index) {
    final trainer = data[index];
    return PageViewItem(
      alignment: Alignment.bottomCenter,
      key: Key(index.toString()),
      child: Container(
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              trainer.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => TrainerDetail(trainer),
                ),
              ),
              child: Container(
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Hero(
                    tag: trainer.name,
                    child: Image.asset(
                      trainer.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Age: ${trainer.age}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ratingBar(trainer.rating),
            Divider(),
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              onPressed: () => showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildDateTimePicker(),
                            SizedBox(
                              width: 320.0,
                              child: RaisedButton(
                                onPressed: () {},
                                child: Text(
                                  "Book",
                                  style: TextStyle(color: Colors.white),
                                ),
                                color: const Color(0xFF1BC0C5),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              child: Text("BOOK NOW"),
            ),
          ],
        ),
      ),
      height: 405,
      index: index,
      //margin: EdgeInsets.all(10),
    );
  }

  Widget ratingBar(int rating) {
    List<Widget> stars = [
      Text(
        "Rating: ",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ];
    for (int i = 0; i < 5; i++) {
      if (i <= rating)
        stars.add(Icon(
          Icons.star,
          color: Colors.yellow,
        ));
      else
        stars.add(Icon(Icons.star_border));
    }
    return Container(
      child: Row(
        children: stars,
      ),
    );
  }

  Widget buildDateTimePicker() {
    return DateTimePicker(
      type: DateTimePickerType.dateTimeSeparate,
      dateMask: 'd MMM, yyyy',
      initialValue: DateTime.now().toString(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      icon: Icon(Icons.event),
      dateLabelText: 'Date',
      timeLabelText: "Hour",
      selectableDayPredicate: (date) {
        // Disable weekend days to select from the calendar
        if (date.weekday == 7) {
          return false;
        }

        return true;
      },
      onChanged: (val) => print(val),
      validator: (val) {
        print(val);
        return null;
      },
      onSaved: (val) => print(val),
    );
  }
}
