part of adexchangebuyer_v1_3_api;

/** Configuration data for an Ad Exchange buyer account. */
class Account {

  /** Your bidder locations that have distinct URLs. */
  core.List<AccountBidderLocation> bidderLocation;

  /** The nid parameter value used in cookie match requests. Please contact your technical account manager if you need to change this. */
  core.String cookieMatchingNid;

  /** The base URL used in cookie match requests. */
  core.String cookieMatchingUrl;

  /** Account id. */
  core.int id;

  /** Resource type. */
  core.String kind;

  /** The sum of all bidderLocation.maximumQps values cannot exceed this. Please contact your technical account manager if you need to change this. */
  core.int maximumTotalQps;

  /** Create new Account from JSON data */
  Account.fromJson(core.Map json) {
    if (json.containsKey("bidderLocation")) {
      bidderLocation = json["bidderLocation"].map((bidderLocationItem) => new AccountBidderLocation.fromJson(bidderLocationItem)).toList();
    }
    if (json.containsKey("cookieMatchingNid")) {
      cookieMatchingNid = json["cookieMatchingNid"];
    }
    if (json.containsKey("cookieMatchingUrl")) {
      cookieMatchingUrl = json["cookieMatchingUrl"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("maximumTotalQps")) {
      maximumTotalQps = json["maximumTotalQps"];
    }
  }

  /** Create JSON Object for Account */
  core.Map toJson() {
    var output = new core.Map();

    if (bidderLocation != null) {
      output["bidderLocation"] = bidderLocation.map((bidderLocationItem) => bidderLocationItem.toJson()).toList();
    }
    if (cookieMatchingNid != null) {
      output["cookieMatchingNid"] = cookieMatchingNid;
    }
    if (cookieMatchingUrl != null) {
      output["cookieMatchingUrl"] = cookieMatchingUrl;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (maximumTotalQps != null) {
      output["maximumTotalQps"] = maximumTotalQps;
    }

    return output;
  }

  /** Return String representation of Account */
  core.String toString() => JSON.encode(this.toJson());

}

class AccountBidderLocation {

  /** The maximum queries per second the Ad Exchange will send. */
  core.int maximumQps;

  /** The geographical region the Ad Exchange should send requests from. Only used by some quota systems, but always setting the value is recommended. Allowed values:  
- ASIA 
- EUROPE 
- US_EAST 
- US_WEST */
  core.String region;

  /** The URL to which the Ad Exchange will send bid requests. */
  core.String url;

  /** Create new AccountBidderLocation from JSON data */
  AccountBidderLocation.fromJson(core.Map json) {
    if (json.containsKey("maximumQps")) {
      maximumQps = json["maximumQps"];
    }
    if (json.containsKey("region")) {
      region = json["region"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for AccountBidderLocation */
  core.Map toJson() {
    var output = new core.Map();

    if (maximumQps != null) {
      output["maximumQps"] = maximumQps;
    }
    if (region != null) {
      output["region"] = region;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of AccountBidderLocation */
  core.String toString() => JSON.encode(this.toJson());

}

/** An account feed lists Ad Exchange buyer accounts that the user has access to. Each entry in the feed corresponds to a single buyer account. */
class AccountsList {

  /** A list of accounts. */
  core.List<Account> items;

  /** Resource type. */
  core.String kind;

  /** Create new AccountsList from JSON data */
  AccountsList.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Account.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for AccountsList */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of AccountsList */
  core.String toString() => JSON.encode(this.toJson());

}

/** The configuration data for an Ad Exchange billing info. */
class BillingInfo {

  /** Account id. */
  core.int accountId;

  /** Account name. */
  core.String accountName;

  /** A list of adgroup IDs associated with this particular account. These IDs may show up as part of a realtime bidding BidRequest, which indicates a bid request for this account. */
  core.List<core.String> billingId;

  /** Resource type. */
  core.String kind;

  /** Create new BillingInfo from JSON data */
  BillingInfo.fromJson(core.Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("accountName")) {
      accountName = json["accountName"];
    }
    if (json.containsKey("billingId")) {
      billingId = json["billingId"].toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for BillingInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (accountName != null) {
      output["accountName"] = accountName;
    }
    if (billingId != null) {
      output["billingId"] = billingId.toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of BillingInfo */
  core.String toString() => JSON.encode(this.toJson());

}

/** A billing info feed lists Billing Info the Ad Exchange buyer account has access to. Each entry in the feed corresponds to a single billing info. */
class BillingInfoList {

  /** A list of billing info relevant for your account. */
  core.List<BillingInfo> items;

  /** Resource type. */
  core.String kind;

  /** Create new BillingInfoList from JSON data */
  BillingInfoList.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new BillingInfo.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for BillingInfoList */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of BillingInfoList */
  core.String toString() => JSON.encode(this.toJson());

}

/** A creative and its classification data. */
class Creative {

  /** The HTML snippet that displays the ad when inserted in the web page. If set, videoURL should not be set. */
  core.String HTMLSnippet;

  /** Account id. */
  core.int accountId;

  /** Detected advertiser id, if any. Read-only. This field should not be set in requests. */
  core.List<core.int> advertiserId;

  /** The name of the company being advertised in the creative. */
  core.String advertiserName;

  /** The agency id for this creative. */
  core.int agencyId;

  /** All attributes for the ads that may be shown from this snippet. */
  core.List<core.int> attribute;

  /** A buyer-specific id identifying the creative in this ad. */
  core.String buyerCreativeId;

  /** The set of destination urls for the snippet. */
  core.List<core.String> clickThroughUrl;

  /** Shows any corrections that were applied to this creative. Read-only. This field should not be set in requests. */
  core.List<CreativeCorrections> corrections;

  /** The reasons for disapproval, if any. Note that not all disapproval reasons may be categorized, so it is possible for the creative to have a status of DISAPPROVED with an empty list for disapproval_reasons. In this case, please reach out to your TAM to help debug the issue. Read-only. This field should not be set in requests. */
  core.List<CreativeDisapprovalReasons> disapprovalReasons;

  /** The filtering reasons for the creative. If this feature is not enabled, please ask your technical account manager. Read-only. This field should not be set in requests. */
  CreativeFilteringReasons filteringReasons;

  /** Ad height. */
  core.int height;

  /** Resource type. */
  core.String kind;

  /** Detected product categories, if any. Read-only. This field should not be set in requests. */
  core.List<core.int> productCategories;

  /** All restricted categories for the ads that may be shown from this snippet. */
  core.List<core.int> restrictedCategories;

  /** Detected sensitive categories, if any. Read-only. This field should not be set in requests. */
  core.List<core.int> sensitiveCategories;

  /** Creative serving status. Read-only. This field should not be set in requests. */
  core.String status;

  /** All vendor types for the ads that may be shown from this snippet. */
  core.List<core.int> vendorType;

  /** The url to fetch a video ad. If set, HTMLSnippet should not be set. */
  core.String videoURL;

  /** Ad width. */
  core.int width;

  /** Create new Creative from JSON data */
  Creative.fromJson(core.Map json) {
    if (json.containsKey("HTMLSnippet")) {
      HTMLSnippet = json["HTMLSnippet"];
    }
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("advertiserId")) {
      advertiserId = json["advertiserId"].map((advertiserIdItem) => (advertiserIdItem is core.String) ? core.int.parse(advertiserIdItem) : advertiserIdItem).toList();
    }
    if (json.containsKey("advertiserName")) {
      advertiserName = json["advertiserName"];
    }
    if (json.containsKey("agencyId")) {
      agencyId = (json["agencyId"] is core.String) ? core.int.parse(json["agencyId"]) : json["agencyId"];
    }
    if (json.containsKey("attribute")) {
      attribute = json["attribute"].toList();
    }
    if (json.containsKey("buyerCreativeId")) {
      buyerCreativeId = json["buyerCreativeId"];
    }
    if (json.containsKey("clickThroughUrl")) {
      clickThroughUrl = json["clickThroughUrl"].toList();
    }
    if (json.containsKey("corrections")) {
      corrections = json["corrections"].map((correctionsItem) => new CreativeCorrections.fromJson(correctionsItem)).toList();
    }
    if (json.containsKey("disapprovalReasons")) {
      disapprovalReasons = json["disapprovalReasons"].map((disapprovalReasonsItem) => new CreativeDisapprovalReasons.fromJson(disapprovalReasonsItem)).toList();
    }
    if (json.containsKey("filteringReasons")) {
      filteringReasons = new CreativeFilteringReasons.fromJson(json["filteringReasons"]);
    }
    if (json.containsKey("height")) {
      height = json["height"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("productCategories")) {
      productCategories = json["productCategories"].toList();
    }
    if (json.containsKey("restrictedCategories")) {
      restrictedCategories = json["restrictedCategories"].toList();
    }
    if (json.containsKey("sensitiveCategories")) {
      sensitiveCategories = json["sensitiveCategories"].toList();
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("vendorType")) {
      vendorType = json["vendorType"].toList();
    }
    if (json.containsKey("videoURL")) {
      videoURL = json["videoURL"];
    }
    if (json.containsKey("width")) {
      width = json["width"];
    }
  }

  /** Create JSON Object for Creative */
  core.Map toJson() {
    var output = new core.Map();

    if (HTMLSnippet != null) {
      output["HTMLSnippet"] = HTMLSnippet;
    }
    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (advertiserId != null) {
      output["advertiserId"] = advertiserId.toList();
    }
    if (advertiserName != null) {
      output["advertiserName"] = advertiserName;
    }
    if (agencyId != null) {
      output["agencyId"] = agencyId;
    }
    if (attribute != null) {
      output["attribute"] = attribute.toList();
    }
    if (buyerCreativeId != null) {
      output["buyerCreativeId"] = buyerCreativeId;
    }
    if (clickThroughUrl != null) {
      output["clickThroughUrl"] = clickThroughUrl.toList();
    }
    if (corrections != null) {
      output["corrections"] = corrections.map((correctionsItem) => correctionsItem.toJson()).toList();
    }
    if (disapprovalReasons != null) {
      output["disapprovalReasons"] = disapprovalReasons.map((disapprovalReasonsItem) => disapprovalReasonsItem.toJson()).toList();
    }
    if (filteringReasons != null) {
      output["filteringReasons"] = filteringReasons.toJson();
    }
    if (height != null) {
      output["height"] = height;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (productCategories != null) {
      output["productCategories"] = productCategories.toList();
    }
    if (restrictedCategories != null) {
      output["restrictedCategories"] = restrictedCategories.toList();
    }
    if (sensitiveCategories != null) {
      output["sensitiveCategories"] = sensitiveCategories.toList();
    }
    if (status != null) {
      output["status"] = status;
    }
    if (vendorType != null) {
      output["vendorType"] = vendorType.toList();
    }
    if (videoURL != null) {
      output["videoURL"] = videoURL;
    }
    if (width != null) {
      output["width"] = width;
    }

    return output;
  }

  /** Return String representation of Creative */
  core.String toString() => JSON.encode(this.toJson());

}

class CreativeCorrections {

  /** Additional details about the correction. */
  core.List<core.String> details;

  /** The type of correction that was applied to the creative. */
  core.String reason;

  /** Create new CreativeCorrections from JSON data */
  CreativeCorrections.fromJson(core.Map json) {
    if (json.containsKey("details")) {
      details = json["details"].toList();
    }
    if (json.containsKey("reason")) {
      reason = json["reason"];
    }
  }

  /** Create JSON Object for CreativeCorrections */
  core.Map toJson() {
    var output = new core.Map();

    if (details != null) {
      output["details"] = details.toList();
    }
    if (reason != null) {
      output["reason"] = reason;
    }

    return output;
  }

  /** Return String representation of CreativeCorrections */
  core.String toString() => JSON.encode(this.toJson());

}

class CreativeDisapprovalReasons {

  /** Additional details about the reason for disapproval. */
  core.List<core.String> details;

  /** The categorized reason for disapproval. */
  core.String reason;

  /** Create new CreativeDisapprovalReasons from JSON data */
  CreativeDisapprovalReasons.fromJson(core.Map json) {
    if (json.containsKey("details")) {
      details = json["details"].toList();
    }
    if (json.containsKey("reason")) {
      reason = json["reason"];
    }
  }

  /** Create JSON Object for CreativeDisapprovalReasons */
  core.Map toJson() {
    var output = new core.Map();

    if (details != null) {
      output["details"] = details.toList();
    }
    if (reason != null) {
      output["reason"] = reason;
    }

    return output;
  }

  /** Return String representation of CreativeDisapprovalReasons */
  core.String toString() => JSON.encode(this.toJson());

}

/** The filtering reasons for the creative. If this feature is not enabled, please ask your technical account manager. Read-only. This field should not be set in requests. */
class CreativeFilteringReasons {

  /** The date in ISO 8601 format for the data. The data is collected from 00:00:00 to 23:59:59 in PST. */
  core.String date;

  /** The filtering reasons. */
  core.List<CreativeFilteringReasonsReasons> reasons;

  /** Create new CreativeFilteringReasons from JSON data */
  CreativeFilteringReasons.fromJson(core.Map json) {
    if (json.containsKey("date")) {
      date = json["date"];
    }
    if (json.containsKey("reasons")) {
      reasons = json["reasons"].map((reasonsItem) => new CreativeFilteringReasonsReasons.fromJson(reasonsItem)).toList();
    }
  }

  /** Create JSON Object for CreativeFilteringReasons */
  core.Map toJson() {
    var output = new core.Map();

    if (date != null) {
      output["date"] = date;
    }
    if (reasons != null) {
      output["reasons"] = reasons.map((reasonsItem) => reasonsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of CreativeFilteringReasons */
  core.String toString() => JSON.encode(this.toJson());

}

class CreativeFilteringReasonsReasons {

  /** The number of times the creative was filtered for the status. The count is aggregated across all publishers on the exchange. */
  core.int filteringCount;

  /** The filtering status code. Please refer to the creative-status-codes.txt file for different statuses. */
  core.int filteringStatus;

  /** Create new CreativeFilteringReasonsReasons from JSON data */
  CreativeFilteringReasonsReasons.fromJson(core.Map json) {
    if (json.containsKey("filteringCount")) {
      filteringCount = (json["filteringCount"] is core.String) ? core.int.parse(json["filteringCount"]) : json["filteringCount"];
    }
    if (json.containsKey("filteringStatus")) {
      filteringStatus = json["filteringStatus"];
    }
  }

  /** Create JSON Object for CreativeFilteringReasonsReasons */
  core.Map toJson() {
    var output = new core.Map();

    if (filteringCount != null) {
      output["filteringCount"] = filteringCount;
    }
    if (filteringStatus != null) {
      output["filteringStatus"] = filteringStatus;
    }

    return output;
  }

  /** Return String representation of CreativeFilteringReasonsReasons */
  core.String toString() => JSON.encode(this.toJson());

}

/** The creatives feed lists the active creatives for the Ad Exchange buyer accounts that the user has access to. Each entry in the feed corresponds to a single creative. */
class CreativesList {

  /** A list of creatives. */
  core.List<Creative> items;

  /** Resource type. */
  core.String kind;

  /** Continuation token used to page through creatives. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  core.String nextPageToken;

  /** Create new CreativesList from JSON data */
  CreativesList.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Creative.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for CreativesList */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of CreativesList */
  core.String toString() => JSON.encode(this.toJson());

}

/** The configuration data for an Ad Exchange direct deal. */
class DirectDeal {

  /** The account id of the buyer this deal is for. */
  core.int accountId;

  /** The name of the advertiser this deal is for. */
  core.String advertiser;

  /** The currency code that applies to the fixed_cpm value. If not set then assumed to be USD. */
  core.String currencyCode;

  /** End time for when this deal stops being active. If not set then this deal is valid until manually disabled by the publisher. In seconds since the epoch. */
  core.int endTime;

  /** The fixed price for this direct deal. In cpm micros of currency according to currency_code. If set, then this deal is eligible for the fixed price tier of buying (highest priority, pay exactly the configured fixed price). */
  core.int fixedCpm;

  /** Deal id. */
  core.int id;

  /** Resource type. */
  core.String kind;

  /** Deal name. */
  core.String name;

  /** The minimum price for this direct deal. In cpm micros of currency according to currency_code. If set, then this deal is eligible for the private exchange tier of buying (below fixed price priority, run as a second price auction). */
  core.int privateExchangeMinCpm;

  /** If true, the publisher has opted to have their blocks ignored when a creative is bid with for this deal. */
  core.bool publisherBlocksOverriden;

  /** The name of the publisher offering this direct deal. */
  core.String sellerNetwork;

  /** Start time for when this deal becomes active. If not set then this deal is active immediately upon creation. In seconds since the epoch. */
  core.int startTime;

  /** Create new DirectDeal from JSON data */
  DirectDeal.fromJson(core.Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("advertiser")) {
      advertiser = json["advertiser"];
    }
    if (json.containsKey("currencyCode")) {
      currencyCode = json["currencyCode"];
    }
    if (json.containsKey("endTime")) {
      endTime = (json["endTime"] is core.String) ? core.int.parse(json["endTime"]) : json["endTime"];
    }
    if (json.containsKey("fixedCpm")) {
      fixedCpm = (json["fixedCpm"] is core.String) ? core.int.parse(json["fixedCpm"]) : json["fixedCpm"];
    }
    if (json.containsKey("id")) {
      id = (json["id"] is core.String) ? core.int.parse(json["id"]) : json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("privateExchangeMinCpm")) {
      privateExchangeMinCpm = (json["privateExchangeMinCpm"] is core.String) ? core.int.parse(json["privateExchangeMinCpm"]) : json["privateExchangeMinCpm"];
    }
    if (json.containsKey("publisherBlocksOverriden")) {
      publisherBlocksOverriden = json["publisherBlocksOverriden"];
    }
    if (json.containsKey("sellerNetwork")) {
      sellerNetwork = json["sellerNetwork"];
    }
    if (json.containsKey("startTime")) {
      startTime = (json["startTime"] is core.String) ? core.int.parse(json["startTime"]) : json["startTime"];
    }
  }

  /** Create JSON Object for DirectDeal */
  core.Map toJson() {
    var output = new core.Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (advertiser != null) {
      output["advertiser"] = advertiser;
    }
    if (currencyCode != null) {
      output["currencyCode"] = currencyCode;
    }
    if (endTime != null) {
      output["endTime"] = endTime;
    }
    if (fixedCpm != null) {
      output["fixedCpm"] = fixedCpm;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (privateExchangeMinCpm != null) {
      output["privateExchangeMinCpm"] = privateExchangeMinCpm;
    }
    if (publisherBlocksOverriden != null) {
      output["publisherBlocksOverriden"] = publisherBlocksOverriden;
    }
    if (sellerNetwork != null) {
      output["sellerNetwork"] = sellerNetwork;
    }
    if (startTime != null) {
      output["startTime"] = startTime;
    }

    return output;
  }

  /** Return String representation of DirectDeal */
  core.String toString() => JSON.encode(this.toJson());

}

/** A direct deals feed lists Direct Deals the Ad Exchange buyer account has access to. This includes direct deals set up for the buyer account as well as its merged stream seats. */
class DirectDealsList {

  /** A list of direct deals relevant for your account. */
  core.List<DirectDeal> directDeals;

  /** Resource type. */
  core.String kind;

  /** Create new DirectDealsList from JSON data */
  DirectDealsList.fromJson(core.Map json) {
    if (json.containsKey("directDeals")) {
      directDeals = json["directDeals"].map((directDealsItem) => new DirectDeal.fromJson(directDealsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for DirectDealsList */
  core.Map toJson() {
    var output = new core.Map();

    if (directDeals != null) {
      output["directDeals"] = directDeals.map((directDealsItem) => directDealsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of DirectDealsList */
  core.String toString() => JSON.encode(this.toJson());

}

/** The configuration data for an Ad Exchange performance report list. */
class PerformanceReport {

  /** Rate of various prefiltering statuses per match. Please refer to the callout-status-codes.txt file for different statuses. */
  core.List<core.Object> calloutStatusRate;

  /** Average QPS for cookie matcher operations. */
  core.List<core.Object> cookieMatcherStatusRate;

  /** Rate of ads with a given status. Please refer to the creative-status-codes.txt file for different statuses. */
  core.List<core.Object> creativeStatusRate;

  /** Average QPS for hosted match operations. */
  core.List<core.Object> hostedMatchStatusRate;

  /** Resource type. */
  core.String kind;

  /** The 50th percentile round trip latency(ms) as perceived from Google servers for the duration period covered by the report. */
  core.num latency50thPercentile;

  /** The 85th percentile round trip latency(ms) as perceived from Google servers for the duration period covered by the report. */
  core.num latency85thPercentile;

  /** The 95th percentile round trip latency(ms) as perceived from Google servers for the duration period covered by the report. */
  core.num latency95thPercentile;

  /** Rate of various quota account statuses per quota check. */
  core.num noQuotaInRegion;

  /** Rate of various quota account statuses per quota check. */
  core.num outOfQuota;

  /** Average QPS for pixel match requests from clients. */
  core.num pixelMatchRequests;

  /** Average QPS for pixel match responses from clients. */
  core.num pixelMatchResponses;

  /** The configured quota limits for this account. */
  core.num quotaConfiguredLimit;

  /** The throttled quota limits for this account. */
  core.num quotaThrottledLimit;

  /** The trading location of this data. */
  core.String region;

  /** The unix timestamp of the starting time of this performance data. */
  core.int timestamp;

  /** Create new PerformanceReport from JSON data */
  PerformanceReport.fromJson(core.Map json) {
    if (json.containsKey("calloutStatusRate")) {
      calloutStatusRate = json["calloutStatusRate"].toList();
    }
    if (json.containsKey("cookieMatcherStatusRate")) {
      cookieMatcherStatusRate = json["cookieMatcherStatusRate"].toList();
    }
    if (json.containsKey("creativeStatusRate")) {
      creativeStatusRate = json["creativeStatusRate"].toList();
    }
    if (json.containsKey("hostedMatchStatusRate")) {
      hostedMatchStatusRate = json["hostedMatchStatusRate"].toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("latency50thPercentile")) {
      latency50thPercentile = json["latency50thPercentile"];
    }
    if (json.containsKey("latency85thPercentile")) {
      latency85thPercentile = json["latency85thPercentile"];
    }
    if (json.containsKey("latency95thPercentile")) {
      latency95thPercentile = json["latency95thPercentile"];
    }
    if (json.containsKey("noQuotaInRegion")) {
      noQuotaInRegion = json["noQuotaInRegion"];
    }
    if (json.containsKey("outOfQuota")) {
      outOfQuota = json["outOfQuota"];
    }
    if (json.containsKey("pixelMatchRequests")) {
      pixelMatchRequests = json["pixelMatchRequests"];
    }
    if (json.containsKey("pixelMatchResponses")) {
      pixelMatchResponses = json["pixelMatchResponses"];
    }
    if (json.containsKey("quotaConfiguredLimit")) {
      quotaConfiguredLimit = json["quotaConfiguredLimit"];
    }
    if (json.containsKey("quotaThrottledLimit")) {
      quotaThrottledLimit = json["quotaThrottledLimit"];
    }
    if (json.containsKey("region")) {
      region = json["region"];
    }
    if (json.containsKey("timestamp")) {
      timestamp = (json["timestamp"] is core.String) ? core.int.parse(json["timestamp"]) : json["timestamp"];
    }
  }

  /** Create JSON Object for PerformanceReport */
  core.Map toJson() {
    var output = new core.Map();

    if (calloutStatusRate != null) {
      output["calloutStatusRate"] = calloutStatusRate.toList();
    }
    if (cookieMatcherStatusRate != null) {
      output["cookieMatcherStatusRate"] = cookieMatcherStatusRate.toList();
    }
    if (creativeStatusRate != null) {
      output["creativeStatusRate"] = creativeStatusRate.toList();
    }
    if (hostedMatchStatusRate != null) {
      output["hostedMatchStatusRate"] = hostedMatchStatusRate.toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (latency50thPercentile != null) {
      output["latency50thPercentile"] = latency50thPercentile;
    }
    if (latency85thPercentile != null) {
      output["latency85thPercentile"] = latency85thPercentile;
    }
    if (latency95thPercentile != null) {
      output["latency95thPercentile"] = latency95thPercentile;
    }
    if (noQuotaInRegion != null) {
      output["noQuotaInRegion"] = noQuotaInRegion;
    }
    if (outOfQuota != null) {
      output["outOfQuota"] = outOfQuota;
    }
    if (pixelMatchRequests != null) {
      output["pixelMatchRequests"] = pixelMatchRequests;
    }
    if (pixelMatchResponses != null) {
      output["pixelMatchResponses"] = pixelMatchResponses;
    }
    if (quotaConfiguredLimit != null) {
      output["quotaConfiguredLimit"] = quotaConfiguredLimit;
    }
    if (quotaThrottledLimit != null) {
      output["quotaThrottledLimit"] = quotaThrottledLimit;
    }
    if (region != null) {
      output["region"] = region;
    }
    if (timestamp != null) {
      output["timestamp"] = timestamp;
    }

    return output;
  }

  /** Return String representation of PerformanceReport */
  core.String toString() => JSON.encode(this.toJson());

}

/** The configuration data for an Ad Exchange performance report list. https://sites.google.com/a/google.com/adx-integration/Home/engineering/binary-releases/rtb-api-release https://cs.corp.google.com/#piper///depot/google3/contentads/adx/tools/rtb_api/adxrtb.py */
class PerformanceReportList {

  /** Resource type. */
  core.String kind;

  /** A list of performance reports relevant for the account. */
  core.List<PerformanceReport> performanceReport;

  /** Create new PerformanceReportList from JSON data */
  PerformanceReportList.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("performanceReport")) {
      performanceReport = json["performanceReport"].map((performanceReportItem) => new PerformanceReport.fromJson(performanceReportItem)).toList();
    }
  }

  /** Create JSON Object for PerformanceReportList */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (performanceReport != null) {
      output["performanceReport"] = performanceReport.map((performanceReportItem) => performanceReportItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of PerformanceReportList */
  core.String toString() => JSON.encode(this.toJson());

}

class PretargetingConfig {

  /** The id for billing purposes, provided for reference. Leave this field blank for insert requests; the id will be generated automatically. */
  core.int billingId;

  /** The config id; generated automatically. Leave this field blank for insert requests. */
  core.int configId;

  /** The name of the config. Must be unique. Required for all requests. */
  core.String configName;

  /** List must contain exactly one of PRETARGETING_CREATIVE_TYPE_HTML or PRETARGETING_CREATIVE_TYPE_VIDEO. */
  core.List<core.String> creativeType;

  /** Requests which allow one of these (width, height) pairs will match. All pairs must be supported ad dimensions. */
  core.List<PretargetingConfigDimensions> dimensions;

  /** Requests with any of these content labels will not match. Values are from content-labels.txt in the downloadable files section. */
  core.List<core.int> excludedContentLabels;

  /** Requests containing any of these geo criteria ids will not match. */
  core.List<core.int> excludedGeoCriteriaIds;

  /** Requests containing any of these placements will not match. */
  core.List<PretargetingConfigExcludedPlacements> excludedPlacements;

  /** Requests containing any of these users list ids will not match. */
  core.List<core.int> excludedUserLists;

  /** Requests containing any of these vertical ids will not match. Values are from the publisher-verticals.txt file in the downloadable files section. */
  core.List<core.int> excludedVerticals;

  /** Requests containing any of these geo criteria ids will match. */
  core.List<core.int> geoCriteriaIds;

  /** Whether this config is active. Required for all requests. */
  core.bool isActive;

  /** The kind of the resource, i.e. "adexchangebuyer#pretargetingConfig". */
  core.String kind;

  /** Request containing any of these language codes will match. */
  core.List<core.String> languages;

  /** Requests containing any of these mobile carrier ids will match. Values are from mobile-carriers.csv in the downloadable files section. */
  core.List<core.int> mobileCarriers;

  /** Requests containing any of these mobile device ids will match. Values are from mobile-devices.csv in the downloadable files section. */
  core.List<core.int> mobileDevices;

  /** Requests containing any of these mobile operating system version ids will match. Values are from mobile-os.csv in the downloadable files section. */
  core.List<core.int> mobileOperatingSystemVersions;

  /** Requests containing any of these placements will match. */
  core.List<PretargetingConfigPlacements> placements;

  /** Requests matching any of these platforms will match. Possible values are PRETARGETING_PLATFORM_MOBILE, PRETARGETING_PLATFORM_DESKTOP, and PRETARGETING_PLATFORM_TABLET. */
  core.List<core.String> platforms;

  /** Creative attributes should be declared here if all creatives corresponding to this pretargeting configuration have that creative attribute. Values are from pretargetable-creative-attributes.txt in the downloadable files section. */
  core.List<core.int> supportedCreativeAttributes;

  /** Requests containing any of these user list ids will match. */
  core.List<core.int> userLists;

  /** Requests that allow any of these vendor ids will match. Values are from vendors.txt in the downloadable files section. */
  core.List<core.int> vendorTypes;

  /** Requests containing any of these vertical ids will match. */
  core.List<core.int> verticals;

  /** Create new PretargetingConfig from JSON data */
  PretargetingConfig.fromJson(core.Map json) {
    if (json.containsKey("billingId")) {
      billingId = (json["billingId"] is core.String) ? core.int.parse(json["billingId"]) : json["billingId"];
    }
    if (json.containsKey("configId")) {
      configId = (json["configId"] is core.String) ? core.int.parse(json["configId"]) : json["configId"];
    }
    if (json.containsKey("configName")) {
      configName = json["configName"];
    }
    if (json.containsKey("creativeType")) {
      creativeType = json["creativeType"].toList();
    }
    if (json.containsKey("dimensions")) {
      dimensions = json["dimensions"].map((dimensionsItem) => new PretargetingConfigDimensions.fromJson(dimensionsItem)).toList();
    }
    if (json.containsKey("excludedContentLabels")) {
      excludedContentLabels = json["excludedContentLabels"].map((excludedContentLabelsItem) => (excludedContentLabelsItem is core.String) ? core.int.parse(excludedContentLabelsItem) : excludedContentLabelsItem).toList();
    }
    if (json.containsKey("excludedGeoCriteriaIds")) {
      excludedGeoCriteriaIds = json["excludedGeoCriteriaIds"].map((excludedGeoCriteriaIdsItem) => (excludedGeoCriteriaIdsItem is core.String) ? core.int.parse(excludedGeoCriteriaIdsItem) : excludedGeoCriteriaIdsItem).toList();
    }
    if (json.containsKey("excludedPlacements")) {
      excludedPlacements = json["excludedPlacements"].map((excludedPlacementsItem) => new PretargetingConfigExcludedPlacements.fromJson(excludedPlacementsItem)).toList();
    }
    if (json.containsKey("excludedUserLists")) {
      excludedUserLists = json["excludedUserLists"].map((excludedUserListsItem) => (excludedUserListsItem is core.String) ? core.int.parse(excludedUserListsItem) : excludedUserListsItem).toList();
    }
    if (json.containsKey("excludedVerticals")) {
      excludedVerticals = json["excludedVerticals"].map((excludedVerticalsItem) => (excludedVerticalsItem is core.String) ? core.int.parse(excludedVerticalsItem) : excludedVerticalsItem).toList();
    }
    if (json.containsKey("geoCriteriaIds")) {
      geoCriteriaIds = json["geoCriteriaIds"].map((geoCriteriaIdsItem) => (geoCriteriaIdsItem is core.String) ? core.int.parse(geoCriteriaIdsItem) : geoCriteriaIdsItem).toList();
    }
    if (json.containsKey("isActive")) {
      isActive = json["isActive"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("languages")) {
      languages = json["languages"].toList();
    }
    if (json.containsKey("mobileCarriers")) {
      mobileCarriers = json["mobileCarriers"].map((mobileCarriersItem) => (mobileCarriersItem is core.String) ? core.int.parse(mobileCarriersItem) : mobileCarriersItem).toList();
    }
    if (json.containsKey("mobileDevices")) {
      mobileDevices = json["mobileDevices"].map((mobileDevicesItem) => (mobileDevicesItem is core.String) ? core.int.parse(mobileDevicesItem) : mobileDevicesItem).toList();
    }
    if (json.containsKey("mobileOperatingSystemVersions")) {
      mobileOperatingSystemVersions = json["mobileOperatingSystemVersions"].map((mobileOperatingSystemVersionsItem) => (mobileOperatingSystemVersionsItem is core.String) ? core.int.parse(mobileOperatingSystemVersionsItem) : mobileOperatingSystemVersionsItem).toList();
    }
    if (json.containsKey("placements")) {
      placements = json["placements"].map((placementsItem) => new PretargetingConfigPlacements.fromJson(placementsItem)).toList();
    }
    if (json.containsKey("platforms")) {
      platforms = json["platforms"].toList();
    }
    if (json.containsKey("supportedCreativeAttributes")) {
      supportedCreativeAttributes = json["supportedCreativeAttributes"].map((supportedCreativeAttributesItem) => (supportedCreativeAttributesItem is core.String) ? core.int.parse(supportedCreativeAttributesItem) : supportedCreativeAttributesItem).toList();
    }
    if (json.containsKey("userLists")) {
      userLists = json["userLists"].map((userListsItem) => (userListsItem is core.String) ? core.int.parse(userListsItem) : userListsItem).toList();
    }
    if (json.containsKey("vendorTypes")) {
      vendorTypes = json["vendorTypes"].map((vendorTypesItem) => (vendorTypesItem is core.String) ? core.int.parse(vendorTypesItem) : vendorTypesItem).toList();
    }
    if (json.containsKey("verticals")) {
      verticals = json["verticals"].map((verticalsItem) => (verticalsItem is core.String) ? core.int.parse(verticalsItem) : verticalsItem).toList();
    }
  }

  /** Create JSON Object for PretargetingConfig */
  core.Map toJson() {
    var output = new core.Map();

    if (billingId != null) {
      output["billingId"] = billingId;
    }
    if (configId != null) {
      output["configId"] = configId;
    }
    if (configName != null) {
      output["configName"] = configName;
    }
    if (creativeType != null) {
      output["creativeType"] = creativeType.toList();
    }
    if (dimensions != null) {
      output["dimensions"] = dimensions.map((dimensionsItem) => dimensionsItem.toJson()).toList();
    }
    if (excludedContentLabels != null) {
      output["excludedContentLabels"] = excludedContentLabels.toList();
    }
    if (excludedGeoCriteriaIds != null) {
      output["excludedGeoCriteriaIds"] = excludedGeoCriteriaIds.toList();
    }
    if (excludedPlacements != null) {
      output["excludedPlacements"] = excludedPlacements.map((excludedPlacementsItem) => excludedPlacementsItem.toJson()).toList();
    }
    if (excludedUserLists != null) {
      output["excludedUserLists"] = excludedUserLists.toList();
    }
    if (excludedVerticals != null) {
      output["excludedVerticals"] = excludedVerticals.toList();
    }
    if (geoCriteriaIds != null) {
      output["geoCriteriaIds"] = geoCriteriaIds.toList();
    }
    if (isActive != null) {
      output["isActive"] = isActive;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (languages != null) {
      output["languages"] = languages.toList();
    }
    if (mobileCarriers != null) {
      output["mobileCarriers"] = mobileCarriers.toList();
    }
    if (mobileDevices != null) {
      output["mobileDevices"] = mobileDevices.toList();
    }
    if (mobileOperatingSystemVersions != null) {
      output["mobileOperatingSystemVersions"] = mobileOperatingSystemVersions.toList();
    }
    if (placements != null) {
      output["placements"] = placements.map((placementsItem) => placementsItem.toJson()).toList();
    }
    if (platforms != null) {
      output["platforms"] = platforms.toList();
    }
    if (supportedCreativeAttributes != null) {
      output["supportedCreativeAttributes"] = supportedCreativeAttributes.toList();
    }
    if (userLists != null) {
      output["userLists"] = userLists.toList();
    }
    if (vendorTypes != null) {
      output["vendorTypes"] = vendorTypes.toList();
    }
    if (verticals != null) {
      output["verticals"] = verticals.toList();
    }

    return output;
  }

  /** Return String representation of PretargetingConfig */
  core.String toString() => JSON.encode(this.toJson());

}

class PretargetingConfigDimensions {

  /** Height in pixels. */
  core.int height;

  /** Width in pixels. */
  core.int width;

  /** Create new PretargetingConfigDimensions from JSON data */
  PretargetingConfigDimensions.fromJson(core.Map json) {
    if (json.containsKey("height")) {
      height = (json["height"] is core.String) ? core.int.parse(json["height"]) : json["height"];
    }
    if (json.containsKey("width")) {
      width = (json["width"] is core.String) ? core.int.parse(json["width"]) : json["width"];
    }
  }

  /** Create JSON Object for PretargetingConfigDimensions */
  core.Map toJson() {
    var output = new core.Map();

    if (height != null) {
      output["height"] = height;
    }
    if (width != null) {
      output["width"] = width;
    }

    return output;
  }

  /** Return String representation of PretargetingConfigDimensions */
  core.String toString() => JSON.encode(this.toJson());

}

class PretargetingConfigExcludedPlacements {

  /** The value of the placement. Interpretation depends on the placement type, e.g. URL for a site placement, channel name for a channel placement, app id for a mobile app placement. */
  core.String token;

  /** The type of the placement. */
  core.String type;

  /** Create new PretargetingConfigExcludedPlacements from JSON data */
  PretargetingConfigExcludedPlacements.fromJson(core.Map json) {
    if (json.containsKey("token")) {
      token = json["token"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for PretargetingConfigExcludedPlacements */
  core.Map toJson() {
    var output = new core.Map();

    if (token != null) {
      output["token"] = token;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of PretargetingConfigExcludedPlacements */
  core.String toString() => JSON.encode(this.toJson());

}

class PretargetingConfigPlacements {

  /** The value of the placement. Interpretation depends on the placement type, e.g. URL for a site placement, channel name for a channel placement, app id for a mobile app placement. */
  core.String token;

  /** The type of the placement. */
  core.String type;

  /** Create new PretargetingConfigPlacements from JSON data */
  PretargetingConfigPlacements.fromJson(core.Map json) {
    if (json.containsKey("token")) {
      token = json["token"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for PretargetingConfigPlacements */
  core.Map toJson() {
    var output = new core.Map();

    if (token != null) {
      output["token"] = token;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of PretargetingConfigPlacements */
  core.String toString() => JSON.encode(this.toJson());

}

class PretargetingConfigList {

  /** A list of pretargeting configs */
  core.List<PretargetingConfig> items;

  /** Resource type. */
  core.String kind;

  /** Create new PretargetingConfigList from JSON data */
  PretargetingConfigList.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new PretargetingConfig.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for PretargetingConfigList */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of PretargetingConfigList */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
