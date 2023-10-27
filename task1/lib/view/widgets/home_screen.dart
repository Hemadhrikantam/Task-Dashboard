import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:task1/view/dashboarddesignpage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello",
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              const SizedBox(
                height: 08,
              ),
              const Text(
                "Alex Marconi",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Card(
                      color: Colors.orange[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.access_time_outlined,
                            color: Colors.white60,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "In Progress",
                            style: TextStyle(color: Colors.white60),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Card(
                      color: Colors.blue[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shuffle_on_rounded,
                            color: Colors.white60,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Ongoing",
                            style: TextStyle(color: Colors.white60),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Card(
                      color: Colors.green[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.task_outlined,
                            color: Colors.white60,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Completed",
                            style: TextStyle(color: Colors.white60),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Card(
                      color: Colors.red[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.cancel_presentation_sharp,
                            color: Colors.white60,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Cancel",
                            style: TextStyle(color: Colors.white60),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Daily Task",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Text(
                        "All Task",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Colors.grey[600],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/img-1.png'),
                      radius: 24,
                    ),
                    Column(
                      children: [
                        const Text(""),
                        const Text("App Animation"),
                        SizedBox(
                          height: 50,
                          width: 50,
                          child:
                              Lottie.asset('assets/animations/progressline-1.json'),
                        ),
                      ],
                    ),
                    const Stack(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/img-6.jpeg'),
                          radius: 18,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/img-4.png'),
                            radius: 18,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/img-5.png'),
                            radius: 18,
                          ),
                        )
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),

              InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const DashboardDesignPage())),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/img-2.png'),
                        radius: 22,
                      ),
                      Column(
                        children: [
                          const Text(""),
                          const Text("Dashboard Design"),
                          SizedBox(
                            height: 50,
                            width: 50,
                            child:
                                Lottie.asset('assets/animations/progressline-2.json'),
                          ),
                        ],
                      ),
                      const Stack(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/img-5.png'),
                            radius: 18,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/img-4.png'),
                              radius: 18,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/img-6.jpeg'),
                              radius: 18,
                            ),
                          )
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/img-1.png'),
                      radius: 24,
                    ),
                    Column(
                      children: [
                        const Text(""),
                        const Text("UI/UX Design"),
                        SizedBox(
                          height: 50,
                          width: 50,
                          child:
                              Lottie.asset('assets/animations/progressline-3.json'),
                        ),
                      ],
                    ),
                    const Stack(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/img-5.png'),
                          radius: 18,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/img-6.jpeg'),
                            radius: 18,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/img-4.png'),
                            radius: 18,
                          ),
                        )
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
