class Category {
  Category({
    this.title = '',
    this.imagePath = ''
  });

  String title;
  String imagePath;
  bool found=false;

  /*static List<Category> categoryList = <Category>[
    Category(
      imagePath: 'assets/design_course/interFace1.png',
      title: 'User interface Design'
    ),
    Category(
      imagePath: 'assets/design_course/interFace2.png',
      title: 'User interface Design'
    ),
    Category(
      imagePath: 'assets/design_course/interFace1.png',
      title: 'User interface Design'
    ),
    Category(
      imagePath: 'assets/design_course/interFace2.png',
      title: 'User interface Design'
    ),
  ];
*/
  static List<Category> popularCourseList = <Category>[
    Category(
      imagePath: 'assets/design_course/interFace3.png',
      title: 'Introduction'
    ),
    Category(
      imagePath: 'assets/design_course/interFace4.png',
      title: 'Sources of Law'
    ),
    Category(
      imagePath: 'assets/design_course/interFace3.png',
      title: 'Case Reading'
    ),
    Category(
      imagePath: 'assets/design_course/interFace4.png',
      title: 'Essay Writing & Answering'
    ),
    /*Category(
      imagePath: 'assets/design_course/interFace3.png',
      title: 'Referencing and Plagiarism',
      lessonCount: 12,
      money: 25,
      rating: 4.8,
    ),*/
    Category(
      imagePath: 'assets/design_course/interFace4.png',
      title: 'Legal Reasoning',
    ),
    Category(
      imagePath: 'assets/design_course/interFace3.png',
      title: 'Negotiation Skills'
    ),
    Category(
      imagePath: 'assets/design_course/interFace4.png',
      title: 'Presentation Skills'
    ),
    Category(
      imagePath: 'assets/design_course/interFace4.png',
      title: 'Introduction Alternative Methods',
    ),
  ];
}
