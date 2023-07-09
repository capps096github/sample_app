import 'package:flutter/gestures.dart';

import '../../sample_app_exporter.dart';

class SampleAppDisclaimer extends StatelessWidget {
  const SampleAppDisclaimer({
    super.key,
    this.continuingColor = sampleAppColor,
    this.termsPrivacycolor = sampleAppSecondaryColor,
  });

  final Color continuingColor;
  final Color termsPrivacycolor;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'By continuing, you declare that you accept The Calcut\n',
        style: TextStyle(color: continuingColor),
        children: <TextSpan>[
          TextSpan(
            text: 'Terms of Service',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                //TODO go to the Terms Page
                // context.push(termsPath);
              },
            style: TextStyle(
              color: termsPrivacycolor,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
          const TextSpan(text: '  and  '),
          TextSpan(
            text: 'Privacy Policy',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // TODO go to the Policies Page
                // context.push(policiesPath);
              },
            style: TextStyle(
              color: termsPrivacycolor,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
          const TextSpan(text: '.'),
        ],
      ),
    );
  }
}
