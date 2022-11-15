
import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:highlight_text/highlight_text.dart';
/*
import 'package:functional_admob_flutter/functional_admob.dart';*/
import 'package:legalwriting/design_course/popular_course_list_view.dart';
import '../main.dart';
import 'course_info_screen.dart';
import 'design_course_app_theme.dart';
import 'models/category.dart';
import 'models/notes.dart';

class DesignCourseHomeScreen extends StatefulWidget {
  @override
  _DesignCourseHomeScreenState createState() => _DesignCourseHomeScreenState();
}

class _DesignCourseHomeScreenState extends State<DesignCourseHomeScreen> {
  CategoryType categoryType = CategoryType.ui;

  TextEditingController searchController=TextEditingController();
  FlutterTts flutterTts = FlutterTts();

  Future _speak(String text) async{
     var result = await flutterTts.speak(text);
    //if (result == 1) setState(() => ttsState = TtsState.playing);
  }

  Future _stop() async{
    var result = await flutterTts.stop();
    //if (result == 1) setState(() => ttsState = TtsState.stopped);
  }

  void ttsInit(){

  }



  @override
  Widget build(BuildContext context) {
    return Container(
      color: DesignCourseAppTheme.nearlyWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            //FunctionalAdmob.banner(adUnitId: 'ca-app-pub-8853847321207681/1187360834', adSize: AdmobBannerSize.BANNER),
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            getAppBarUI(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: <Widget>[
                      AdmobBanner(
                        adUnitId: "ca-app-pub-8853847321207681/2274352777",
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
                      getSearchBarUI(),
                      getCategoryUI(),
                      Flexible(
                        child: getPopularCourseUI(),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Builder(
          builder: (BuildContext context) {
            return Container(
              child: AdmobBanner(
                adUnitId: "ca-app-pub-8853847321207681/8326671520",
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
        )
      ),
    );
  }

  Widget getCategoryUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
          child: Text(
            'Category',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              letterSpacing: 0.27,
              color: DesignCourseAppTheme.darkerText,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Row(
            children: <Widget>[
              getButtonUI(CategoryType.ui, categoryType == CategoryType.ui),
              const SizedBox(
                width: 16,
              ),
              getButtonUI(
                  CategoryType.coding, categoryType == CategoryType.coding),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),

      ],
    );
  }

  Widget getPopularCourseUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[/*
          Text(
            'Popular Course',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              letterSpacing: 0.27,
              color: DesignCourseAppTheme.darkerText,
            ),
          ),*/
          Flexible(
            child: PopularCourseListView(
              callBack: (index) {
                moveTo(Category.popularCourseList[index].title, notes[index]);
              },
            ),
          )
        ],
      ),
    );
  }

  void moveTo(String title, MyListView listView) {
    Navigator.push<dynamic>(
      context,
      MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => CourseInfoScreen(title,listView),
      ),
    );
  }

  Widget getButtonUI(CategoryType categoryTypeData, bool isSelected) {
    String txt = '';
    if (CategoryType.ui == categoryTypeData) {
      txt = 'Notes';
    } else if (CategoryType.coding == categoryTypeData) {
      txt = 'Quiz(Coming Soon)';
    }
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: isSelected
                ? DesignCourseAppTheme.nearlyBlue
                : DesignCourseAppTheme.nearlyWhite,
            borderRadius: const BorderRadius.all(Radius.circular(24.0)),
            border: Border.all(color: DesignCourseAppTheme.nearlyBlue)),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.white24,
            borderRadius: const BorderRadius.all(Radius.circular(24.0)),
            onTap: () {
              setState(() {
                categoryType = categoryTypeData;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 12, bottom: 12, left: 18, right: 18),
              child: Center(
                child: Text(
                  txt,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    letterSpacing: 0.27,
                    color: isSelected
                        ? DesignCourseAppTheme.nearlyWhite
                        : DesignCourseAppTheme.nearlyBlue,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getSearchBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0/*, left: 18*/),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: 64,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Container(
                  decoration: BoxDecoration(
                    color: HexColor('#F8FAFB'),
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(13.0),
                      bottomLeft: Radius.circular(13.0),
                      topLeft: Radius.circular(13.0),
                      topRight: Radius.circular(13.0),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: TextFormField(
                            style: TextStyle(
                              fontFamily: 'WorkSans',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: DesignCourseAppTheme.nearlyBlue,
                            ),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: 'Search',
                              border: InputBorder.none,
                              helperStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: HexColor('#B9BABC'),
                              ),
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                letterSpacing: 0.2,
                                color: HexColor('#B9BABC'),
                              ),
                            ),
                            onEditingComplete: () {},
                            controller: searchController,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: GestureDetector(
                          child: Icon(Icons.search, color: HexColor('#B9BABC')),
                          onTap: (){
                            //show found
                            int i=0;
                            setState(() {
                              for(int j=0;j<notes.length;j++){
                                Category.popularCourseList[j].found=false;
                                if(searchController.text.trim().isNotEmpty){
                                  var element=notes[j];
                                  for(int i=0;i<element.children.length;i++){
                                    if(element.children[i].text.toLowerCase().contains(searchController.text.toLowerCase())){
                                      Category.popularCourseList[j].found=true;
                                      break;
                                    }
                                  }
                                }

                              }
                            });

                            //to highlight words
                            words.clear();
                            if(searchController.text.trim().isNotEmpty){
                              words.putIfAbsent(searchController.text, () => HighlightedWord(
                                textStyle:  TextStyle(
                                  color: Colors.blue,
                                ),
                              ),);
                            }


                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }

  Widget getAppBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 18),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    letterSpacing: 0.2,
                    color: DesignCourseAppTheme.grey,
                  ),
                ),
                Text(
                  'Legal Writing and Methods',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    letterSpacing: 0.27,
                    color: DesignCourseAppTheme.darkerText,
                  ),
                ),
              ],
            ),
          ),
          /*Container(
            width: 60,
            height: 60,
            child: Image.asset('assets/design_course/userImage.png'),
          )*/
        ],
      ),
    );
  }
}

enum CategoryType {
  ui,
  coding,
  basic,
}
