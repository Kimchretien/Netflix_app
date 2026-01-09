import 'package:flutter/material.dart';
import 'package:netflix_app/widgets/onboarding.dart';


class OnbordingPage extends StatefulWidget {
  @override
  _OnbordingPageState createState() => _OnbordingPageState();
}
class _OnbordingPageState extends State<OnbordingPage> {

  final PageController _pageController = PageController();
  int _currentIndex = 0;
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
    backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Colors.transparent,
        leading: const Image(image: AssetImage("assets/images/symbol.png"),),
        actions: [
          TextButton(
            onPressed: (){},
            child: const Text("PRIVACY",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
            
            )),
            TextButton(
            onPressed: (){},
            child: const Text("SIGN IN",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),)
            )
        ],
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (int index){
                setState(() {
                  _currentIndex = index;
                });
              },
              children: [
                Onboarding(
                  title: "Unlimited Movies, TV Shows and More",
                  subTitle: "Watch Anywhere. Cancel Anytime.",
                  image: "assets/images/net4.jpg",
                ),
                Onboarding(
                  title: "There is a plan for Every fan",
                  subTitle: "plans starting at just \$7.99/month",
                  image: "assets/images/net2.jpg",
                ),
                Onboarding(
                  title: "cancel online any time",
                  subTitle: "join today, no raison to wait",
                  image: "assets/images/net3.jpg",
                ),
              ],
            ),
            Padding(
              padding:EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: 
                      List.generate(3, 
                      (index) =>AnimatedContainer(duration: Duration(milliseconds: 300),
                      margin: EdgeInsets.only(right: 5),
                       height: 10,width: _currentIndex == index ? 20 : 10,
                       decoration: BoxDecoration(color:_currentIndex == index ? Colors.red : Colors.white,borderRadius: BorderRadius.circular(5),),
                       )
                      )
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){}, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)
                        )
                      ),
                      child: Text("Get Started")),
                  )
                ],
              ), 
            )
          ],
        )
      ),
    );
  }
}