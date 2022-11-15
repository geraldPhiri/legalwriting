import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';

import '../design_course_app_theme.dart';

Map<String, HighlightedWord> words = {};
Map<int, String> ttsMap={};

class MyHighlight extends StatefulWidget{
  String text;
  Map words;
  bool highLight=false;

  var textStyle, textAlign;

  MyHighlight({this.words:const{},this.text="", this.textAlign=null, this.textStyle});

  @override
  State<StatefulWidget> createState() {
    return MyHighlightState();
  }
}

class MyHighlightState extends State<MyHighlight>{

  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: TextHighlight(words:words,
        text: widget.text,
        textAlign: TextAlign.justify,
        textStyle:  TextStyle(
          backgroundColor: widget.highLight?Colors.yellow:null,
          fontWeight: FontWeight.w200,
          fontSize: 15,
          letterSpacing: 0.27,
          color: DesignCourseAppTheme.grey,
        ),


      ),
      onTap: (){
        setState(() {
          widget.highLight=!widget.highLight;
          /*int key=;
          if(ttsMap.containsKey(key)){
            ttsMap.remove(key);
          }
          else{
            ttsMap[key]=widget.text;
          }*/
        });
      },
    );
  }
}


class MyListView extends StatefulWidget{
  List<MyHighlight> children;

  MyListView({required this.children});

  @override
  State<StatefulWidget> createState() {
    return MyListViewState();
  }
  
}

class MyListViewState extends State<MyListView>{
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: widget.children,
    );
  }
}


MyListView page1=MyListView(
  children:  [
    MyHighlight(
      words:words,
      text:
      "Research can be a tiresome and somewhat a boring task. This is because Zambia has not yet invested in making legal information available online which would save people a lot of money and time. There is limited information online and most of it in compiled in hundreds of essays by various students which can be exhausting for one looking for brief references. But just because it is a tedious task does not mean research is not a vital skill to develop."
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),



    ),
    MyHighlight(words:words,
      text: 
      "The importance of research"
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      "One cannot memorize all the laws and cases out there; therefore, research is a necessary skill to have. When a lawyer is approached for legal advice or representation, he or she must conduct research in order to take action. "
          "The quality of advice given to client, or the quality of court presentation depends on the quality of research that was conducted.  Law students are given assignments and problems to solve in order to develop research writing skills. Students must learn where to find the law so as give correct advice."
          " Law students are expected to read and write excellent English, in order to develop writing legal writing skills. Therefore, the English and grammar that is presented by a law student must be of high standard. Legal research is important because:"
      """•	It enables a lawyer to be informed of developments in his or her area of practice
    •	it enables a student to  learn how cases are documented and stored
    •	It enables a student to learn where to find scholarly articles
      •	It enables a student to learn citation of :
      	Court cases
      	Oral materials
      	Statutory materials books and periodicals
    •	It enables one to make contributions to journals e.g. Zambia Law Journal"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """A lawyer has a duty to conduct adequate research of a matter that he or she is handling. This was discussed in the Canadian case of Lougheed Enterprises Ltd. v. Armbruster (1992), 63 B.C.L.R. (2nd) 316 (C.A.). The court held that a lawyer has a duty to be aware of all cases on point decided within the judicial hierarchy of British Columbia, and to refer the court to any on which the case might turn. The court noted that “on point” does not mean cases whose resemblance to the case at bar is in the facts. It means cases which decide the same point of law. You may think you can justify not referring to a binding decision because it is distinguishable on its facts.
      However, such a determination is for the court to make: not the lawyer."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """The court further stated that a lawyer cannot discharge his duty by not bothering to determine whether there is a relevant authority. Ignorance is no excuse. A lawyer is not expected to search out unreported cases, although if counsel knows of an unreported case on point, he must bring it to the court’s attention.
This ruling on unreported cases is in the context of counsel’s duty to the court.
The importance of conducting legal research was also discussed in Gibb v. Jiwan, [1996] O.J. No. 1370 [Q.L.] (Ont. Gen. Div.) (canadian case).
The case involved a dispute over priority to claims against land registered under the Ontario Land Titles Act. After deciding the point of law, Mr. Justice Ferguson commented extensively on the failure of counsel to conduct adequate research, noting the professional obligation of counsel:
• To be competent
• To keep abreast of developments in their own area of practice
• To give their clients advice based on an adequate consideration of the applicable law
• To inform the court of relevant material authorities regardless of whether they support or contradict the position counsel is advocating."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      "Sources of Information"
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Paper form of information sources include statutes, books, journals, encyclopedias.
Advantages: Paper information sources are advantageous because they are portable and easily accessible. One does not require electrical equipment to read a book or newspaper and it can be carried anywhere and read in a library, at home, or on public transport. A second advantage of paper sources is that, because there is considerable effort and expense involved in producing them, they tend to be more reliable than some electronic sources. Nowadays almost anyone can produce web-based material for little or no cost and so the content of many websites is trivial or inaccurate. Books, certainly those produced by reputable publishers, tend to be more trustworthy because they have been through a process of selection, editing and proof-reading.
Disadvantages: The main disadvantage of many paper information sources lies in the difficulty of updating them. Publishers will print a certain number of copies of a book and the material will not be updated until a new edition is brought out, perhaps several years later. An example of this is Lillian Mushota’s Family Law in Zambia: Cases and Materials book. It is recognized by Zambian law schools as the most credible book in relation to Family Law as a course. But this book has made reference to the English Matrimonial Causes Act which has been replaced by local legislation. Many books are never updated at all. The other major disadvantage of the paper source is due to the difficulty of indexing the contents of any book or periodical thoroughly. Electronic sources can have full text indexing where every significant word in the text is included in a subject index. With print materials even the most skilled of indexers will produce an index with a limited number of subject keywords. And lastly, the sheer size of paper information sources presents challenges about how to store them. You can easily judge this by comparing the space required to store a 30-volume print encyclopedia with its equivalent to phone storage. However, we should recognize that paper sources still have an important part to play in any information task. The trick lies in recognizing when it will be quicker and easier to use paper sources rather than their electronic relations."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Web based research: This type of research is carried out online. It is advantageous in the sense that there is accurate and reliable information on the Internet. In addition, some information on the Internet is appropriate for academic research.  www.lawteacher.com has a variety of cases and materials in relation to courses such as Tort and Contract were common law is often applied. The disadvantage that is posed with this is that not all information is available on the Internet. There is a ridiculously low amount of Zambian material and cases online. A recommendation for one looking for cases would be to read through other student’s thesis papers. In addition, most of the information that is available on the internet is not scholarly and should not be used for an academic assignment. In addition, some information on the Internet is inaccurate and unreliable."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Types of Legal Research"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Research for litigation purposes: This type of research is conducted when a lawyer is presented with a problem, or a request for legal advice.it is important to:
•	Identify legal issues that arise
•	Determine where to find the law
•	Use best available reliable and complete source of law
•	Also present adverse view of the law and then make a distinction in order to convince the court to take certain position
Law students learn the skill of conducting research for litigation purposes through problem solving questions. When a student is conducting research, the first source of law is legislation (this includes the Constitution as the supreme law of the land). Principal legislation and subsidiary legislation may be looked at. These may be supplemented by parliamentary debates. English sources such as Halsbury’s laws may be used as secondary sources of legislation. Case law, from the Zambia Law Reports and English sources such as the All England Law Reports, journals such as the Zambia Law Journal and reports from the Zambia Law Development Commission may also be looked at. Once all the law on the subject has been collected it must be analyzed and presented. When writing, it is important to acknowledge all sources through proper citations."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Research for Policy/Law Reform: When research is conducted for policy or law reform purposes, the following must be observed. Select and formulate the research problem: The problem is identified from the problems that are encountered by human beings in their relation with nature and society.
•	Literature review: this involves reading whatever has been published and appears relevant to the research topic. This is done in order to acquire knowledge about current theories and research and area of study
•	Hypothesis formulation: a tentative concrete and testable answer to a formulated problem
•	Research design and sampling techniques: guides research in collecting observing analyzing and interpreting facts. It specifies the most adequate operations that can be performed in order to test specific hypothesis under given conditions.
•	Data collection: e.g. interviews, review of old records, participant observation
•	Data analysis: processing of data in order to obtain results and interpreted findings Drawing conclusions: this involves summarizing the aims of the research, comparing them with the findings, and drawing conclusions on how and which manner the goal has been achieved
•	Recommendations for reform: these are made based on the conclusion that is made
Research conducted by Zambia Law Development Commission (ZDLC) The ZDLC was created pursuant to an act of parliament, the Zambia Law Development Commission Act No 38 of 1996. Its functions are as follows:
•	Revise and reform the law in Zambia
•	Codify unwritten laws
•	Remove archaic legislation
•	Review and consider recommendations for law reform referred to the commission by the Minister and members of the public
•	Hold seminars and conferences on legal issues
•	Translate legislation in to local languages
Examples of research conducted by the ZLDC include review of Intestate Succession Act, law on community service, the law on rape and allied offences."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    )
  ],
);
MyListView page2=MyListView(
  children: [
    MyHighlight(words:words,
      text: 
      """This session is one of the most essential sessions in the entire four years in which one studies for their LLB. This is because almost every course which a student will have to endure requires knowledge of the sources of law. As they say "a good lawyer is not one who knows the law, but one who knows where to find it". This session gives what is hoped to be sufficient notes and elaborations on the sources of law in Zambia."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """The constitution of Zambia"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Constitution is the most fundamental law of the land. Meaning it is the supreme law of the land. Whenever one is faced with a problem solving question, they should refer to the constitution first before any other law. The constitution is sometimes encompassed as a statute when one refers to sources of law and mentions statutes. It sets out the structure and powers of government, and it indicates people's rights and duties in relation to the state. It helps to promote an orderly system of governing a country. It explains the structure of the government, how government is formed, and how laws are made. In addition, it describes who a citizen of a country is, and how he is protected. It also gives government institutions their powers and functions, and it sets limits on the exercise of these powers. To this effect, it provides for the creation of the three branches of government, namely,

The executive: includes the President Ministers and civil servants.

The legislature or parliament the judiciary: comprises of local courts, magistrate courts, the high court and the Supreme Court.
A constitution is supposed to be enacted out of the desires and expectations of the people. Thus, all other laws must comply with it in order for them to be valid. This means that any other law which is inconsistent with the constitution will be held to be null and void. The case of Thomas Mumba v The People (1984) ZR 38 is an example of when this principle was upheld."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Acts of parliament"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Parliament is the branch of government that makes the laws of the land together with the President in the National Assembly. Acts of Parliament are a vast source of law and are sometimes referred to as statutes.

Laws that are enacted by parliament are known as acts of parliament. Parliament may delegate its powers to make laws to ministers. This type of law is known as subsidiary legislation or Statutory Instruments. It is contained in subsidiary legislation which is drafted under the authority of, and in line with, a parent act of parliament. The local government is also enacted to make by laws, which are applicable in their municipalities.
"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """How laws are enacted"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """The government or any member of parliament who wishes to have a certain law passed by parliament brings the proposed law to parliament. A proposed law is called a bill. There are 3 types of bills:

Government bill: presented by a government minister

Private members bill: presented by a member of parliament who is not a government minister.

Private bill: presented by outside bodies and affects limited sections of the public

Stages through which a bill must pass before it can become law

First reading: the member or minister who is presenting it to parliament introduces it by reading out its title

Second reading: the presenter of the bill gives details of what it is about, and it is debated in detail
Committee stage: the bill is then considered clause by clause by a committee of a few members, or by the whole house. This is done to perfect the bill, and to ensure that the ideas that it contains are properly expressed

Report stage: the committee that considered the bill reports back to parliament

Third reading: the bill is read to the house for a third time, and it must be satisfied that the bill has been properly handled or dealt with.

Presidential assent: at this stage the bill is presented to the president for signing. When it is signed, it becomes law.
Current legislation
The statutory laws of Zambia are contained in a set of loose leaf volumes known as the Laws of Zambia. The Attorney General is empowered to revise the laws of Zambia. Revision of the laws is necessitated by on-going changes and developments in the legal system. The laws of Zambia were last revised in 1997, and they are contained in the Laws of Zambia (1995 revised edition), which came in to force in 1997.
Where there is a gap in local legislation, the law and practice that is for the time being observed in England and in the court of justice shall apply.
See: Kausa V Registrar of Societies (1977) Z.R 195"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Judicial decisions"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """The interpretation of statutes as they are applied by the courts results in the creation of binding and/or persuasive judicial precedents. When a higher court decides on a case or passes a judgment, a lower court will have to follow that judgment in the future if presented with a case with similar facts. Those are binding precedents which are created hence judicial decisions being a source of law. Decisions made by lower courts can be cited as well and have been known to be persuasive in higher courts. For example, the Supreme Court would be persuaded to follow a decision of the High Court. They do not have the binding force, they can only be persuasive. Zambian precedents take priority over precedents from other parts of the world. Where there is a lacuna in our laws, English precedents are resorted to.
English common law, equity, and statutes English law (cases) principles of equity originally applicable in the English chancery courts, as well as selected English statutes are applicable in Zambia. This law is resorted when there are gaps in the local legislation and case precedents. These sources of law are applicable in Zambia because of the two statutes enacted namely;
	&gt; The English Law (Extent of Application Act) Chapter 11 of the laws of Zambia
	&gt; The British Acts Extension Act, Chapter 10 of the Laws of Zambia
	Shamwana v The People (1982) ZR122, on the application of chapter 11 of the laws of Zambia"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Customary law"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Local customary law is applicable to the majority of indigenous Zambians. Customary law though recognized as a primary source of law, has a limitation in terms of its application in Zambia. Customary Law is only applicable in Zambia so far as it is not repugnant to any written law. In other ways, the custom being applied should contravene what has been enacted in the Constitution, Acts of Parliament, inter alia.
"The Supreme Court held that the custom in question, i.e aka mutwe, was repugnant to the written law and the principles of natural justice." (Kaniki v Jairus (1967) ZR 71)"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """International Law"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """International Law is divided in to customary international law and bilateral or multilateral agreements.
Bilateral and multilateral agreements
These are only applicable in Zambia when they are ratified or acceded to. In addition, they can only be enforced by the courts when parliament has passed the enabling legislation.
See: Zambia Sugar PLC V Fellow Nanzaluka SCZ No 38 of 2000"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Customary international law"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """The position of customary international law in Zambia is less clear. However, in England, it is deemed to be part of the law of the land, and it is applicable by British courts, provided they do not conflict with statutory laws.
Modern textbooks
The scholarly books have a persuasive force when applied correctly in the courts. These books can be cited in instances where a definition has not been laid down by a statute or case law. The scholarly works can therein be cited and may possess the power of persuasion in court."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
  ],
);
MyListView page3=MyListView(
  children: [
    MyHighlight(words:words,
      text: 
      """In all honesty, most of the content when it was being presented to us seemed like gibberish. Until one starts learning courses with a lot of case law, that is when most of this will make sense. So my advice is to not rush into it as case reading is a skill which is developed and mastered overtime.
"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """HOW TO READ A REPORTED CASE"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """There are two types of cases reported, namely criminal cases and civil cases. The difference between these cases must be understood.
1. The People v Banda (1993)1 ZR 160(H.C)
2. Mwansa v Kamanga (1999) 1WLR 562(S.C)
3. Ex Parte Addleson (1948)2ALLER16
Finding a case. Each case that goes through the courts is identified by specific reference (citation). This reference makes it possible for lawyers, magistrates and judges to be able to find the case more easily. A case reference contains the following:-
i.	 A case name
ii.	The year
iii.	The volume
iv.	The law reports in which the case was reported
v.	The page in the volume on which the case starts
vi.	The court in which the case was decided"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """CASE NAME"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """A reference will always start with the name of the case that is the names of parties involved in a case.  In a criminal case 1. The People v Banda (the parties are State v Accused) ‘The People’ refers to state. The other party is the accused (in our example Banda). In criminal cases which were decided before 1964 the letter ‘R’ was used instead of ‘The People’. E.g. R v Mainza Chona (1962) R and N.L.R 368 This is because prosecutions then were instituted on behalf of the King  or Queen of England. ‘R’ refers to Latin Rex (King) or Regina (Queen).
In a civil case 2. Mwansa v Kamanga (Parties: Plaintiff Vs Defendant or Appellant Vs Respondent) in action proceedings, the proceedings are started by way of writ of summons. The procedure is used when there is a fundamental difference between parties as far as the facts of the case are concerned.
3. Ex – Parte Addleson (Parties are: Applicant and/or Respondent)

In application proceedings the proceedings are started by way of “notice”.
        This procedure is used when there is no fundamental difference between the parties as far as the facts of the case are concerned. In other words, they more or less agree. These proceedings normally relate to one party, namely the applicant.
        In re Gault, 387 U.S. 1 (1967)             ‘in re’ means in the case of"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """YEAR AND VOLUME OF CASE REPORT Case one can be found in the first volume of 1993 Case two can be found in the first volume of 1999 Case three can be found in the second volume of 1948 Series of law reports
The People v Banda (1993)1 Zambia Law Reports 160(H.C) Mwansa v Kamanga (1999) 1Weekly Law Reports 562(S.C) Ex Parte Addleson (1948)2All England Law Reports 16. Pages where case report starts
The People v Banda (1993)1 Zambia Law Reports 160 case starts on page 160 Mwansa v Kamanga (1999) 1Weekly Law Reports 562) starts on page 562                3.   Ex Parte Addleson (1948)2All England Law Reports 16 starts on page 16
Court where the case was decided. The following citations are for court judgments that have not yet been reported
Banda and Phiri v Siliya(2011 HP/EP/11&39) [2012]ZMHC39
‘Banda and Phiri v Siliya’ is the case name (2011 HP/EP/11&39) is the case number. It means the case was commenced in 2011 in the High Court, EP denotes the nature of the case; an Election Petition 11&39 denotes the cause number of the case. ‘[2012] ZMHC39’is the media neutral citation. It means the case was decided in 2012 in the Zambian High Court. Simeza and others v Mzyeche (APPEAL NO. 87/2011) [2011] ZMSC 3 (25 November 2011); SCZ JUDGMENT NO. 23 OF 2011 ‘Simeza and others v Mzyeche’ is the case name ‘(APPEAL NO. 87/2011)’ is the case number. It was appeal number 87 in 2011 ‘[2011] ZMSC 3’ is the media neutral citation. It means the case was decided in 2011 in the Zambian Supreme Court. 25 November 2011is the date on which judgement was passed SCZ JUDGMENT NO. 23 OF 2011 is the other citation. It means Supreme Court judgement number 23 of 2011.    The People v Banda (1993)1 ZR 160(H.C)  This citation is for a case that is reported in the Zambia law reports ‘(H.C)’ means it was reported in the High Court
“Court of first instance” and the court “the court aquo” The name, the court of first instance is used to indicate the court in which the case was heard for the first time.
The court aquo (aquo means from where) means the court where the case was first heard before it came to the present court of appeal.
Structure of a reported decision Judges names. These appear under the name of the court where the matter is heard. The abbreviation ‘J’ stands for judge. Thomas Mumba v The People (1984) ZR 39 Chirwa, J In a judgment that has not yet been reported in the Zambian law reports, the name of the judge will appear at the bottom of the case."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Date on which case was heard there is a date under the names of judges. This is the date on which the matter was heard.
S v Makua 1993(1) SA562 (SCA) 3RD November 1992 Note: most Zambian cases do not indicate the date on which the case was heard
Catch phrase also referred to as “fly note”. These are put in point form and used to get a rough idea or impression of what the case is about.
The People v Banda (1993)1 ZR 160(H.C) Traffic offences – Driving with an excessive concentration of alcohol in the blood – contravention of Road Traffic Act – sentence – importance of evidence as to manner of accused’s driving of vehicle and traffic condition reiterated.
Mwansa v Kamanga (1999) 1WLR 562(S.C) Negligence – Liability for – motor vehicle collision whether collision due to negligence of respondent – Respondent pleading sudden, unforeseen and uncontrollable blackout resulting in his inability to control vehicle. Ex- Parte Addleson (1948)2ALLER16 Advocate – admission in cape – Requisites – Necessity for applicant to have obtained degree.
Head Note This is also written by the editor of the law report. This is a summary of the case. It includes all aspects of the case that editor considers to be important. It usually includes the area of law that the case is concerned with as well as the “ratio decidendi” of the case."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Summary of heads of arguments this is a summary of the arguments and authorities which the lawyers presented to the court. This does not appear in all cases.
Date on which judgment is given sometimes a court case is heard on one day and a decision is given on the same day. However it often happens that the judge may not be able to give judgment on the same day on which the case was heard. When a judgment is given on a different day to the day on which the case was, the words Cur Adv vult will be found. This is short for Latin Curia advisari vult meaning the court wishes to consider its decision or verdict. These words are followed by “Postea” another Latin word for afterwards. Immediately following will be the date on which the judgment was give.
In Zambia, the date on which judgment was given will appear as follows:
Banda and Phiri v Siliya(2011 HP/EP/11&39) [2012]ZMHC39  Before the Hon. Mr. Justice C. Kajimanga this 13th day of April, 2012
JUDGMENT  (HR Cheeseman p:12); M L Barron Most often the judgment will take the following form: First the facts are given Discussion of legal principles involved Decision is given in light of  the relevant legal principles An order is given An order regarding costs
Examples of order of the court Thomas Mumba v The People (1993)1 ZR 160(H.C)
Mwansa v Kamanga (1999) 1WLR 562(S.C)  “The result is that the appeal fails and is dismissed Ex – Parte Addleson 1948 (2) SA 16 (E) The application consequently must be denied Order as to costs after a case has been completed, the costs must be paid. The costs are the expenses involved in the case. The presiding officer will stipulate which party has to pay which costs. Sometimes one party is ordered to pay both his as well the other party’s expenses”"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
  ],
);
MyListView page4=MyListView(
  children: [
    MyHighlight(words:words,
      text: 
      """The session of essay writing is perhaps the most essential aspect of your legal foundation. This is because, in the words of my lecturer, “lawyers write!” This might seem like a light thing but in practicality, as a lawyer, one will need to acquire an above average skill in essay writing as majority of the questions faced are problem solving essay questions.
For an essay to be considered good it is not enough to only give thought to the content i.e. the relevant law and commentary, careful thought must also be given to the way the essay is constructed. A good essay must demonstrate the following: A fundamental basis of accurate and relevant knowledge about the legal topic that is the subject of the essay question. A vast range of appropriate research for the subject matter, Effective use of materials sourced by integrating it into essay and used to strengthen your argument demonstrating that you understand the material and the role it plays in your work.  It should exemplify the ability to filter out peripheral data and only focusing on the central issue raised by the question. The essay should have a flowing line of argument and a clear structure including an introduction and conclusion. An appropriate balance between description and analysis. Should have good written communication skills producing a coherent and eloquent piece of work.  It should be well referenced using the style which is appropriate to your learning institution."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Answering Problem Questions"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """A problem question is a set of hypothetical facts that raises at least one question, usually more, that requires reference to the Law to be answered.  Different skills are required to answer these questions. Some of the skills involved are:
ANALYSIS; analysing the question and forming a clear view of its scope and requirements.
PREPARATION; Research, reading and planning: effectively, finding the answer to the question.
WRITING; composing a logical and structured answer to the question.
POLISH: Reviewing the essay for flow, accuracy and ensuring the presentation is appropriate and the referencing complete.
The ability to sort through the mass of facts and identify those that are pertinent, those that set the scene, and to oust any potential red herring.  Possessing sufficient knowledge of the area of law in order to identify a potential basis for legal action, to establish a starting point for research, and to be able to understand the law that is uncovered during the research process.  Have the necessary research skills to access the relevant statutes and case law. Writing skills to enable you to structure an answer. The ability to apply the law to the facts of the question in order to determine the extent of the parties’ legal liability."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),

  ],
);
MyListView page5=MyListView(
  children: [
    MyHighlight(words:words,
      text: 
      """The fundamental to be learned in this session will be the backbone of your entire legal career. This session will enable you to analyse and solve legal problems which is something a lawyer will do throughout their career.
The process of legal reasoning can be illustrated by the following example: The facts of the case were as follows: Kangwa knocked on Mumba’s front door. When Mumba answered the door, Kangwa said ‘I hate you and I want you to die’. He then shot Mumba in the head, killing him instantly. Kangwa was not insane.
The Legal issue in this case is to ascertain whether Kangwa is criminally liable for the murder of Mumba.
The law under section 200 of the Penal Code of Zambia defines murder as: “Any person who of malice aforethought causes the death of another person by an unlawful act or omission is guilty of murder.” The next step in the process is to apply the law to the facts of the case:
We are told that Kangwa is not insane. Therefore, he was of sound mind at the time of the killing which removes the defence of insanity from the equation. Was the killing unlawful? There is nothing to suggest that Kangwa was acting in self-defence, was of diminished responsibility, had suffered temporary loss of self-control or was killing in pursuit of a suicide pact. Kangwa killed Mumba by shooting him in the head. The killing is therefore unlawful.  Causes death to another person: Mumba was a human being. There is nothing to suggest that it was during a time of war.  Intention to kill or cause grievous bodily harm is illustrated by Kangwa’s words and actions.  Taking into consideration all the elements one can conclude that Kangwa is criminally liable for the murder of Mumba.  It is not always as straightforward as this but students must always remember to apply the below formula:  “FILAC”  Facts- Correctly identify the relevant facts, sometimes obvious, sometimes not.  Issues- Identify relevant issues to be researched. These arise from the facts, usually stated in the form of legal questions that the client needs answered. Law- Find the relevant law. Use secondary sources – broad overview. Narrow in on primary sources Analysis/Application of law to facts- Apply the relevant law to the facts to analyze the way a judge would decide the matter given the same set of facts Conclude- Communicate results of the research problem – be clear, accurate, concise  """
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """LEGAL PHILOSOPHY (JURISPRUDENCE)"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """In order to appreciate what is behind the veil of legal philosophy, we need to firstly ask the following questions. Does law consist of rules only, or is there a law that is higher than the legal rules? (b)   If there is a higher law, what happens if a state’s laws are in conflict with this higher law?  (c)  Under what circumstances would it be justified to disobey state’s law if they are in conflict with the higher law? See Feliya Kachasu v AG
The above questions have been the source of controversy among legal philosophers. This is particularly so between the proponents of natural law on one hand and those of the positivists on the other.nk
For natural law proponents, law is a social necessity based on the moral perceptions of the nation and the individuals of the nation and any law which violates certain moral codes is not valid at all. They say human law is based on certain universal principles discoverable through reason or revelation which are seen as being external, immutable and ultimately based on the nature of human beings.
However, natural law philosophers do not agree on all aspects. In the first place they have had different views on what this “natural law” actually is.
For some it is something like the laws of the physical universe, such as gravity. For others it was part of the divine law, created by God and found in the Bible.
In the modern period natural law is regarded as something universal to all people that can be known by human reason. A last point of view is that natural law is simply a set of moral or ethical rules.
The second aspect on which natural law philosophers disagree deals with the question of what happens if natural law and state law are in conflict.  Some natural law proponents argue that in such a case the state law will be invalid. In this case therefore, natural law determines the validity of human laws. Others on the other hand, argue that it simply means that it is a bad law. In this regard natural law also determines whether the law is a just law.
The law of positivism arose as direct result of the advances in the natural sciences in the 19th century. The idea was that the law must be a science in the way that, for instance, physics and biology are sciences. Proponents of legal positivism felt that natural law was not scientific enough because it relied on a system of rules that could not be verified. Positivism agreed that, even if something like natural law existed, it could not be used in legal science because it cannot be seen or touched. As a result, positivists see law as either a command from sovereign to the citizens or as a system of rules that determine human conduct. Legal science deals with the law as it is. In this scheme what the law ought to be is not of primary importance. According to positivists, the validity of law is not dependent on some higher law, but on the internal rules of a specific community.
For a positivist philosopher, law is specifically created and put forward by certain persons in society who are in a position of power and who then provide the sole source and validity of such law. To positivists what is law is essentially a question of fact to be answered by empirical reference to and an analysis of objectives of social phenomenon which can originate, exist and be explicable only within its own terms even though it may have some identities or linkages with other social factors such as religion, morality and or ethics. Whether law is good or bad it is law as long as it has passed through enactment.
It seems clear, therefore that the natural law approach is that law and morality is closely related. If a law is immoral, it is unjust law (a bad law). For positivists, law and morality are distant apart and have nothing to do with one another. An immoral law is still law if it is made by a competent authority."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),

  ],
);
MyListView page6=MyListView(
  children: [
    MyHighlight(words:words,
      text: 
      """The courts are keen to encourage parties to settle disputes using alternative measures wherever possible. There are other less formal mechanisms that may be employed such as arbitration, mediation and conciliation. Negotiation skills are imperative if a client chooses to employ one of these alternative mechanisms."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Planning and Preparation """
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Analyse the negotiation scenario to ensure that you have a clear grasp of the issues that require resolving Research the relevant law and the facts to ensure that you have a thorough grasp of the key information. Take a holistic view of your clients’ needs and think of creative ways of reaching these objectives within the confines of your instructions."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """CASE NAME"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Conducting the Negotiation"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Make a firm professional start with clear introductions, a summary of the factual situation, and a suggested agenda. Be flexible to accommodate the needs of the other team.  Listen to the other side as you only have half the story Acquire information through asking questions. Remember ‘why’ questions give an insight into the aims of the other side Try and work around obstacles rather than stopping when confronted try using a range of tactics to avoid or break deadlock  Try to engage the other side so as to work as a team and form an effective working relationship.  Ensure that you always take an ethical stance, taking care that you do not mislead or misrepresent your position Conclude by outlining the proposed agreement to ensure that everyone is clear on its terms Critical reflection will help you to improve your negotiation skills and enable you to improve upon your performance"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
  ],
);
MyListView page7=MyListView(
  children: [
    MyHighlight(words:words,
      text: 
      """Presentation skills are the backbone of success in litigation as a practicing counsel. Not only do they make a significant difference when one practices law, they also enable one to moot in a manner that will guarantee success in their argument. The following steps are """
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """RESEARCH"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Formulate a topic that takes into account the time frame, availability of material, aim of presentation and requirements of assessment criteria. Begin research as early as possible to give time to identify and obtain relevant material. Strive to modify the research to make it original which will in turn make the presentation more interesting. There are four main stages in the presentation process."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """PREPARING"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Select information carefully to avoid an information overload as this may cause the presentation to run longer than is meant to. When having difficulties selecting what information to use, try ranking each point based on relevance to the presentation topic.  Think carefully about the visual aids to ensure that they enhance the presentation rather than replace or distract, from the presentation. Practice! Practice! Practice!  """
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """DELIVERY"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Adopt a style of delivery that is engaging for the audience. Pay particular attention to timing, pace, and volume of your presentation. Do not read from a prepared script as this will limit eye contact which is important.  Be prepared to answer questions from the audience. Listen carefully and think about your response.  """
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """REFLECTION"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """You will be required to make presentations all the time as Lawyers so take this opportunity to reflect so as to become an accomplished presenter.  Be honest with yourself as you reflect. Be active and precise in seeking feedback on your presentation."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
  ],
);
MyListView page8=MyListView(
  children: [
    
    MyHighlight(words:words,
      text: 
    """ALTERNATIVE METHODS OF DISPUTE RESOLUTION (ADRs) """
    ,textAlign: TextAlign.justify,
    textStyle:  TextStyle(
      fontWeight: FontWeight.w200,
      fontSize: 15,
      letterSpacing: 0.27,
      color: DesignCourseAppTheme.darkerText,
    ),
    
    
  ),
    MyHighlight(words:words,
      text: 
      """There are several methods of resolving disputes recognised worldwide. Adjudication, also known as litigation, is by far the most common method of dispute resolution: over 90% of legal disputes worldwide are resolved through litigation. Adjudication is a process by which a court resolves a dispute. It involves parties taking their legal dispute to a court of law for determination by an independent and impartial judicial officer. The mandate of courts to adjudicate on disputes is inherent in the very constitutional set up of countries whereby the responsibility of interpreting the law is vested in the judicial organ of the state."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Advantages of adjudication (litigation)  """
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Litigation offers several advantages in relation to the resolution of disputes. The advantages include the following: Matters are heard and determined by persons who are impartial, independent and with no interest whatsoever in the subject matter of the dispute; Parties to matters heard and determined through litigation are given reasons for the decision of the court and can appeal up to the highest court if not satisfied with the reasons given by lower courts; Through the doctrine of res judicata, litigation brings disputes to finality; Through the doctrine of precedent, litigation contributes towards the development and growth of law; Litigation creates stability in society by preventing aggrieved persons from taking the law in their own hands."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Disadvantages of adjudication (litigation)"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Although it has several advantages, litigation equally has some disadvantages. The disadvantages include the following; Litigation is costly i.e. it is not economical when compared to ADR methods; Litigation is time – consuming i.e. matters take long to be concluded in the courts of law; Litigation does not allow parties to make a decision mutually beneficial to them since they have no option but to follow what the court has decided; In jurisdictions where the doctrine of precedent applies, litigation may lead to injustice because lower courts do not question the decisions of higher courts. It is against the background of these disadvantages that there has been growing interests among advocates worldwide in the use of ADR methods to resolve their client’s disputes more economically and efficiently. In the face of bottlenecks and backlogs in court systems, coupled with spiralling legal costs and fees, courts and other members of the legal community have been part of the movement seeking means other than litigation for resolving disputes."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Alternative Dispute Resolution (ADR) – What is it?    """
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """The term alternative dispute resolution or ADR is often used to describe a wide variety of dispute resolution mechanisms that are short of, or alternative to, full-scale court processes. It is an effort to arrive at mutually acceptable decisions and an alternative to adversarial processes such as litigation or administrative processes that result in win/lose outcomes. The term ADR can refer to everything from facilitated settlement negotiations in which disputants are encouraged to negotiate directly with each other prior to some other legal process, to arbitration systems or mini-trials that look and feel very much like a courtroom process. Processes designed to manage community tension or facilitate community development issues can also be included within the rubric of ADR. ADR systems may be generally categorized as negotiation, conciliation/mediation, or arbitration systems.
			Negotiation systems create a structure to encourage and facilitate direct negotiation between parties to a dispute, without the intervention of a third party. Mediation and conciliation systems are very similar in that they interject a third party between parties to the dispute, either to mediate a specific dispute or to reconcile their relationship. Mediators and conciliators may simply facilitate communication, or may help direct and structure a settlement, but they do not have the authority to decide or rule on a settlement. Arbitration systems authorize a third party to decide how a dispute should be resolved.
			Negotiation, mediation, and conciliation are non-binding and depend on the willingness of the parties to reach a voluntary agreement. On the other hand, Arbitration may be either binding or non-binding. Binding arbitration produces a third party decision that parties to the disputes must follow even if they disagree with the result, much like a judicial decision. Non-binding arbitration produces a third party decision that the parties may reject."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Four elements essential for successful ADR"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """There are four elements essential to the successful use of any ADR method. These are: existence of an issue in controversy; voluntary agreement by both parties to participate in the ADR process; voluntary agreement by both parties on the type of ADR method to be used in lieu of formal litigation; Participation in the process by officials of both parties who have authority to resolve the issue in controversy."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Characteristics of ADR methods"""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Although the characteristics of negotiated settlement, conciliation, mediation, arbitration, and other forms of community justice vary, all share a few common elements of distinction from the formal judicial structure. These elements permit them to address development objectives in a manner different from judicial systems. They include the following:
i)Informality
ADR processes are less formal than judicial processes. In most cases, the rules of procedure are flexible, without formal pleadings, extensive written documentation, or rules of evidence. This informality is appealing and important for increasing access to dispute resolution for parts of the population who may be intimidated by or unable to participate in more formal systems. It is also important for reducing the delay and cost of dispute resolution. Most systems operate without formal representation.
ii) Application of Equity
ADR processes are instruments for the application of equity rather than the rule of law. Each case is decided by a neutral third party, or negotiated between parties to the dispute themselves, based on principles and terms that seem equitable in the particular case, rather than on uniformly applied legal standards. ADR systems cannot be expected to establish legal precedent or implement changes in legal and social norms. Thus, ADR systems tend to achieve efficient settlements at the expense of consistent and uniform justice.
iii) Direct Participation and Communication between parties
ADR systems involve more direct participation by parties to the dispute in the process and in designing settlements, more direct dialogue and opportunity for reconciliation between them, potentially higher levels of confidentiality since public records are not typically kept, more flexibility in designing creative settlements, less power to subpoena information, and less direct power of enforcement."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),
    MyHighlight(words:words,
      text: 
      """Benefits of using ADR """
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.darkerText,
      ),
      
      
    ),

    MyHighlight(words:words,
      text: 
      """The benefits of ADR include the following:
Voluntary nature of processes: All ADR methods are voluntary in nature i.e. No one is coerced into using ADR procedures. Parties choose to use ADR procedures because they believe that ADR holds the potential for better settlements than those obtained through litigation;
Expedited procedures: All ADR procedures are less formal. This prevents unnecessary delays and expedites the resolution process.
Active participation of the parties: Parties to the dispute actively participate in the ; Confidential nature of Processes: Parties can participate in ADR procedures, explore potential settlement options, and still protect their right to present their best case in court at a later date without fear that data divulged in the procedure will be used against them;
Greater Flexibility in the Terms of Settlement: ADR procedures provide an opportunity for parties to craft settlements that can better meet their combined interests than would an imposed settlement by a third party. This is because ADR enables parties to avoid the trap of deciding who is right or who is wrong, and to focus on the development of workable and acceptable solutions. ADR procedures also provide greater flexibility in the parameters of the issues under discussion and the scope of possible settlements. Participants can expand the pie by developing settlements that address the underlying causes of the dispute, rather than be constrained by a judicial procedure that is limited to making judgments based on narrow points of law;
Savings in Time: With the significant delays in obtaining court dates, ADR procedures offer expeditious opportunities to resolve disputes without having to spend years in litigation. In many cases, where time is money and where delayed settlements are extremely costly, a resolution developed through the use of an ADR procedure may be the best alternative for a timely resolution.
Cost Savings: ADR procedures are generally less expensive than litigation. Expenses can be lowered by limiting the costs of discovery, speeding up the time between filing and settlement, and avoiding delay costs. These front-end expenses are often the most costly components of legal costs. These savings are in turn passed on to the taxpayer. Relieving the burden on the courts caused by unnecessary or inappropriate lawsuits can help save valuable public resources."""
      ,textAlign: TextAlign.justify,
      textStyle:  TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        letterSpacing: 0.27,
        color: DesignCourseAppTheme.grey,
      ),
      
      
    ),


  ],
);

List<MyListView> notes=[
  page1,
  page2,
  page3,
  page4,
  page5,
  page6,
  page7,
  page8,
];