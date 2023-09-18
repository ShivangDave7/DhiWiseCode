import 'package:flutter/material.dart';
import 'package:flutterqa/presentation/credit_card_and_debit_screen/credit_card_and_debit_screen.dart';
import 'package:flutterqa/presentation/signinwithapi_screen/signinwithapi_screen.dart';
import 'package:flutterqa/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:flutterqa/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:flutterqa/presentation/login_screen/login_screen.dart';
import 'package:flutterqa/presentation/register_form_screen/register_form_screen.dart';
import 'package:flutterqa/presentation/dashboard_container1_screen/dashboard_container1_screen.dart';
import 'package:flutterqa/presentation/offer_screen/offer_screen.dart';
import 'package:flutterqa/presentation/favorite_product_screen/favorite_product_screen.dart';
import 'package:flutterqa/presentation/product_detail_screen/product_detail_screen.dart';
import 'package:flutterqa/presentation/write_review_fill_screen/write_review_fill_screen.dart';
import 'package:flutterqa/presentation/notification_screen/notification_screen.dart';
import 'package:flutterqa/presentation/notification_offer_screen/notification_offer_screen.dart';
import 'package:flutterqa/presentation/notification_feed_screen/notification_feed_screen.dart';
import 'package:flutterqa/presentation/notification_one_screen/notification_one_screen.dart';
import 'package:flutterqa/presentation/search_screen/search_screen.dart';
import 'package:flutterqa/presentation/search_result_screen/search_result_screen.dart';
import 'package:flutterqa/presentation/search_result_one_screen/search_result_one_screen.dart';
import 'package:flutterqa/presentation/list_category_screen/list_category_screen.dart';
import 'package:flutterqa/presentation/short_by_screen/short_by_screen.dart';
import 'package:flutterqa/presentation/filter_screen/filter_screen.dart';
import 'package:flutterqa/presentation/ship_to_screen/ship_to_screen.dart';
import 'package:flutterqa/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:flutterqa/presentation/choose_credit_or_debit_card_screen/choose_credit_or_debit_card_screen.dart';
import 'package:flutterqa/presentation/success_screen/success_screen.dart';
import 'package:flutterqa/presentation/account_screen/account_screen.dart';
import 'package:flutterqa/presentation/profile_screen/profile_screen.dart';
import 'package:flutterqa/presentation/change_password_screen/change_password_screen.dart';
import 'package:flutterqa/presentation/order_screen/order_screen.dart';
import 'package:flutterqa/presentation/order_details_screen/order_details_screen.dart';
import 'package:flutterqa/presentation/add_address_screen/add_address_screen.dart';
import 'package:flutterqa/presentation/address_screen/address_screen.dart';
import 'package:flutterqa/presentation/add_payment_screen/add_payment_screen.dart';
import 'package:flutterqa/presentation/add_card_screen/add_card_screen.dart';
import 'package:flutterqa/presentation/lailyfa_febrina_card_screen/lailyfa_febrina_card_screen.dart';
import 'package:flutterqa/presentation/sign_up_page_screen/sign_up_page_screen.dart';
import 'package:flutterqa/presentation/login_page_screen/login_page_screen.dart';
import 'package:flutterqa/presentation/forgot_password_one_screen/forgot_password_one_screen.dart';
import 'package:flutterqa/presentation/visual_search_screen/visual_search_screen.dart';
import 'package:flutterqa/presentation/visual_search_taking_a_photo_screen/visual_search_taking_a_photo_screen.dart';
import 'package:flutterqa/presentation/visual_search_crop_the_item_screen/visual_search_crop_the_item_screen.dart';
import 'package:flutterqa/presentation/visual_search_finding_screen/visual_search_finding_screen.dart';
import 'package:flutterqa/presentation/main_page_screen/main_page_screen.dart';
import 'package:flutterqa/presentation/main_two_screen/main_two_screen.dart';
import 'package:flutterqa/presentation/main_three_screen/main_three_screen.dart';
import 'package:flutterqa/presentation/categories_tab_container_screen/categories_tab_container_screen.dart';
import 'package:flutterqa/presentation/categories_two_screen/categories_two_screen.dart';
import 'package:flutterqa/presentation/catalog_one_tab_container_screen/catalog_one_tab_container_screen.dart';
import 'package:flutterqa/presentation/catalog_two_tab_container_screen/catalog_two_tab_container_screen.dart';
import 'package:flutterqa/presentation/filters_screen/filters_screen.dart';
import 'package:flutterqa/presentation/filters_list_screen/filters_list_screen.dart';
import 'package:flutterqa/presentation/product_card_screen/product_card_screen.dart';
import 'package:flutterqa/presentation/rating_and_reviews_tab_container_screen/rating_and_reviews_tab_container_screen.dart';
import 'package:flutterqa/presentation/rating_and_reviews_with_photo_tab_container_screen/rating_and_reviews_with_photo_tab_container_screen.dart';
import 'package:flutterqa/presentation/client_s_review_tab_container_screen/client_s_review_tab_container_screen.dart';
import 'package:flutterqa/presentation/favorites_lists_tab_container_screen/favorites_lists_tab_container_screen.dart';
import 'package:flutterqa/presentation/favorites_modules_screen/favorites_modules_screen.dart';
import 'package:flutterqa/presentation/my_bag_screen/my_bag_screen.dart';
import 'package:flutterqa/presentation/my_bag_one_screen/my_bag_one_screen.dart';
import 'package:flutterqa/presentation/my_bag_checkout_screen/my_bag_checkout_screen.dart';
import 'package:flutterqa/presentation/payment_cards_screen/payment_cards_screen.dart';
import 'package:flutterqa/presentation/shipping_addresses_screen/shipping_addresses_screen.dart';
import 'package:flutterqa/presentation/add_shipping_address_screen/add_shipping_address_screen.dart';
import 'package:flutterqa/presentation/success1_screen/success1_screen.dart';
import 'package:flutterqa/presentation/success_one_screen/success_one_screen.dart';
import 'package:flutterqa/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:flutterqa/presentation/my_profile_my_orders_tab_container_screen/my_profile_my_orders_tab_container_screen.dart';
import 'package:flutterqa/presentation/my_profile_settings_screen/my_profile_settings_screen.dart';
import 'package:flutterqa/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String creditCardAndDebitScreen =
      '/credit_card_and_debit_screen';

  static const String signinwithapiScreen = '/signinwithapi_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String loginScreen = '/login_screen';

  static const String registerFormScreen = '/register_form_screen';

  static const String dashboardContainerPage = '/dashboard_container_page';

  static const String dashboardContainer1Screen =
      '/dashboard_container1_screen';

  static const String offerScreen = '/offer_screen';

  static const String favoriteProductScreen = '/favorite_product_screen';

  static const String productDetailScreen = '/product_detail_screen';

  static const String writeReviewFillScreen = '/write_review_fill_screen';

  static const String notificationScreen = '/notification_screen';

  static const String notificationOfferScreen = '/notification_offer_screen';

  static const String notificationFeedScreen = '/notification_feed_screen';

  static const String notificationOneScreen = '/notification_one_screen';

  static const String explorePage = '/explore_page';

  static const String searchScreen = '/search_screen';

  static const String searchResultScreen = '/search_result_screen';

  static const String searchResultOneScreen = '/search_result_one_screen';

  static const String listCategoryScreen = '/list_category_screen';

  static const String shortByScreen = '/short_by_screen';

  static const String filterScreen = '/filter_screen';

  static const String cartPage = '/cart_page';

  static const String shipToScreen = '/ship_to_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String chooseCreditOrDebitCardScreen =
      '/choose_credit_or_debit_card_screen';

  static const String successScreen = '/success_screen';

  static const String offerScreenPage = '/offer_screen_page';

  static const String accountScreen = '/account_screen';

  static const String profileScreen = '/profile_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String orderScreen = '/order_screen';

  static const String orderDetailsScreen = '/order_details_screen';

  static const String addAddressScreen = '/add_address_screen';

  static const String addressScreen = '/address_screen';

  static const String addPaymentScreen = '/add_payment_screen';

  static const String addCardScreen = '/add_card_screen';

  static const String lailyfaFebrinaCardScreen = '/lailyfa_febrina_card_screen';

  static const String signUpPageScreen = '/sign_up_page_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String forgotPasswordOneScreen = '/forgot_password_one_screen';

  static const String visualSearchScreen = '/visual_search_screen';

  static const String visualSearchTakingAPhotoScreen =
      '/visual_search_taking_a_photo_screen';

  static const String visualSearchCropTheItemScreen =
      '/visual_search_crop_the_item_screen';

  static const String visualSearchFindingScreen =
      '/visual_search_finding_screen';

  static const String mainPageScreen = '/main_page_screen';

  static const String mainTwoScreen = '/main_two_screen';

  static const String mainThreeScreen = '/main_three_screen';

  static const String categoriesPage = '/categories_page';

  static const String categoriesTabContainerScreen =
      '/categories_tab_container_screen';

  static const String categoriesTwoScreen = '/categories_two_screen';

  static const String catalogOnePage = '/catalog_one_page';

  static const String catalogOneTabContainerScreen =
      '/catalog_one_tab_container_screen';

  static const String catalogTwoPage = '/catalog_two_page';

  static const String catalogTwoTabContainerScreen =
      '/catalog_two_tab_container_screen';

  static const String filtersScreen = '/filters_screen';

  static const String filtersListScreen = '/filters_list_screen';

  static const String productCardScreen = '/product_card_screen';

  static const String ratingAndReviewsPage = '/rating_and_reviews_page';

  static const String ratingAndReviewsTabContainerScreen =
      '/rating_and_reviews_tab_container_screen';

  static const String ratingAndReviewsWithPhotoPage =
      '/rating_and_reviews_with_photo_page';

  static const String ratingAndReviewsWithPhotoTabContainerScreen =
      '/rating_and_reviews_with_photo_tab_container_screen';

  static const String clientSReviewPage = '/client_s_review_page';

  static const String clientSReviewTabContainerScreen =
      '/client_s_review_tab_container_screen';

  static const String favoritesListsPage = '/favorites_lists_page';

  static const String favoritesListsTabContainerScreen =
      '/favorites_lists_tab_container_screen';

  static const String favoritesModulesScreen = '/favorites_modules_screen';

  static const String myBagScreen = '/my_bag_screen';

  static const String myBagOneScreen = '/my_bag_one_screen';

  static const String myBagCheckoutScreen = '/my_bag_checkout_screen';

  static const String paymentCardsScreen = '/payment_cards_screen';

  static const String shippingAddressesScreen = '/shipping_addresses_screen';

  static const String addShippingAddressScreen = '/add_shipping_address_screen';

  static const String success1Screen = '/success1_screen';

  static const String successOneScreen = '/success_one_screen';

  static const String myProfileScreen = '/my_profile_screen';

  static const String myProfileMyOrdersPage = '/my_profile_my_orders_page';

  static const String myProfileMyOrdersTabContainerScreen =
      '/my_profile_my_orders_tab_container_screen';

  static const String myProfileMyOrdersOrderDetailsPage =
      '/my_profile_my_orders_order_details_page';

  static const String myProfileSettingsScreen = '/my_profile_settings_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    creditCardAndDebitScreen: (context) => CreditCardAndDebitScreen(),
    signinwithapiScreen: (context) => SigninwithapiScreen(),
    signUpScreen: (context) => SignUpScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    loginScreen: (context) => LoginScreen(),
    registerFormScreen: (context) => RegisterFormScreen(),
    dashboardContainer1Screen: (context) => DashboardContainer1Screen(),
    offerScreen: (context) => OfferScreen(),
    favoriteProductScreen: (context) => FavoriteProductScreen(),
    productDetailScreen: (context) => ProductDetailScreen(),
    writeReviewFillScreen: (context) => WriteReviewFillScreen(),
    notificationScreen: (context) => NotificationScreen(),
    notificationOfferScreen: (context) => NotificationOfferScreen(),
    notificationFeedScreen: (context) => NotificationFeedScreen(),
    notificationOneScreen: (context) => NotificationOneScreen(),
    searchScreen: (context) => SearchScreen(),
    searchResultScreen: (context) => SearchResultScreen(),
    searchResultOneScreen: (context) => SearchResultOneScreen(),
    listCategoryScreen: (context) => ListCategoryScreen(),
    shortByScreen: (context) => ShortByScreen(),
    filterScreen: (context) => FilterScreen(),
    shipToScreen: (context) => ShipToScreen(),
    paymentMethodScreen: (context) => PaymentMethodScreen(),
    chooseCreditOrDebitCardScreen: (context) => ChooseCreditOrDebitCardScreen(),
    successScreen: (context) => SuccessScreen(),
    accountScreen: (context) => AccountScreen(),
    profileScreen: (context) => ProfileScreen(),
    changePasswordScreen: (context) => ChangePasswordScreen(),
    orderScreen: (context) => OrderScreen(),
    orderDetailsScreen: (context) => OrderDetailsScreen(),
    addAddressScreen: (context) => AddAddressScreen(),
    addressScreen: (context) => AddressScreen(),
    addPaymentScreen: (context) => AddPaymentScreen(),
    addCardScreen: (context) => AddCardScreen(),
    lailyfaFebrinaCardScreen: (context) => LailyfaFebrinaCardScreen(),
    signUpPageScreen: (context) => SignUpPageScreen(),
    loginPageScreen: (context) => LoginPageScreen(),
    forgotPasswordOneScreen: (context) => ForgotPasswordOneScreen(),
    visualSearchScreen: (context) => VisualSearchScreen(),
    visualSearchTakingAPhotoScreen: (context) =>
        VisualSearchTakingAPhotoScreen(),
    visualSearchCropTheItemScreen: (context) => VisualSearchCropTheItemScreen(),
    visualSearchFindingScreen: (context) => VisualSearchFindingScreen(),
    mainPageScreen: (context) => MainPageScreen(),
    mainTwoScreen: (context) => MainTwoScreen(),
    mainThreeScreen: (context) => MainThreeScreen(),
    categoriesTabContainerScreen: (context) => CategoriesTabContainerScreen(),
    categoriesTwoScreen: (context) => CategoriesTwoScreen(),
    catalogOneTabContainerScreen: (context) => CatalogOneTabContainerScreen(),
    catalogTwoTabContainerScreen: (context) => CatalogTwoTabContainerScreen(),
    filtersScreen: (context) => FiltersScreen(),
    filtersListScreen: (context) => FiltersListScreen(),
    productCardScreen: (context) => ProductCardScreen(),
    ratingAndReviewsTabContainerScreen: (context) =>
        RatingAndReviewsTabContainerScreen(),
    ratingAndReviewsWithPhotoTabContainerScreen: (context) =>
        RatingAndReviewsWithPhotoTabContainerScreen(),
    clientSReviewTabContainerScreen: (context) =>
        ClientSReviewTabContainerScreen(),
    favoritesListsTabContainerScreen: (context) =>
        FavoritesListsTabContainerScreen(),
    favoritesModulesScreen: (context) => FavoritesModulesScreen(),
    myBagScreen: (context) => MyBagScreen(),
    myBagOneScreen: (context) => MyBagOneScreen(),
    myBagCheckoutScreen: (context) => MyBagCheckoutScreen(),
    paymentCardsScreen: (context) => PaymentCardsScreen(),
    shippingAddressesScreen: (context) => ShippingAddressesScreen(),
    addShippingAddressScreen: (context) => AddShippingAddressScreen(),
    success1Screen: (context) => Success1Screen(),
    successOneScreen: (context) => SuccessOneScreen(),
    myProfileScreen: (context) => MyProfileScreen(),
    myProfileMyOrdersTabContainerScreen: (context) =>
        MyProfileMyOrdersTabContainerScreen(),
    myProfileSettingsScreen: (context) => MyProfileSettingsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
