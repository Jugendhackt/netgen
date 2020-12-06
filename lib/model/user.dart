// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.id,
    this.idStr,
    this.name,
    this.screenName,
    this.location,
    this.description,
    this.url,
    this.entities,
    this.protected,
    this.followersCount,
    this.friendsCount,
    this.listedCount,
    this.createdAt,
    this.favouritesCount,
    this.utcOffset,
    this.timeZone,
    this.geoEnabled,
    this.verified,
    this.statusesCount,
    this.lang,
    this.status,
    this.contributorsEnabled,
    this.isTranslator,
    this.isTranslationEnabled,
    this.profileBackgroundColor,
    this.profileBackgroundImageUrl,
    this.profileBackgroundImageUrlHttps,
    this.profileBackgroundTile,
    this.profileImageUrl,
    this.profileImageUrlHttps,
    this.profileBannerUrl,
    this.profileLinkColor,
    this.profileSidebarBorderColor,
    this.profileSidebarFillColor,
    this.profileTextColor,
    this.profileUseBackgroundImage,
    this.hasExtendedProfile,
    this.defaultProfile,
    this.defaultProfileImage,
    this.following,
    this.followRequestSent,
    this.notifications,
    this.muting,
    this.blocking,
    this.blockedBy,
    this.translatorType,
  });

  double id;
  String idStr;
  String name;
  String screenName;
  String location;
  String description;
  String url;
  UserEntities entities;
  bool protected;
  int followersCount;
  int friendsCount;
  int listedCount;
  String createdAt;
  int favouritesCount;
  dynamic utcOffset;
  dynamic timeZone;
  bool geoEnabled;
  bool verified;
  int statusesCount;
  dynamic lang;
  Status status;
  bool contributorsEnabled;
  bool isTranslator;
  bool isTranslationEnabled;
  String profileBackgroundColor;
  dynamic profileBackgroundImageUrl;
  dynamic profileBackgroundImageUrlHttps;
  bool profileBackgroundTile;
  String profileImageUrl;
  String profileImageUrlHttps;
  String profileBannerUrl;
  String profileLinkColor;
  String profileSidebarBorderColor;
  String profileSidebarFillColor;
  String profileTextColor;
  bool profileUseBackgroundImage;
  bool hasExtendedProfile;
  bool defaultProfile;
  bool defaultProfileImage;
  dynamic following;
  dynamic followRequestSent;
  dynamic notifications;
  dynamic muting;
  dynamic blocking;
  dynamic blockedBy;
  String translatorType;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"].toDouble(),
        idStr: json["id_str"],
        name: json["name"],
        screenName: json["screen_name"],
        location: json["location"],
        description: json["description"],
        url: json["url"],
        entities: UserEntities.fromJson(json["entities"]),
        protected: json["protected"],
        followersCount: json["followers_count"],
        friendsCount: json["friends_count"],
        listedCount: json["listed_count"],
        createdAt: json["created_at"],
        favouritesCount: json["favourites_count"],
        utcOffset: json["utc_offset"],
        timeZone: json["time_zone"],
        geoEnabled: json["geo_enabled"],
        verified: json["verified"],
        statusesCount: json["statuses_count"],
        lang: json["lang"],
        status: Status.fromJson(json["status"]),
        contributorsEnabled: json["contributors_enabled"],
        isTranslator: json["is_translator"],
        isTranslationEnabled: json["is_translation_enabled"],
        profileBackgroundColor: json["profile_background_color"],
        profileBackgroundImageUrl: json["profile_background_image_url"],
        profileBackgroundImageUrlHttps:
            json["profile_background_image_url_https"],
        profileBackgroundTile: json["profile_background_tile"],
        profileImageUrl: json["profile_image_url"],
        profileImageUrlHttps: json["profile_image_url_https"],
        profileBannerUrl: json["profile_banner_url"],
        profileLinkColor: json["profile_link_color"],
        profileSidebarBorderColor: json["profile_sidebar_border_color"],
        profileSidebarFillColor: json["profile_sidebar_fill_color"],
        profileTextColor: json["profile_text_color"],
        profileUseBackgroundImage: json["profile_use_background_image"],
        hasExtendedProfile: json["has_extended_profile"],
        defaultProfile: json["default_profile"],
        defaultProfileImage: json["default_profile_image"],
        following: json["following"],
        followRequestSent: json["follow_request_sent"],
        notifications: json["notifications"],
        muting: json["muting"],
        blocking: json["blocking"],
        blockedBy: json["blocked_by"],
        translatorType: json["translator_type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "id_str": idStr,
        "name": name,
        "screen_name": screenName,
        "location": location,
        "description": description,
        "url": url,
        "entities": entities.toJson(),
        "protected": protected,
        "followers_count": followersCount,
        "friends_count": friendsCount,
        "listed_count": listedCount,
        "created_at": createdAt,
        "favourites_count": favouritesCount,
        "utc_offset": utcOffset,
        "time_zone": timeZone,
        "geo_enabled": geoEnabled,
        "verified": verified,
        "statuses_count": statusesCount,
        "lang": lang,
        "status": status.toJson(),
        "contributors_enabled": contributorsEnabled,
        "is_translator": isTranslator,
        "is_translation_enabled": isTranslationEnabled,
        "profile_background_color": profileBackgroundColor,
        "profile_background_image_url": profileBackgroundImageUrl,
        "profile_background_image_url_https": profileBackgroundImageUrlHttps,
        "profile_background_tile": profileBackgroundTile,
        "profile_image_url": profileImageUrl,
        "profile_image_url_https": profileImageUrlHttps,
        "profile_banner_url": profileBannerUrl,
        "profile_link_color": profileLinkColor,
        "profile_sidebar_border_color": profileSidebarBorderColor,
        "profile_sidebar_fill_color": profileSidebarFillColor,
        "profile_text_color": profileTextColor,
        "profile_use_background_image": profileUseBackgroundImage,
        "has_extended_profile": hasExtendedProfile,
        "default_profile": defaultProfile,
        "default_profile_image": defaultProfileImage,
        "following": following,
        "follow_request_sent": followRequestSent,
        "notifications": notifications,
        "muting": muting,
        "blocking": blocking,
        "blocked_by": blockedBy,
        "translator_type": translatorType,
      };
}

class UserEntities {
  UserEntities({
    this.url,
    this.description,
  });

  Description url;
  Description description;

  factory UserEntities.fromJson(Map<String, dynamic> json) => UserEntities(
        url: Description.fromJson(json["url"]),
        description: Description.fromJson(json["description"]),
      );

  Map<String, dynamic> toJson() => {
        "url": url.toJson(),
        "description": description.toJson(),
      };
}

class Description {
  Description({
    this.urls,
  });

  List<Url> urls;

  factory Description.fromJson(Map<String, dynamic> json) => json == null
      ? Description()
      : Description(
          urls: List<Url>.from(json["urls"].map((x) => Url.fromJson(x))),
        );

  Map<String, dynamic> toJson() => {
        "urls": List<dynamic>.from(urls.map((x) => x.toJson())),
      };
}

class Url {
  Url({
    this.url,
    this.expandedUrl,
    this.displayUrl,
    this.indices,
  });

  String url;
  String expandedUrl;
  String displayUrl;
  List<int> indices;

  factory Url.fromJson(Map<String, dynamic> json) => Url(
        url: json["url"],
        expandedUrl: json["expanded_url"],
        displayUrl: json["display_url"],
        indices: List<int>.from(json["indices"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "expanded_url": expandedUrl,
        "display_url": displayUrl,
        "indices": List<dynamic>.from(indices.map((x) => x)),
      };
}

class Status {
  Status({
    this.createdAt,
    this.id,
    this.idStr,
    this.text,
    this.truncated,
    this.entities,
    this.source,
    this.inReplyToStatusId,
    this.inReplyToStatusIdStr,
    this.inReplyToUserId,
    this.inReplyToUserIdStr,
    this.inReplyToScreenName,
    this.geo,
    this.coordinates,
    this.place,
    this.contributors,
    this.retweetedStatus,
    this.isQuoteStatus,
    this.retweetCount,
    this.favoriteCount,
    this.favorited,
    this.retweeted,
    this.possiblySensitive,
    this.lang,
  });

  String createdAt;
  double id;
  String idStr;
  String text;
  bool truncated;
  StatusEntities entities;
  String source;
  dynamic inReplyToStatusId;
  dynamic inReplyToStatusIdStr;
  dynamic inReplyToUserId;
  dynamic inReplyToUserIdStr;
  dynamic inReplyToScreenName;
  dynamic geo;
  dynamic coordinates;
  dynamic place;
  dynamic contributors;
  Status retweetedStatus;
  bool isQuoteStatus;
  int retweetCount;
  int favoriteCount;
  bool favorited;
  bool retweeted;
  bool possiblySensitive;
  String lang;

  factory Status.fromJson(Map<String, dynamic> json) => json == null
      ? null
      : Status(
          createdAt: json["created_at"],
          id: json["id"].toDouble(),
          idStr: json["id_str"],
          text: json["text"],
          truncated: json["truncated"],
          entities: StatusEntities.fromJson(json["entities"]),
          source: json["source"],
          inReplyToStatusId: json["in_reply_to_status_id"],
          inReplyToStatusIdStr: json["in_reply_to_status_id_str"],
          inReplyToUserId: json["in_reply_to_user_id"],
          inReplyToUserIdStr: json["in_reply_to_user_id_str"],
          inReplyToScreenName: json["in_reply_to_screen_name"],
          geo: json["geo"],
          coordinates: json["coordinates"],
          place: json["place"],
          contributors: json["contributors"],
          retweetedStatus: json["retweeted_status"] == null
              ? null
              : Status.fromJson(json["retweeted_status"]),
          isQuoteStatus: json["is_quote_status"],
          retweetCount: json["retweet_count"],
          favoriteCount: json["favorite_count"],
          favorited: json["favorited"],
          retweeted: json["retweeted"],
          possiblySensitive: json["possibly_sensitive"],
          lang: json["lang"],
        );

  Map<String, dynamic> toJson() => {
        "created_at": createdAt,
        "id": id,
        "id_str": idStr,
        "text": text,
        "truncated": truncated,
        "entities": entities.toJson(),
        "source": source,
        "in_reply_to_status_id": inReplyToStatusId,
        "in_reply_to_status_id_str": inReplyToStatusIdStr,
        "in_reply_to_user_id": inReplyToUserId,
        "in_reply_to_user_id_str": inReplyToUserIdStr,
        "in_reply_to_screen_name": inReplyToScreenName,
        "geo": geo,
        "coordinates": coordinates,
        "place": place,
        "contributors": contributors,
        "retweeted_status":
            retweetedStatus == null ? null : retweetedStatus.toJson(),
        "is_quote_status": isQuoteStatus,
        "retweet_count": retweetCount,
        "favorite_count": favoriteCount,
        "favorited": favorited,
        "retweeted": retweeted,
        "possibly_sensitive": possiblySensitive,
        "lang": lang,
      };
}

class StatusEntities {
  StatusEntities({
    this.hashtags,
    this.symbols,
    this.userMentions,
    this.urls,
  });

  List<Hashtag> hashtags;
  List<dynamic> symbols;
  List<UserMention> userMentions;
  List<Url> urls;

  factory StatusEntities.fromJson(Map<String, dynamic> json) => StatusEntities(
        hashtags: List<Hashtag>.from(
            json["hashtags"].map((x) => Hashtag.fromJson(x))),
        symbols: List<dynamic>.from(json["symbols"].map((x) => x)),
        userMentions: List<UserMention>.from(
            json["user_mentions"].map((x) => UserMention.fromJson(x))),
        urls: List<Url>.from(json["urls"].map((x) => Url.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "hashtags": List<dynamic>.from(hashtags.map((x) => x.toJson())),
        "symbols": List<dynamic>.from(symbols.map((x) => x)),
        "user_mentions":
            List<dynamic>.from(userMentions.map((x) => x.toJson())),
        "urls": List<dynamic>.from(urls.map((x) => x.toJson())),
      };
}

class Hashtag {
  Hashtag({
    this.text,
    this.indices,
  });

  String text;
  List<int> indices;

  factory Hashtag.fromJson(Map<String, dynamic> json) => Hashtag(
        text: json["text"],
        indices: List<int>.from(json["indices"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "indices": List<dynamic>.from(indices.map((x) => x)),
      };
}

class UserMention {
  UserMention({
    this.screenName,
    this.name,
    this.id,
    this.idStr,
    this.indices,
  });

  String screenName;
  String name;
  double id;
  String idStr;
  List<int> indices;

  factory UserMention.fromJson(Map<String, dynamic> json) => UserMention(
        screenName: json["screen_name"],
        name: json["name"],
        id: json["id"].toDouble(),
        idStr: json["id_str"],
        indices: List<int>.from(json["indices"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "screen_name": screenName,
        "name": name,
        "id": id,
        "id_str": idStr,
        "indices": List<dynamic>.from(indices.map((x) => x)),
      };
}
