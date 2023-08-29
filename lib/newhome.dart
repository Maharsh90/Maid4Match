import 'package:maidfinal/inside_clean.dart';
import 'package:flutter/material.dart';
import 'package:maidfinal/profile.dart';
import 'package:maidfinal/Editprofile.dart';
import 'package:maidfinal/lo.dart';
import 'package:maidfinal/date_time.dart';
import 'package:maidfinal/viewall.dart';
import 'package:maidfinal/toprated.dart';
import 'package:maidfinal/profile.dart';

// void main(){
//   runApp(MaterialApp(home:HomePage()));
// }

class Service {
  final String name;
  final String imageURL;

  Service(this.name, this.imageURL);
}


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Service> services = [
    Service('Cleaning', 'https://img.icons8.com/external-vitaliy-gorbachev-flat-vitaly-gorbachev/2x/external-cleaning-labour-day-vitaliy-gorbachev-flat-vitaly-gorbachev.png'),
    Service('Plumber', 'https://img.icons8.com/external-vitaliy-gorbachev-flat-vitaly-gorbachev/2x/external-plumber-labour-day-vitaliy-gorbachev-flat-vitaly-gorbachev.png'),
    Service('Electrician', 'https://img.icons8.com/external-wanicon-flat-wanicon/2x/external-multimeter-car-service-wanicon-flat-wanicon.png'),
    Service('Painter', 'https://img.icons8.com/external-itim2101-flat-itim2101/2x/external-painter-male-occupation-avatar-itim2101-flat-itim2101.png'),
    Service('Carpenter', 'https://img.icons8.com/fluency/2x/drill.png'),
    Service('Gardener', 'https://img.icons8.com/external-itim2101-flat-itim2101/2x/external-gardener-male-occupation-avatar-itim2101-flat-itim2101.png'),
  ];

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
        drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(margin: EdgeInsets.all(8),
                    currentAccountPicture: CircleAvatar(radius: 50,
                      backgroundImage: AssetImage(
                          "assets/babu.png"),
                    ),
                    accountName: Text("\n Yash Dabhi"),
                    accountEmail: Text("Yash@gmail.com"),
                  )),

              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  minimumSize: MaterialStateProperty.all(Size(100, 50)),
                  fixedSize: MaterialStateProperty.all(Size(100, 50)),
                  overlayColor:
                  MaterialStateProperty.all<Color>(Colors.grey.shade200),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.teal.shade900,
                    ),
                    SizedBox(width: 4),
                    Text('Setting'),
                  ],
                ),
              ),
              SizedBox(height: 17),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  minimumSize: MaterialStateProperty.all(Size(100, 50)),
                  fixedSize: MaterialStateProperty.all(Size(100, 50)),
                  overlayColor:
                  MaterialStateProperty.all<Color>(Colors.grey.shade200),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.info,
                      color: Colors.teal.shade900,
                    ),
                    SizedBox(width: 4),
                    Text('About Us'),
                  ],
                ),
              ),
              SizedBox(height: 17),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>MyEditProfile()));
                },
                style: ButtonStyle(alignment: Alignment.center,
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  minimumSize: MaterialStateProperty.all(Size(100, 50)),
                  fixedSize: MaterialStateProperty.all(Size(100, 50)),
                  overlayColor: MaterialStateProperty.all<Color>(Colors.grey.shade200),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [ Icon(
                    Icons.edit,
                    color: Colors.teal.shade900,
                  ),
                    SizedBox(width: 4),
                    Text('Edit Profile'),

                  ],
                ),
              ),
              SizedBox(height: 17),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyLogin()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  minimumSize: MaterialStateProperty.all(Size(100, 50)),
                  fixedSize: MaterialStateProperty.all(Size(100, 50)),
                  overlayColor:
                  MaterialStateProperty.all<Color>(Colors.grey.shade200),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.teal.shade900,
                    ),
                    SizedBox(width: 4),
                    Text('Logout'),
                    Container(
                      child: Column(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),

        appBar: AppBar(
          actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyProfile()));
                },
                iconSize: .5,
                icon:
                // Icon(Icons.login),
                Image(
                  image: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/3177/3177440.png",
                  ),
                )),
          ],
          backgroundColor: Colors.blue,
          title: Text('Maid4House'),
        ),
        body: SingleChildScrollView(
            child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 10.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Recent', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ViewAll(),));
                            },
                            child: Text('View all',)
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            offset: Offset(0, 4),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  // child: Image.network('https://images.pexels.com/photos/355164/pexels-photo-355164.jpeg?crop=faces&fit=crop&h=200&w=200&auto=compress&cs=tinysrgb', width: 70,)
                                  child: Image.network('https://images.pexels.com/photos/355179/pexels-photo-355179.jpeg?crop=faces&fit=crop&h=200&w=200&auto=compress&cs=tinysrgb', width: 70,)
                              ),
                              SizedBox(width: 15,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Kantabai", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                                  SizedBox(height: 5,),
                                  Text("Cleaner", style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 18),),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(15.0)
                            ),
                            child: Center(child: MaterialButton(
                              elevation: 0,
                              color: Colors.blue,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyProfile(),
                                  ),
                                );
                              },
                              height: 55,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(
                                child: Text(
                                  'View Profile',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Categories', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        TextButton(
                            onPressed: () {},
                            child: Text('View all',)
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    height: 300,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1.0,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: services.length,
                        itemBuilder: (BuildContext context, int index) {
                          return serviceContainer(services[index].imageURL, services[index].name, index);
                        }
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Top Rated', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => TopRated(),));
                            },
                            child: Text('View all',)
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    height: 120,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
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

  serviceContainer(String image, String name, int index) {
    return GestureDetector(
    onTap: (){
      if(index==0){
        Navigator.push(context,MaterialPageRoute(builder: (context) => CleaningPage(),));
      }
    },
      child: Container(
        margin: EdgeInsets.only(right: 20),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          border: Border.all(
            color: Colors.blue.withOpacity(0),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(image, height: 45),
                SizedBox(height: 20,),
                Text(name, style: TextStyle(fontSize: 15),)
              ]
          ),
        ),
      ),
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