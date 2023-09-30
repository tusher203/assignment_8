import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> Images = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjaZWqWfcUskU_FilsOpEpwY3Ehnmqxdtjlw&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjaZWqWfcUskU_FilsOpEpwY3Ehnmqxdtjlw&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTv-oOY-qCTfAueOmKFxtQR-8L0J9knQkmpIg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSECtg5jpZmjf6LgZSq34X_G_QuqrV8tjo_t-_Zf5EQRiGc134n_hy2bncdg4myrxrz-QE&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTv-oOY-qCTfAueOmKFxtQR-8L0J9knQkmpIg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTv-oOY-qCTfAueOmKFxtQR-8L0J9knQkmpIg&usqp=CAU',
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile2"),

      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _portraitMode();
          } else {
            return _landscapeMode();
          }
        },
      ),
    );
  }
}

Widget _portraitMode() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Flexible(
          flex: 5,
          fit: FlexFit.tight,
          child: Container(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 230,
              backgroundImage: NetworkImage(
                  'https://miro.medium.com/v2/resize:fit:1400/1*Glufb0HV1xnAmu2O-yaCWw.jpeg'),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Flexible(
            flex: 2,
            fit: FlexFit.tight,

            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                Text(
                  'John Doe',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry s standard dummy text ever since the 1500s ,',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),

          ),
        ),
        SizedBox(height: 10),
        Flexible(
          flex: 1,
          fit: FlexFit.loose,
          child: GridView.builder(
            itemCount: Images.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        Images[index],
                      ),
                      fit: BoxFit.cover,
                    )
                  // image: NetworkImage(Images[index]);
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}

Widget _landscapeMode() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          flex: 5,
          fit: FlexFit.tight,
          child: Container(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              radius: 250,
              backgroundImage: NetworkImage(
                  'https://miro.medium.com/v2/resize:fit:1400/1*Glufb0HV1xnAmu2O-yaCWw.jpeg'),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          child: Flexible(

            flex: 2,

            fit: FlexFit.tight,

            child: Wrap(

              alignment: WrapAlignment.center,

              children: [

                Text(

                  'John Doe',

                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),

                ),

                Text(

                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry s standard dummy text ever since the 1500s ,',

                  style: TextStyle(fontSize: 20),

                ),

              ],

            ),

          ),
        ),

        SizedBox(height: 10),

        Container(
          child:   Flexible(

            flex: 2,

            fit: FlexFit.loose,

            child: GridView.builder(

              itemCount: Images.length,

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                  crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),

              itemBuilder: (BuildContext context, int index) {

                return Container(

                  alignment: Alignment.bottomCenter,

                  decoration: BoxDecoration(

                      image: DecorationImage(

                        image: NetworkImage(

                          Images[index],

                        ),

                        fit: BoxFit.cover,

                      )

                    // image: NetworkImage(Images[index]);

                  ),

                );

              },

            ),

          ),
        )

      ],
    ),
  );
}
