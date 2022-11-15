import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:legalwriting/design_course/models/notes.dart';
import 'design_course_app_theme.dart';

class CourseInfoScreen extends StatefulWidget {
  String title;
  MyListView listView;

  CourseInfoScreen(this.title,this.listView);

  @override
  _CourseInfoScreenState createState() => _CourseInfoScreenState();
}

class _CourseInfoScreenState extends State<CourseInfoScreen>
    with TickerProviderStateMixin {
  FlutterTts flutterTts = FlutterTts();


  var icon=Icon(
    Icons.play_arrow,
    color: DesignCourseAppTheme.nearlyWhite,
    size: 30,
  );

  Future _speak(String text) async{
    var result = await flutterTts.speak(text);
    setState(() {
      icon=const Icon(
        Icons.stop,
        color: DesignCourseAppTheme.nearlyWhite,
        size: 30,
      );
    });
    //if (result == 1) setState(() => ttsState = TtsState.playing);
  }

  Future _stop() async{
    var result = await flutterTts.stop();
    setState(() {
      icon=const Icon(
        Icons.play_arrow,
        color: DesignCourseAppTheme.nearlyWhite,
        size: 30,
      );
    });
    //if (result == 1) setState(() => ttsState = TtsState.stopped);
  }



  final double infoHeight = 364.0;
  AnimationController? animationController;
  Animation<double>? animation;
  double opacity1 = 0.0;
  double opacity2 = 0.0;
  double opacity3 = 0.0;

  /*String title;
  ListView listView;

  _CourseInfoScreenState(this.title,this.listView);*/

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController!,
        curve: Interval(0, 1.0, curve: Curves.fastOutSlowIn)));
    setData();
    /*flutterTts.setStartHandler(() {
      setState(() {
        ttsState = TtsState.playing;
      });
    });*/

    flutterTts.setCompletionHandler(() {
      setState(() {
        icon=const Icon(
          Icons.play_arrow,
          color: DesignCourseAppTheme.nearlyWhite,
          size: 30,
        );
      });
    });

    /*flutterTts.setProgressHandler((String text, int startOffset, int endOffset, String word) {
      setState(() {
        _currentWord = word;
      });
    });*/

    /*flutterTts.setErrorHandler((msg) {
      setState(() {
        ttsState = TtsState.stopped;
      });
    });*/

    /*flutterTts.setCancelHandler((msg) {
      setState(() {
        ttsState = TtsState.stopped;
      });
    });*/
    super.initState();
  }

  Future<void> setData() async {
    animationController?.forward();
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity1 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity2 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity3 = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double tempHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).size.width / 1.2) +
        24.0;
    return Container(
      color: DesignCourseAppTheme.nearlyWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(

          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 25, ),
                    child: AdmobBanner(
                      adUnitId: "ca-app-pub-8853847321207681/9605159832",
                      adSize: AdmobBannerSize.BANNER,
                      listener: (AdmobAdEvent event,
                          Map<String, dynamic>? args) {
                        //handleEvent(event, args, 'Banner');
                      },
                      onBannerCreated:
                          (AdmobBannerController controller) {
                        // Dispose is called automatically for you when Flutter removes the banner from the widget tree.
                        // Normally you don't need to worry about disposing this yourself, it's handled.
                        // If you need direct access to dispose, this is your guy!
                        // controller.dispose();
                      },
                    ),
                  )
                  ,
                  AspectRatio(
                    aspectRatio: 1.2,
                    child: Image.asset('assets/design_course/webInterFace.png'),
                  ),
                ],
              ),
              Positioned(
                top: (MediaQuery.of(context).size.width / 1.2) - 24.0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: DesignCourseAppTheme.nearlyWhite,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(32.0),
                        topRight: Radius.circular(32.0)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: DesignCourseAppTheme.grey.withOpacity(0.2),
                          offset: const Offset(1.1, 1.1),
                          blurRadius: 10.0),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: SingleChildScrollView(
                      child: Container(
                        constraints: BoxConstraints(
                            minHeight: infoHeight-kBottomNavigationBarHeight,
                            maxHeight: tempHeight > infoHeight
                                ? tempHeight-kBottomNavigationBarHeight
                                : infoHeight-kBottomNavigationBarHeight),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 32.0, left: 18, right: 16),
                              child: Text(
                                widget.title,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  letterSpacing: 0.27,
                                  color: DesignCourseAppTheme.darkerText,
                                ),
                              ),
                            ),

                            Expanded(
                              child: AnimatedOpacity(
                                duration: const Duration(milliseconds: 500),
                                opacity: opacity2,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16, top: 8, bottom: 8),
                                  child: widget.listView,
                                ),
                              ),
                            ),

                            SizedBox(
                              height: MediaQuery.of(context).padding.bottom,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: (MediaQuery.of(context).size.width / 1.2) - 24.0 - 35,
                right: 35,
                child: ScaleTransition(
                  alignment: Alignment.center,
                  scale: CurvedAnimation(
                      parent: animationController!, curve: Curves.fastOutSlowIn),
                  child: Card(
                    color: DesignCourseAppTheme.nearlyBlue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    elevation: 10.0,
                    child: Container(
                      width: 60,
                      height: 60,
                      child: Center(
                        child: GestureDetector(
                          child: icon,
                          onTap: (){
                            if(icon.icon==Icons.play_arrow) {
                              String speakString = "";
                              widget.listView.children.forEach((element) {
                                if (element.highLight) {
                                  speakString += " ${element.text}";
                                }
                                //print("words: $element");
                              });
                              if (speakString.isNotEmpty) {
                                _speak(speakString);
                              }
                            }
                            else{
                              _stop();
                            }



                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
        bottomNavigationBar: Builder(
          builder: (BuildContext context) {
            return Container(
              child: AdmobBanner(
                adUnitId: "ca-app-pub-8853847321207681/1187360834",
                adSize: AdmobBannerSize.BANNER,
                listener: (AdmobAdEvent event,
                    Map<String, dynamic>? args) {
                  //handleEvent(event, args, 'Banner');
                },
                onBannerCreated:
                    (AdmobBannerController controller) {
                  // Dispose is called automatically for you when Flutter removes the banner from the widget tree.
                  // Normally you don't need to worry about disposing this yourself, it's handled.
                  // If you need direct access to dispose, this is your guy!
                  // controller.dispose();
                },
              ),
            );
          },
        ),
        resizeToAvoidBottomInset: true,
      ),
    );
  }

  Widget getTimeBoxUI(String text1, String txt2) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: DesignCourseAppTheme.nearlyWhite,
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: DesignCourseAppTheme.grey.withOpacity(0.2),
                offset: const Offset(1.1, 1.1),
                blurRadius: 8.0),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 18.0, right: 18.0, top: 12.0, bottom: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                text1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  letterSpacing: 0.27,
                  color: DesignCourseAppTheme.nearlyBlue,
                ),
              ),
              Text(
                txt2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                  letterSpacing: 0.27,
                  color: DesignCourseAppTheme.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
}
