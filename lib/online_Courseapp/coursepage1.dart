import 'package:flutter/material.dart';

class coursepage extends StatefulWidget {
  coursepage({Key? key}) : super(key: key);

  @override
  State<coursepage> createState() => _coursepageState();
}

class _coursepageState extends State<coursepage> {
  bool search = false;
 int _currentint=0;
 int ss=1;
  final List<bool> _selected = List.generate(3, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent[400],
          toolbarHeight: 100,
          centerTitle: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Sign Up"),
              Visibility(
                  visible: search==true,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.6,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search',
                                  labelStyle: TextStyle(color: Colors.black),
                                  prefixIcon: Icon(Icons.arrow_back),

                                  ),
                            ),
                          ),
                          Icon(Icons.tune,color: Colors.black,),
                          Icon(Icons.search,color: Colors.black,),
                          Icon(Icons.more_vert,color: Colors.black,),
                        ],
                      ),
                    ),
                  ))
            ],
          )),
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildBuilderDelegate(
                childCount: 3,
                (context, index) =>
            GestureDetector(
              onTap: () => setState(() => _selected[index] = !_selected[index]),
              child: Column(
                children: [
                  Visibility(
                    visible: search==false,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 200,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: _selected[index] ? Colors.lightGreenAccent[400] : Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(1,-1),
                              blurRadius: 10
                            ),

                          ],
                        ),
                        child: Center(child: Text("looking for a teacher",style: TextStyle(color:_selected[index] ? Colors.white : Colors.black, ),)),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: search==true,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 200,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 30,),
                                  Container(
                                    width: 300,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Name",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800),),
                                        Text('discreption about teacher and course--hvhvhvfhvjvjvdjvjdvjdvjvfjhsjvjfjvsjbjbfjbvjd',maxLines: 2,overflow:TextOverflow.ellipsis,),
                                        Row(
                                          children: [
                                            Icon(Icons.star,color: Colors.lightGreenAccent,),
                                            Icon(Icons.star,color: Colors.lightGreenAccent,),
                                            Icon(Icons.star,color: Colors.lightGreenAccent,),
                                            Icon(Icons.star,color: Colors.lightGreenAccent,),
                                            Icon(Icons.star_half,color: Colors.lightGreenAccent,),
                                          ],
                                        ),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 30,
                                  width: 160,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                    color: Colors.orange[100],
                                  ),
                                  child: Center(child: Text("PROFILE")),
                                ),
                                SizedBox(width: 20,),
                                Container(
                                  height: 30,
                                  width: 160,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                    color: Colors.lightGreenAccent[400],
                                  ),
                                  child: Center(child: Text("HIRE")),
                                )
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        mouseCursor:MouseCursor.defer ,
        backgroundColor: Colors.lightGreenAccent[400],
        selectedItemColor: Colors.lightGreenAccent,
        unselectedItemColor: Colors.white,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.person_search),
        label: ""
        ),
        BottomNavigationBarItem(icon: Icon(Icons.search),
        label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person_search),
        label: ""),
      ],
      onTap: _ontap,
      currentIndex: _currentint,),
    );
  }

  _ontap(int index) {
    setState((){

      _currentint=index;
      if(_currentint==ss){
        search=true;
      }else{
        search=false;
      }
    });
  }

}


