import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class LinkButton extends StatelessWidget {
  static const linkStyle = TextStyle(color: Colors.blue, decoration: TextDecoration.underline);

  final String label;
  final String url;

  const LinkButton({Key? key, required this.label, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Link(
      uri: Uri.parse(url),
      target: kIsWeb ? LinkTarget.blank : LinkTarget.defaultTarget,
      builder: (context, followLink) {
        return InkWell(
          onTap: followLink,
          child: Text(label, style: linkStyle),
        );
      },
    );
  }
}
