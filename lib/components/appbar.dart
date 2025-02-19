import 'package:flutter/material.dart';
import 'package:my_wallet_app_ui/config/colors.dart';
import 'package:my_wallet_app_ui/config/size.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.getWidth(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width / 20),
      child: Container(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                child: Text(
              "Michael's Account",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )),
            Container(
              height: width / 6,
              width: width / 6,
              decoration: BoxDecoration(
                  color: AppColors.primaryWhite,
                  boxShadow: AppColors.neumorpShadow,
                  shape: BoxShape.circle),
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: Colors.orange, shape: BoxShape.circle),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(11),
                      decoration: BoxDecoration(
                          color: AppColors.primaryWhite,
                          boxShadow: AppColors.neumorpShadow,
                          shape: BoxShape.circle),
                    ),
                  ),
                  Center(
                    child: Icon(Icons.notifications),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
