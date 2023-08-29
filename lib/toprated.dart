import 'package:flutter/material.dart';
import 'package:maidfinal/date_time.dart';
import 'package:maidfinal/inside_clean.dart';

class TopRated extends StatefulWidget {
  const TopRated({Key? key}) : super(key: key);

  @override
  State<TopRated> createState() => _TopRatedState();
}

class _TopRatedState extends State<TopRated> {
  List<dynamic> workers = [
    ['Akshay', 'Plumber', 'https://images.unsplash.com/photo-1506803682981-6e718a9dd3ee?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=c3a31eeb7efb4d533647e3cad1de9257', 4.8],
    ['Stela', 'Cleaner', 'https://images.pexels.com/photos/355164/pexels-photo-355164.jpeg?crop=faces&fit=crop&h=200&w=200&auto=compress&cs=tinysrgb', 4.8],
    ['Carolina', 'Cook', 'https://images.pexels.com/photos/355190/pexels-photo-355190.jpeg?crop=faces&fit=crop&h=200&w=200&auto=compress&cs=tinysrgb', 4.8],
    // ['Michelle Baldwin', 'Cleaner', 'https://uifaces.co/our-content/donated/oLkb60i_.jpg', 4.6],
    // ['Brenon Kalu', 'Driver', 'https://uifaces.co/our-content/donated/VUMBKh1U.jpg', 4.4]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                children: [

                  SizedBox(height: 20,),

                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Top Rated', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        // TextButton(
                        //     onPressed: () {
                        //       // Navigator.push(context, MaterialPageRoute(builder: (context) => TopRated(),));
                        //     },
                        //     child: Text('View all',)
                        // )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    height: 400,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: workers.length,
                        itemBuilder: (BuildContext context, int index) {
                          return workerContainer(workers[index][0], workers[index][1], workers[index][2], workers[index][3]);
                        }
                    ),
                  ),
                  SizedBox(height: 150,),
                ]
            )
        )
    );
  }



  workerContainer(String name, String job, String image, double rating) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => CleaningPage(),));
      },
      child: AspectRatio(
        aspectRatio: 3.3,
        child: Container(
          margin: EdgeInsets.only(right: 20),
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.shade200,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(image)
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text(job, style: TextStyle(fontSize: 15),)
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(rating.toString(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Icon(Icons.star, color: Colors.orange, size: 20,)
                  ],
                )
              ]
          ),
        ),
      ),
    );
  }
}

