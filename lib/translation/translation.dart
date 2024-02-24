import 'package:get/get.dart';

class AppTranslations extends Translations {
  static const String appTitle = 'title';
  static const String homeSearchHint = 'homeSearchHint';
  static const String lookingFor = 'lookingFor';
  static const String villa = 'villa';
  static const String apartment = 'apartment';
  static const String office = 'office';
  static const String duplex = 'duplex';
  static const String latestOffers = 'latestOffers';

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          appTitle: 'Aqar',
          homeSearchHint: 'Search for a locality, area or city',
          lookingFor: 'Looking for',
          villa: 'Villa',
          apartment: 'Apartment',
          office: 'Office',
          duplex: 'Duplex',
          latestOffers: 'Latest Offers',
        },
        'ar_EG': {
          appTitle: 'عقار',
          homeSearchHint: 'ابحث عن منطقة أو مدينة أو محافظة',
          lookingFor: 'أبحث عن',
          villa: 'فيلا',
          apartment: 'شقة',
          office: 'مكتب',
          duplex: 'دوبلكس',
          latestOffers: 'أحدث العروض',
        }
      };
}
