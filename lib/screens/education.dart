import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:charify/utils/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EducationPage extends StatefulWidget {
  static const String id = 'educationpage';
  @override
  _EducationPageState createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  int selectedRadio = 0;

  final List<String> orgs = [
    // list of organizations
    "Somesa",
    "MpaMpe",
    "Twezimbe",
    "FundiBots",
    "Madvani",
    "Watoto Schools",
  ];

  setSelectedRadio(int? val) {
    setState(() {
      selectedRadio = val!;
    });
  }

  void openPaymentWebView() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            backgroundColor: kPrimaryColor,
            title: Text('Donate Now!'),
          ),
          body: WebView(
            initialUrl: 'https://charify-api.onrender.com/',
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white.withOpacity(0.8),
          iconSize: 30.0,
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Education',
          style: GoogleFonts.acme(
            color: Colors.white.withOpacity(0.9),
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: orgs.length,
        itemBuilder: (context, index) =>
            buildRadioListTile(orgs[index], index + 1),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.payment,
          color: kPrimaryColor,
        ),
        onPressed: openPaymentWebView, // Open the webview
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget buildRadioListTile(String name, int value) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          20,
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 8),
            blurRadius: 16,
            color: Colors.black26,
          )
        ],
      ),
      child: RadioListTile(
        value: value,
        groupValue: selectedRadio,
        title: Text(
          name,
          style: GoogleFonts.acme(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: Colors.black87),
        ),
        activeColor: kPrimaryColor,
        onChanged: (int? val) {
          setSelectedRadio(val);
        },
      ),
    );
  }
}

// WEB VIEW WINDOWS
// import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:charify/utils/constants.dart';
// import 'widget_factory.dart'; // Import the common widget factory

// class EducationPage extends StatefulWidget {
//   static const String id = 'educationpage';

//   @override
//   _EducationPageState createState() => _EducationPageState();
// }

// class _EducationPageState extends State<EducationPage> {
//   int selectedRadio = 0;

//   final List<String> orgs = [
//     // list of organizations
//     "Somesa",
//     "MpaMpe",
//     "Twezimbe",
//     "FundiBots",
//     "Madvani",
//     "Watoto Schools",
//   ];

//   setSelectedRadio(int val) {
//     setState(() {
//       selectedRadio = val;
//     });
//   }

//   void openPaymentWebView() {
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (context) => Scaffold(
//           appBar: AppBar(
//             backgroundColor: kPrimaryColor,
//             title: Text('Donate Now!'),
//           ),
//           body: Container(
//             height: double.infinity,
//             width: double.infinity,
//             child: LayoutBuilder(
//               builder: (context, constraints) {
//                 return HtmlWidget(
//                   '<iframe src="https://charify-api.onrender.com/" width="100%" height="${constraints.maxHeight}"></iframe>',
//                   factoryBuilder: () => MyWidgetFactory(),
//                 );
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kPrimaryColor,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: kPrimaryColor,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios),
//           color: Colors.white.withOpacity(0.8),
//           iconSize: 30.0,
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//         title: Text(
//           'Education',
//           style: GoogleFonts.acme(
//             color: Colors.white.withOpacity(0.9),
//             fontWeight: FontWeight.bold,
//             fontSize: 30.0,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: ListView.builder(
//         physics: BouncingScrollPhysics(),
//         itemCount: orgs.length,
//         itemBuilder: (context, index) =>
//             buildRadioListTile(orgs[index], index + 1),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(
//           Icons.payment,
//           color: kPrimaryColor,
//         ),
//         onPressed: openPaymentWebView, // Open the webview
//         backgroundColor: Colors.white,
//       ),
//     );
//   }

//   Widget buildRadioListTile(String name, int value) {
//     return Container(
//       margin: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [
//           BoxShadow(
//             offset: Offset(0, 8),
//             blurRadius: 16,
//             color: Colors.black26,
//           ),
//         ],
//       ),
//       child: RadioListTile(
//         value: value,
//         groupValue: selectedRadio,
//         title: Text(
//           name,
//           style: GoogleFonts.acme(
//             fontWeight: FontWeight.bold,
//             fontSize: 18.0,
//             color: Colors.black87,
//           ),
//         ),
//         activeColor: kPrimaryColor,
//         onChanged: (int? val) {
//           if (val != null) {
//             setSelectedRadio(val);
//           }
//         },
//       ),
//     );
//   }
// }
