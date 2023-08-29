import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:test_shopping/list_item_widgets/item_grid_product.dart';
import 'package:test_shopping/ui_widgets/custom_information_widget.dart';
import 'package:test_shopping/ui_widgets/dev_info_widget.dart';
import 'package:test_shopping/ui_widgets/prod_detail_bottom_widget.dart';
import 'package:test_shopping/ui_widgets/prod_detail_combo_widget.dart';
import 'package:test_shopping/ui_widgets/prod_detail_mfg_detail_widget.dart';
import 'package:test_shopping/ui_widgets/prod_details_basic_details_widget.dart';
import 'package:test_shopping/ui_widgets/prod_details_shipping_info_widget.dart';
import 'package:test_shopping/ui_widgets/prod_other_details_widget.dart';
import 'package:test_shopping/ui_widgets/prod_price_details_widget.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/image_slideshow_widget.dart';
import 'package:test_shopping/widgets/item_customer_review.dart';
import 'package:test_shopping/widgets/my_buttons.dart';
import 'package:test_shopping/widgets/my_text.dart';
import 'package:test_shopping/widgets/prod_detail_app_bar.dart';
import 'package:test_shopping/widgets/rating_info_widget.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  String text = loremIpsum(words: 60, paragraphs: 3, initWithLorem: true);

  final ScrollController scrollController = ScrollController();
  bool scrollVisibility = false;

  @override
  void initState() {
    scrollController.addListener(() {
      if (scrollController.position.pixels < 554.2115811808319) {
        scrollVisibility = false;
        debugPrint(
            'scrolling : ${scrollController.position.pixels.toString()}');
      } else {
        scrollVisibility = true;
        // debugPrint('scrolling : ${scrollController.position.pixels.toString()}');

        debugPrint('scrolling : ${scrollVisibility}');
      }
      setState(() {});
    });
    super.initState();
  }

  List<bool> likeList = [true,false,false];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: Column(
          children: [
            const ProdDetailAppBar(title: "Product Details"),
            Expanded(
                child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageSlideShowWidget(),
                  ProdDetailsBasicDetailsWidget(),
                  SizedBox(
                    height: 5.h,
                  ),
                  ProdOtherDetailsWidget(),
                  SizedBox(
                    height: 5.h,
                  ),
                  ProdPriceDetailsWidget(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h, right: 10.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: "Product Information",
                          fontName: "baloo",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: MyText(
                              text: text, fontName: "baloo", fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const ProdDetailMfgDetailWidget(),
                  SizedBox(
                    height: 10.h,
                  ),
                  const ProdDetailsShippingInfoWidget(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    color: greyBgColor,
                    child: Padding(
                      padding: EdgeInsets.all(10.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                            text: 'Customer Reviews',
                            fontName: 'baloo',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          RatingInfoWidget(),
                          Divider(
                            height: 10.h,
                            thickness: 0.4.h,
                            color: lightGreyColor,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          MyText(
                            text: 'Top Reviews',
                            fontName: 'baloo',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          ListView.builder(
                              itemCount: likeList.length,
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              // scrollDirection: Axis.vertical,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return  ItemCustomerReview(
                                  likeButton: () {
                                    likeList[index]==true?likeList[index]=false:
                                    likeList[index]=true;
                                    setState(() {

                                    });
                                  },
                                  infoButton: () {  },
                                  isLiked: likeList[index],
                                );
                              }),
                          SizedBox(
                            height: 10.h,
                          ),
                          MyButtons(
                            'See All 223 Reviews',
                            medicalBlue,
                            click: () {},
                            fontSize: 14.sp,
                            height: 40.h,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const ProdDetailComboWidget(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    color: greyBgColor,
                    width: double.infinity,
                    child: Padding(
                      padding:  EdgeInsets.all(10.h),
                      child: MyText(
                        text: 'Related Products',
                        fontName: "baloo",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.37,
                    color: greyBgColor,
                    child: ListView.builder(
                        itemCount: 6,
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return const ItemGridProduct();
                        }),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomInformationWidget(
                    title: 'Other Information',
                    text: text,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const DevInfoWidget(),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            )),
            Visibility(
                visible: scrollVisibility, child: ProdDetailBottomWidget())
          ],
        ),
      ),
    );
  }
}
