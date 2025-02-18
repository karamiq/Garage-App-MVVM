import 'package:flutter/material.dart';
import '../../../../common_lib.dart';

class NotificationsEmptyWidget extends StatelessWidget {
  const NotificationsEmptyWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: height,
              width: height,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context).colorScheme.shadow.withOpacity(.1),
                      offset: Offset(.5, .5),
                      blurRadius: 1),
                ],
                color: Theme.of(context).colorScheme.surface,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  height: height * .83,
                  width: height * .83,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Theme.of(context).colorScheme.primary,
                            Theme.of(context).colorScheme.primaryContainer,
                            Theme.of(context).colorScheme.surface,
                          ])),
                  child: Center(
                    child: Container(
                      height: height * .8,
                      width: height * .8,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Container(
                          width: height * .5,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Theme.of(context).colorScheme.primary,
                                    Theme.of(context).colorScheme.primary,
                                    Theme.of(context).colorScheme.primaryContainer,
                                    Theme.of(context).colorScheme.surface,
                                  ])),
                          child: Center(
                              child: Container(
                            width: height * .55,
                            padding: EdgeInsets.all(Insets.medium * 2.3),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context).colorScheme.surface),
                            child: Container(
                              padding: EdgeInsets.all(Insets.medium * 1),
                              width: height * .3,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(context).colorScheme.primary),
                              child: SvgPicture.asset(Assets.assetsIconsNonotifications),
                            ),
                          )),
                        ),
                      ),
                    ),
                  ),
                ),
              )),
          Gap(Insets.exLarge * 2),
          Text(
            'لا توجد اشعارات',
            style: TextStyle(
              // fontFamily: GoogleFonts.cairo().fontFamily,
              fontSize: CustomFontsTheme.veryBigSize,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Text(
            'هنا سوف تظهر لك اخر الاشعارات و التنبيهات',
            textAlign: TextAlign.center,
            style: TextStyle(
                //   fontFamily: GoogleFonts.cairo().fontFamily,
                color: Theme.of(context).colorScheme.secondary,
                fontSize: CustomFontsTheme.mediumSize),
          ),
          Gap(Insets.exLarge * 4),
        ],
      ),
    );
  }
}
