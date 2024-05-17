import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStar = 3;
  int selecterIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/m5.webp"),
                        fit: BoxFit.cover)),
              )),
          Positioned(
            left: 20,
            top: 70,
            child: SizedBox(
              width: 330,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                    color: AppColors.textColor3,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
                    color: AppColors.textColor3,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 330,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: const BoxDecoration(
                  color: AppColors.textColor1,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: 'Yosmite',
                          color: Colors.black.withOpacity(1),
                        ),
                        AppLargeText(
                          text: "\$ 250",
                          color: AppColors.textColor4,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: AppColors.textColor4,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        AppText(
                          text: "USA, Califonia",
                          color: AppColors.textColor4,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Wrap(
                            children: List.generate(5, (index) {
                          return Icon(
                            Icons.star,
                            color: gottenStar < index
                                ? AppColors.textColor
                                : Colors.yellow,
                          );
                        })),
                        const SizedBox(
                          width: 10,
                        ),
                        AppText(
                          text: '(4.0)',
                          color: AppColors.textColor5,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppLargeText(
                      text: "People",
                      size: 25,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AppText(
                      text: "Number of people in your group",
                      color: Colors.grey.withOpacity(1),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Wrap(
                        children: List.generate(
                      5,
                      (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selecterIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 5),
                            child: AppButton(
                              backgroundColor: selecterIndex == index
                                  ? Colors.black
                                  : AppColors.textColor,
                              color: selecterIndex == index
                                  ? AppColors.textColor1
                                  : Colors.black,
                              height: 60,
                              width: 60,
                              borderColor: selecterIndex == index
                                  ? Colors.black
                                  : AppColors.textColor1,
                              isIcon: false,
                              text: (index + 1).toString(),
                            ),
                          ),
                        );
                      },
                    )),
                    const SizedBox(
                      height: 10,
                    ),
                    AppLargeText(text: "Description"),
                    const SizedBox(
                      height: 10,
                    ),
                    AppText(
                      text:
                          "You must go for a travel.Travelling helps get rid pressure. Go to the mountain to see the nature.",
                      color: Colors.grey.withOpacity(1),
                      size: 15,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Positioned(
                      child: Row(
                        children: [
                          AppButton(
                            color: Colors.black,
                            backgroundColor: AppColors.textColor1,
                            borderColor: Colors.grey,
                            height: 70,
                            width: 70,
                            isIcon: true,
                            icon: Icons.favorite_border,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          AppButton(
                            backgroundColor: AppColors.textColor4,
                            color: AppColors.textColor1,
                            height: 70,
                            width: 260,
                            borderColor: AppColors.textColor4,
                            text: 'Book Trip Now',
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}
