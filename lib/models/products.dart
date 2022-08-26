class Product {
  Product({
    this.id,
    this.catId,
    this.subCatId,
    this.itemTypeId,
    this.itemPriceTypeId,
    this.itemCurrencyId,
    this.itemLocationId,
    this.conditionOfItemId,
    this.dealOptionRemark,
    this.description,
    this.highlightInfo,
    this.price,
    this.dealOptionId,
    this.brand,
    this.businessMode,
    this.isSoldOut,
    this.title,
    this.address,
    this.lat,
    this.lng,
    this.status,
    this.addedDate,
    this.addedUserId,
    this.addedUserName,
    this.updatedDate,
    this.updatedUserId,
    this.updatedFlag,
    this.touchCount,
    this.favouriteCount,
    this.isPaid,
    this.isAvailable,
    this.isPreOrder,
    this.poStart,
    this.poEnd,
    this.poSlot,
    this.poDelivery,
    this.isHalal,
    this.weight,
    this.locationId,
    this.locationName,
    this.locationType,
    this.isFree,
    this.pickupTime,
    this.appearDuration,
    this.stock,
    this.isFood,
    this.addedDateStr,
    this.paidStatus,
    this.photoCount,
    this.defaultPhoto,
    this.category,
    this.subCategory,
    this.itemType,
    this.itemPriceType,
    this.itemCurrency,
    this.itemLocation,
    this.conditionOfItem,
    this.dealOption,
    this.user,
    this.isFavourited,
    this.isOwner,
    this.getAddress,
  });

  String? id;
  String? catId;
  String? subCatId;
  String? itemTypeId;
  String? itemPriceTypeId;
  String? itemCurrencyId;
  String? itemLocationId;
  String? conditionOfItemId;
  String? dealOptionRemark;
  String? description;
  String? highlightInfo;
  String? price;
  String? dealOptionId;
  String? brand;
  String? businessMode;
  String? isSoldOut;
  String? title;
  String? address;
  String? lat;
  String? lng;
  String? status;
  DateTime? addedDate;
  String? addedUserId;
  String? addedUserName;
  DateTime? updatedDate;
  String? updatedUserId;
  String? updatedFlag;
  String? touchCount;
  String? favouriteCount;
  String? isPaid;
  String? isAvailable;
  String? isPreOrder;
  String? poStart;
  String? poEnd;
  String? poSlot;
  String? poDelivery;
  String? isHalal;
  String? weight;
  String? locationId;
  String? locationName;
  String? locationType;
  String? isFree;
  String? pickupTime;
  String? appearDuration;
  String? stock;
  String? isFood;
  String? addedDateStr;
  String? paidStatus;
  String? photoCount;
  Default? defaultPhoto;
  Category? category;
  SubCategory? subCategory;
  ConditionOfItem? itemType;
  ConditionOfItem? itemPriceType;
  ItemCurrency? itemCurrency;
  ItemLocation? itemLocation;
  ConditionOfItem? conditionOfItem;
  ConditionOfItem? dealOption;
  User? user;
  String? isFavourited;
  String? isOwner;
  GetAddress? getAddress;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        catId: json["cat_id"],
        subCatId: json["sub_cat_id"],
        itemTypeId: json["item_type_id"],
        itemPriceTypeId: json["item_price_type_id"],
        itemCurrencyId: json["item_currency_id"],
        itemLocationId: json["item_location_id"],
        conditionOfItemId: json["condition_of_item_id"],
        dealOptionRemark: json["deal_option_remark"],
        description: json["description"],
        highlightInfo: json["highlight_info"],
        price: json["price"],
        dealOptionId: json["deal_option_id"],
        brand: json["brand"],
        businessMode: json["business_mode"],
        isSoldOut: json["is_sold_out"],
        title: json["title"],
        address: json["address"],
        lat: json["lat"],
        lng: json["lng"],
        status: json["status"],
        addedDate: DateTime.parse(json["added_date"]),
        addedUserId: json["added_user_id"],
        addedUserName: json["added_user_name"],
        updatedDate: DateTime.parse(json["updated_date"]),
        updatedUserId: json["updated_user_id"],
        updatedFlag: json["updated_flag"],
        touchCount: json["touch_count"],
        favouriteCount: json["favourite_count"],
        isPaid: json["is_paid"],
        isAvailable: json["is_available"],
        isPreOrder: json["is_pre_order"],
        poStart: json["po_start"],
        poEnd: json["po_end"],
        poSlot: json["po_slot"],
        poDelivery: json["po_delivery"],
        isHalal: json["is_halal"],
        weight: json["weight"],
        locationId: json["location_id"],
        locationName: json["location_name"],
        locationType: json["location_type"],
        isFree: json["is_free"],
        pickupTime: json["pickup_time"],
        appearDuration: json["appear_duration"],
        stock: json["stock"],
        isFood: json["is_food"],
        addedDateStr: json["added_date_str"],
        paidStatus: json["paid_status"],
        photoCount: json["photo_count"],
        defaultPhoto: Default.fromJson(json["default_photo"]),
        category: Category.fromJson(json["category"]),
        subCategory: SubCategory.fromJson(json["sub_category"]),
        itemType: ConditionOfItem.fromJson(json["item_type"]),
        itemPriceType: ConditionOfItem.fromJson(json["item_price_type"]),
        itemCurrency: ItemCurrency.fromJson(json["item_currency"]),
        itemLocation: ItemLocation.fromJson(json["item_location"]),
        conditionOfItem: ConditionOfItem.fromJson(json["condition_of_item"]),
        dealOption: ConditionOfItem.fromJson(json["deal_option"]),
        user: User.fromJson(json["user"]),
        isFavourited: json["is_favourited"],
        isOwner: json["is_owner"],
        getAddress: json["get_address"] != ""
            ? GetAddress.fromJson(json["get_address"])
            : null,
      );
}

class Category {
  Category({
    this.catId,
    this.catName,
    this.catOrdering,
    this.status,
    this.addedDate,
    this.isFood,
    this.defaultPhoto,
    this.defaultIcon,
  });

  String? catId;
  String? catName;
  String? catOrdering;
  String? status;
  DateTime? addedDate;
  String? isFood;
  Default? defaultPhoto;
  Default? defaultIcon;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        catId: json["cat_id"],
        catName: json["cat_name"],
        catOrdering: json["cat_ordering"],
        status: json["status"],
        addedDate: DateTime.parse(json["added_date"]),
        isFood: json["is_food"],
        defaultPhoto: Default.fromJson(json["default_photo"]),
        defaultIcon: Default.fromJson(json["default_icon"]),
      );
}

class Default {
  Default({
    this.imgId,
    this.imgParentId,
    this.imgType,
    this.imgPath,
    this.imgWidth,
    this.imgHeight,
    this.imgDesc,
    this.isEmptyObject,
  });

  String? imgId;
  String? imgParentId;
  String? imgType;
  String? imgPath;
  String? imgWidth;
  String? imgHeight;
  String? imgDesc;
  String? isEmptyObject;

  factory Default.fromJson(Map<String, dynamic> json) => Default(
        imgId: json["img_id"],
        imgParentId: json["img_parent_id"],
        imgType: json["img_type"],
        imgPath: json["img_path"],
        imgWidth: json["img_width"],
        imgHeight: json["img_height"],
        imgDesc: json["img_desc"],
        isEmptyObject:
            json["is_empty_object"] == null ? null : json["is_empty_object"],
      );
}

class ConditionOfItem {
  ConditionOfItem({
    this.id,
    this.name,
    this.status,
    this.addedDate,
    this.isEmptyObject,
  });

  String? id;
  String? name;
  String? status;
  String? addedDate;
  String? isEmptyObject;

  factory ConditionOfItem.fromJson(Map<String, dynamic> json) =>
      ConditionOfItem(
        id: json["id"],
        name: json["name"],
        status: json["status"],
        addedDate: json["added_date"],
        isEmptyObject:
            json["is_empty_object"] == null ? null : json["is_empty_object"],
      );
}

class GetAddress {
  GetAddress({
    this.id,
    this.bsItemsId,
    this.provinceId,
    this.province,
    this.cityId,
    this.city,
    this.districtId,
    this.district,
    this.zipCode,
    this.longitude,
    this.latitude,
    this.fullAddress,
    this.contactPerson,
    this.nameAddress,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  String? id;
  String? bsItemsId;
  String? provinceId;
  String? province;
  String? cityId;
  String? city;
  String? districtId;
  String? district;
  String? zipCode;
  String? longitude;
  String? latitude;
  String? fullAddress;
  String? contactPerson;
  String? nameAddress;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? deletedAt;

  factory GetAddress.fromJson(Map<String, dynamic> json) => GetAddress(
        id: json["id"],
        bsItemsId: json["bs_items_id"],
        provinceId: json["province_id"],
        province: json["province"],
        cityId: json["city_id"],
        city: json["city"],
        districtId: json["district_id"],
        district: json["district"],
        zipCode: json["zip_code"],
        longitude: json["longitude"],
        latitude: json["latitude"],
        fullAddress: json["full_address"],
        contactPerson: json["contact_person"],
        nameAddress: json["name_address"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );
}

class ItemCurrency {
  ItemCurrency({
    this.id,
    this.currencyShortForm,
    this.currencySymbol,
    this.status,
    this.addedDate,
    this.isEmptyObject,
  });

  String? id;
  String? currencyShortForm;
  String? currencySymbol;
  String? status;
  String? addedDate;
  String? isEmptyObject;

  factory ItemCurrency.fromJson(Map<String, dynamic> json) => ItemCurrency(
        id: json["id"],
        currencyShortForm: json["currency_short_form"],
        currencySymbol: json["currency_symbol"],
        status: json["status"],
        addedDate: json["added_date"],
        isEmptyObject: json["is_empty_object"],
      );
}

class ItemLocation {
  ItemLocation({
    this.id,
    this.name,
    this.lat,
    this.lng,
    this.status,
    this.addedDate,
    this.isEmptyObject,
  });

  String? id;
  String? name;
  String? lat;
  String? lng;
  String? status;
  String? addedDate;
  String? isEmptyObject;

  factory ItemLocation.fromJson(Map<String, dynamic> json) => ItemLocation(
        id: json["id"],
        name: json["name"],
        lat: json["lat"],
        lng: json["lng"],
        status: json["status"],
        addedDate: json["added_date"],
        isEmptyObject: json["is_empty_object"],
      );
}

class SubCategory {
  SubCategory({
    this.id,
    this.catId,
    this.name,
    this.status,
    this.addedDate,
    this.addedUserId,
    this.updatedDate,
    this.updatedUserId,
    this.updatedFlag,
    this.defaultPhoto,
  });

  String? id;
  String? catId;
  String? name;
  String? status;
  DateTime? addedDate;
  String? addedUserId;
  DateTime? updatedDate;
  String? updatedUserId;
  String? updatedFlag;
  Default? defaultPhoto;

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        id: json["id"],
        catId: json["cat_id"],
        name: json["name"],
        status: json["status"],
        addedDate: json["added_date"] != ""
            ? DateTime.parse(json["added_date"])
            : null,
        addedUserId: json["added_user_id"],
        updatedDate: json["updated_date"] != ""
            ? DateTime.parse(json["updated_date"])
            : null,
        updatedUserId: json["updated_user_id"],
        updatedFlag: json["updated_flag"],
        defaultPhoto: Default.fromJson(json["default_photo"]),
      );
}

class User {
  User({
    this.userId,
    this.userIsSysAdmin,
    this.facebookId,
    this.googleId,
    this.phoneId,
    this.appleId,
    this.userName,
    this.userEmail,
    this.userPhone,
    this.userAddress,
    this.city,
    this.userAboutMe,
    this.userCoverPhoto,
    this.userProfilePhoto,
    this.roleId,
    this.status,
    this.isBanned,
    this.addedDate,
    this.deviceToken,
    this.code,
    this.overallRating,
    this.whatsapp,
    this.messenger,
    this.followerCount,
    this.followingCount,
    this.emailVerify,
    this.facebookVerify,
    this.googleVerify,
    this.phoneVerify,
    this.appleVerify,
    this.ratingCount,
    this.isFollowed,
    this.ratingDetails,
  });

  String? userId;
  String? userIsSysAdmin;
  String? facebookId;
  String? googleId;
  String? phoneId;
  String? appleId;
  String? userName;
  String? userEmail;
  String? userPhone;
  String? userAddress;
  String? city;
  String? userAboutMe;
  String? userCoverPhoto;
  String? userProfilePhoto;
  String? roleId;
  String? status;
  String? isBanned;
  DateTime? addedDate;
  String? deviceToken;
  String? code;
  String? overallRating;
  String? whatsapp;
  String? messenger;
  String? followerCount;
  String? followingCount;
  String? emailVerify;
  String? facebookVerify;
  String? googleVerify;
  String? phoneVerify;
  String? appleVerify;
  String? ratingCount;
  String? isFollowed;
  RatingDetails? ratingDetails;

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["user_id"],
        userIsSysAdmin: json["user_is_sys_admin"],
        facebookId: json["facebook_id"],
        googleId: json["google_id"],
        phoneId: json["phone_id"],
        appleId: json["apple_id"],
        userName: json["user_name"],
        userEmail: json["user_email"],
        userPhone: json["user_phone"],
        userAddress: json["user_address"],
        city: json["city"],
        userAboutMe: json["user_about_me"],
        userCoverPhoto: json["user_cover_photo"],
        userProfilePhoto: json["user_profile_photo"],
        roleId: json["role_id"],
        status: json["status"],
        isBanned: json["is_banned"],
        addedDate: DateTime.parse(json["added_date"]),
        deviceToken: json["device_token"],
        code: json["code"],
        overallRating: json["overall_rating"],
        whatsapp: json["whatsapp"],
        messenger: json["messenger"],
        followerCount: json["follower_count"],
        followingCount: json["following_count"],
        emailVerify: json["email_verify"],
        facebookVerify: json["facebook_verify"],
        googleVerify: json["google_verify"],
        phoneVerify: json["phone_verify"],
        appleVerify: json["apple_verify"],
        ratingCount: json["rating_count"],
        isFollowed: json["is_followed"],
        ratingDetails: RatingDetails.fromJson(json["rating_details"]),
      );
}

class RatingDetails {
  RatingDetails({
    this.fiveStarCount,
    this.fiveStarPercent,
    this.fourStarCount,
    this.fourStarPercent,
    this.threeStarCount,
    this.threeStarPercent,
    this.twoStarCount,
    this.twoStarPercent,
    this.oneStarCount,
    this.oneStarPercent,
    this.totalRatingCount,
    this.totalRatingValue,
  });

  String? fiveStarCount;
  String? fiveStarPercent;
  String? fourStarCount;
  String? fourStarPercent;
  String? threeStarCount;
  String? threeStarPercent;
  String? twoStarCount;
  String? twoStarPercent;
  String? oneStarCount;
  String? oneStarPercent;
  String? totalRatingCount;
  String? totalRatingValue;

  factory RatingDetails.fromJson(Map<String, dynamic> json) => RatingDetails(
        fiveStarCount: json["five_star_count"],
        fiveStarPercent: json["five_star_percent"],
        fourStarCount: json["four_star_count"],
        fourStarPercent: json["four_star_percent"],
        threeStarCount: json["three_star_count"],
        threeStarPercent: json["three_star_percent"],
        twoStarCount: json["two_star_count"],
        twoStarPercent: json["two_star_percent"],
        oneStarCount: json["one_star_count"],
        oneStarPercent: json["one_star_percent"],
        totalRatingCount: json["total_rating_count"],
        totalRatingValue: json["total_rating_value"],
      );
}

class GetDelivery {
  GetDelivery({
    this.id,
    this.bsItemsId,
    this.deliveryName,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  String? id;
  String? bsItemsId;
  String? deliveryName;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? deletedAt;

  factory GetDelivery.fromJson(Map<String, dynamic> json) => GetDelivery(
        id: json["id"],
        bsItemsId: json["bs_items_id"],
        deliveryName: json["delivery_name"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );
}
