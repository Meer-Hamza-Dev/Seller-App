import 'package:get/get.dart';
import 'package:seller_app/app/add_details/add_details.dart';
import 'package:seller_app/app/add_music_emoji/add_music_emoji.dart';
import 'package:seller_app/app/add_new_product/add_new_product.dart';
import 'package:seller_app/app/add_offers/add_offers.dart';
import 'package:seller_app/app/auth/views/add_new_store.dart';
import 'package:seller_app/app/auth/views/legal_document.dart';
import 'package:seller_app/app/auth/views/sign_in.dart';
import 'package:seller_app/app/auth/views/otp_verification.dart';
import 'package:seller_app/app/auth/views/sign_up.dart';
import 'package:seller_app/app/basic_plan/basic_plan.dart';
import 'package:seller_app/app/category/category.dart';
import 'package:seller_app/app/catering_order/catering_order.dart';
import 'package:seller_app/app/catering_services/catering_services.dart';
import 'package:seller_app/app/chat_screen/chat_screen.dart';
import 'package:seller_app/app/coupon_request/coupon_request.dart';
import 'package:seller_app/app/coupons/coupons.dart';
import 'package:seller_app/app/create_edit_plal/create_edit_plan.dart';
import 'package:seller_app/app/create_flyer/create_flyer.dart';
import 'package:seller_app/app/create_new_offer/create_new_offer.dart';
import 'package:seller_app/app/create_product_list/create_product.dart';
import 'package:seller_app/app/dashboard_payment/dashboard_payment.dart';
import 'package:seller_app/app/discount_offer/discount_offer.dart';
import 'package:seller_app/app/flyers/flyers.dart';
import 'package:seller_app/app/help_support/help_support.dart';
import 'package:seller_app/app/holiday_offer/holiday_offer.dart';
import 'package:seller_app/app/home/homePage.dart';
import 'package:seller_app/app/inventory/inventory.dart';
import 'package:seller_app/app/message/message.dart';
import 'package:seller_app/app/my_store/my_strore.dart';
import 'package:seller_app/app/notification/notification.dart';
import 'package:seller_app/app/onBoarding_Screens/splashScreen.dart';
import 'package:seller_app/app/onBoarding_Screens/welcome_screen.dart';
import 'package:seller_app/app/order/order.dart';
import 'package:seller_app/app/order_deliver_review/order_deliver_review.dart';
import 'package:seller_app/app/order_status/order_status.dart';
import 'package:seller_app/app/other_services/other_services.dart';
import 'package:seller_app/app/payments/payments.dart';
import 'package:seller_app/app/premium/premium.dart';
import 'package:seller_app/app/product_view/product_view.dart';
import 'package:seller_app/app/promote_business/promote_business.dart';
import 'package:seller_app/app/publish_video/publish_video.dart';
import 'package:seller_app/app/received_request/received_request.dart';
import 'package:seller_app/app/refer_earn/refer_earn.dart';
import 'package:seller_app/app/review_order/review_order.dart';
import 'package:seller_app/app/rewards/rewards.dart';
import 'package:seller_app/app/setting/setting.dart';
import 'package:seller_app/app/store_page/store_page.dart';
import 'package:seller_app/app/store_view/store_view.dart';
import 'package:seller_app/app/tiffin_services/tiffin_services.dart';
import 'package:seller_app/app/today_orders/today_orders.dart';
import 'package:seller_app/app/top_selling_product/topselling_product.dart';
import 'package:seller_app/app/upload_create_video/upload_create_video.dart';
import 'package:seller_app/app/video/video.dart';
import 'package:seller_app/app/visiting_card_detail/visiting_detail.dart';
import 'package:seller_app/app/visiting_cards/visiting_card.dart';
import 'package:seller_app/routes/app_pages.dart';

class AppPages {
  static const String INITIAL = Routes.splashScreenRoute;
  static final List<GetPage<dynamic>> routes = [
   
    GetPage(
      name: Routes.splashScreenRoute,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.welcomeRoute,
      page: () => const welcomeScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.loginRoute,
      page: () => const Login(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.signUpRoute,
      page: () => const SignUp(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.otpVerificationRoute,
      page: () => const OTP_Verification(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.addNewStoreRoute,
      page: () => const Add_New_Store(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.legalDocumentRoute,
      page: () => const legalDocuments(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.myStoreRoute,
      page: () => const My_Store(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.reviewOrderRoute,
      page: () => const ReviewOrder(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.orderStatusRoute,
      page: () => const OrderStatus(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.homeScreenRoute,
      page: () => HomeScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.todayOrderRoute,
      page: () => TodayOrders(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.categoriesRoute,
      page: () => Categories(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.addNewProductRoute,
      page: () => AddNewProduct(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.addOffersRoute,
      page: () => AddOffers(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.orderDeliverReviewRoute,
      page: () => OrderDeliverReview(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.productViewRoute,
      page: () => ProductView(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.createNewOfferRoute,
      page: () => CreateNewOffer(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.discountOfferRoute,
      page: () => DiscountOffer(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.holidayOfferRoute,
      page: () => Holiday_Offer(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.paymentsRoute,
      page: () => Payments(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.flyerRoute,
      page: () => Flyers(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.videoAdvertisementRoute,
      page: () => VideoAdvertisement(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.uploadCreateVideoRoute,
      page: () => UploadCreateVideo(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.createFlyerRoute,
      page: () => Create_Flyer(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.addMusicEmojiRoute,
      page: () => AddMusicEmoji(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.publishVideoRoute,
      page: () => PublishVideo(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.settingRoute,
      page: () => Settings(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.notificationRoute,
      page: () => Notification(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.referEarnRoute,
      page: () => ReferEarn(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.helpSupportRoute,
      page: () => Help_Support(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.promoteBusinessRoute,
      page: () => Promotr_Business(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.addDetailsRoute,
      page: () => AddDetails(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.couponsRoute,
      page: () => Coupons(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.couponRequestRoute,
      page: () => CouponRequest(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.receiveRequestRoute,
      page: () => Received_Request(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.premiumRoute,
      page: () => Premium(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.createProductRoute,
      page: () => CreateProduct(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.topSellingProduvtRoute,
      page: () => TopsellingProduct(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.rewardsRoute,
      page: () => Rewards(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.visitingCardRoute,
      page: () => VisitingCard(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.visitingDetailRoute,
      page: () => VisitingDetails(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.inventoryRoute,
      page: () => Inventory(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.otherServicesRoute,
      page: () => OtherServices(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.tiffinServicesRoute,
      page: () => TiffinServices(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.createEditPlanRoute,
      page: () => CreateEditPlan(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.dashboardPaymentRoute,
      page: () => DashboardPayment(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.orderRoute,
      page: () => Orders(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.cateringServicesRoute,
      page: () => Catering_Service(),
      transition: Transition.fadeIn,
    ),
     GetPage(
      name: Routes.basicPlanRoute,
      page: () => BasicPlan(),
      transition: Transition.fadeIn,
    ),
     GetPage(
      name: Routes.cateringOrderRoute,
      page: () => Catering_Orders(),
      transition: Transition.fadeIn,
    ),
     GetPage(
      name: Routes.messageRoute,
      page: () => Messages(),
      transition: Transition.fadeIn,
    ),
     GetPage(
      name: Routes.chatScreenRoute,
      page: () => Chat(),
      transition: Transition.fadeIn,
    ),
      GetPage(
      name: Routes.storepageRoute,
      page: () => Store_Page(),
      transition: Transition.fadeIn,
    ),
          GetPage(
      name: Routes.storeviewRoute,
      page: () => Store_View(),
      transition: Transition.fadeIn,
    ),
  ];
}
