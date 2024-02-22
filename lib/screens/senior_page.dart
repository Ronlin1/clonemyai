import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:charify/utils/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SeniorPage extends StatefulWidget {
  static const String id = 'seniorpage';
  @override
  _SeniorPageState createState() => _SeniorPageState();
}

class _SeniorPageState extends State<SeniorPage> {
  int totalAmount = 0;
  late WebViewController _webViewController;
  int selectedRadio = 0;

  final List<String> orgs = [
    "Mbarara Beneficiaries",
    "Train Up A Child",
    "NSSF Scheme",
    "Uganda Oldies Assoc",
    "Young Africa",
    // ... add the remaining organization names
  ];

  setSelectedRadio(int? val) {
    setState(() {
      selectedRadio = val ?? 0;
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
            onWebViewCreated: (controller) {
              _webViewController = controller;
            },
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
          'Seniors/Retireds',
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
          if (val != null) {
            setSelectedRadio(val);
          }
        },
      ),
    );
  }
}

// code for Windows WEB VIEW

// import 'package:flutter/material.dart';
// import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:charify/utils/constants.dart';
// import 'widget_factory.dart'; // Import the common widget factory

// class SeniorPage extends StatefulWidget {
//   static const String id = 'seniorpage';

//   @override
//   _SeniorPageState createState() => _SeniorPageState();
// }

// class _SeniorPageState extends State<SeniorPage> {
//   int totalAmount = 0;
//   int selectedRadio = 0;

//   final List<String> orgs = [
//     "Mbarara Beneficiaries",
//     "Train Up A Child",
//     "NSSF Scheme",
//     "Uganda Oldies Assoc",
//     "Young Africa",
//     // ... add the remaining organization names
//   ];

//   setSelectedRadio(int? val) {
//     setState(() {
//       selectedRadio = val ?? 0;
//     });
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
//           'Seniors/Retireds',
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

//   void openPaymentWebView() {
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (context) => Scaffold(
//           appBar: AppBar(
//             backgroundColor: kPrimaryColor,
//             title: Text('Donate Now!'),
//           ),
//           body: Container(
//             height: double
//                 .infinity, // Set the height to take the available vertical space
//             width: double.infinity, // Set the desired width
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

//   Widget buildRadioListTile(String name, int value) {
//     return Container(
//       margin: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(
//           20,
//         ),
//         boxShadow: [
//           BoxShadow(
//             offset: Offset(0, 8),
//             blurRadius: 16,
//             color: Colors.black26,
//           )
//         ],
//       ),
//       child: RadioListTile(
//         value: value,
//         groupValue: selectedRadio,
//         title: Text(
//           name,
//           style: GoogleFonts.acme(
//               fontWeight: FontWeight.bold,
//               fontSize: 18.0,
//               color: Colors.black87),
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
