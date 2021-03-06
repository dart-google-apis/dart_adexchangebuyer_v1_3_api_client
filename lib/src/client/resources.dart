part of adexchangebuyer_v1_3_api;

class AccountsResource_ {

  final Client _client;

  AccountsResource_(Client client) :
      _client = client;

  /**
   * Gets one account by ID.
   *
   * [id] - The account id
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Account> get(core.int id, {core.Map optParams}) {
    var url = "accounts/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Account.fromJson(data));
  }

  /**
   * Retrieves the authenticated user's list of accounts.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AccountsList> list({core.Map optParams}) {
    var url = "accounts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AccountsList.fromJson(data));
  }

  /**
   * Updates an existing account. This method supports patch semantics.
   *
   * [request] - Account to send in this request
   *
   * [id] - The account id
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Account> patch(Account request, core.int id, {core.Map optParams}) {
    var url = "accounts/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Account.fromJson(data));
  }

  /**
   * Updates an existing account.
   *
   * [request] - Account to send in this request
   *
   * [id] - The account id
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Account> update(Account request, core.int id, {core.Map optParams}) {
    var url = "accounts/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Account.fromJson(data));
  }
}

class BillingInfoResource_ {

  final Client _client;

  BillingInfoResource_(Client client) :
      _client = client;

  /**
   * Returns the billing information for one account specified by account ID.
   *
   * [accountId] - The account id.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<BillingInfo> get(core.int accountId, {core.Map optParams}) {
    var url = "billinginfo/{accountId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new BillingInfo.fromJson(data));
  }

  /**
   * Retrieves a list of billing information for all accounts of the authenticated user.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<BillingInfoList> list({core.Map optParams}) {
    var url = "billinginfo";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new BillingInfoList.fromJson(data));
  }
}

class CreativesResource_ {

  final Client _client;

  CreativesResource_(Client client) :
      _client = client;

  /**
   * Gets the status for a single creative. A creative will be available 30-40 minutes after submission.
   *
   * [accountId] - The id for the account that will serve this creative.
   *
   * [buyerCreativeId] - The buyer-specific id for this creative.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Creative> get(core.int accountId, core.String buyerCreativeId, {core.Map optParams}) {
    var url = "creatives/{accountId}/{buyerCreativeId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (buyerCreativeId == null) paramErrors.add("buyerCreativeId is required");
    if (buyerCreativeId != null) urlParams["buyerCreativeId"] = buyerCreativeId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Creative.fromJson(data));
  }

  /**
   * Submit a new creative.
   *
   * [request] - Creative to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Creative> insert(Creative request, {core.Map optParams}) {
    var url = "creatives";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Creative.fromJson(data));
  }

  /**
   * Retrieves a list of the authenticated user's active creatives. A creative will be available 30-40 minutes after submission.
   *
   * [accountId] - When specified, only creatives for the given account ids are returned.
   *   Repeated values: allowed
   *
   * [buyerCreativeId] - When specified, only creatives for the given buyer creative ids are returned.
   *   Repeated values: allowed
   *
   * [maxResults] - Maximum number of entries returned on one result page. If not set, the default is 100. Optional.
   *   Minimum: 1
   *   Maximum: 1000
   *
   * [pageToken] - A continuation token, used to page through ad clients. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response. Optional.
   *
   * [statusFilter] - When specified, only creatives having the given status are returned.
   *   Allowed values:
   *     approved - Creatives which have been approved.
   *     disapproved - Creatives which have been disapproved.
   *     not_checked - Creatives whose status is not yet checked.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CreativesList> list({core.List<core.int> accountId, core.List<core.String> buyerCreativeId, core.int maxResults, core.String pageToken, core.String statusFilter, core.Map optParams}) {
    var url = "creatives";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId != null) queryParams["accountId"] = accountId;
    if (buyerCreativeId != null) queryParams["buyerCreativeId"] = buyerCreativeId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (statusFilter != null && !["approved", "disapproved", "not_checked"].contains(statusFilter)) {
      paramErrors.add("Allowed values for statusFilter: approved, disapproved, not_checked");
    }
    if (statusFilter != null) queryParams["statusFilter"] = statusFilter;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CreativesList.fromJson(data));
  }
}

class DirectDealsResource_ {

  final Client _client;

  DirectDealsResource_(Client client) :
      _client = client;

  /**
   * Gets one direct deal by ID.
   *
   * [id] - The direct deal id
   *
   * [optParams] - Additional query parameters
   */
  async.Future<DirectDeal> get(core.int id, {core.Map optParams}) {
    var url = "directdeals/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new DirectDeal.fromJson(data));
  }

  /**
   * Retrieves the authenticated user's list of direct deals.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<DirectDealsList> list({core.Map optParams}) {
    var url = "directdeals";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new DirectDealsList.fromJson(data));
  }
}

class PerformanceReportResource_ {

  final Client _client;

  PerformanceReportResource_(Client client) :
      _client = client;

  /**
   * Retrieves the authenticated user's list of performance metrics.
   *
   * [accountId] - The account id to get the reports.
   *
   * [endDateTime] - The end time of the report in ISO 8601 timestamp format using UTC.
   *
   * [startDateTime] - The start time of the report in ISO 8601 timestamp format using UTC.
   *
   * [maxResults] - Maximum number of entries returned on one result page. If not set, the default is 100. Optional.
   *   Minimum: 1
   *   Maximum: 1000
   *
   * [pageToken] - A continuation token, used to page through performance reports. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response. Optional.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PerformanceReportList> list(core.int accountId, core.String endDateTime, core.String startDateTime, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "performancereport";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) queryParams["accountId"] = accountId;
    if (endDateTime == null) paramErrors.add("endDateTime is required");
    if (endDateTime != null) queryParams["endDateTime"] = endDateTime;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (startDateTime == null) paramErrors.add("startDateTime is required");
    if (startDateTime != null) queryParams["startDateTime"] = startDateTime;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PerformanceReportList.fromJson(data));
  }
}

class PretargetingConfigResource_ {

  final Client _client;

  PretargetingConfigResource_(Client client) :
      _client = client;

  /**
   * Deletes an existing pretargeting config.
   *
   * [accountId] - The account id to delete the pretargeting config for.
   *
   * [configId] - The specific id of the configuration to delete.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.int accountId, core.int configId, {core.Map optParams}) {
    var url = "pretargetingconfigs/{accountId}/{configId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (configId == null) paramErrors.add("configId is required");
    if (configId != null) urlParams["configId"] = configId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Gets a specific pretargeting configuration
   *
   * [accountId] - The account id to get the pretargeting config for.
   *
   * [configId] - The specific id of the configuration to retrieve.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PretargetingConfig> get(core.int accountId, core.int configId, {core.Map optParams}) {
    var url = "pretargetingconfigs/{accountId}/{configId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (configId == null) paramErrors.add("configId is required");
    if (configId != null) urlParams["configId"] = configId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PretargetingConfig.fromJson(data));
  }

  /**
   * Inserts a new pretargeting configuration.
   *
   * [request] - PretargetingConfig to send in this request
   *
   * [accountId] - The account id to insert the pretargeting config for.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PretargetingConfig> insert(PretargetingConfig request, core.int accountId, {core.Map optParams}) {
    var url = "pretargetingconfigs/{accountId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PretargetingConfig.fromJson(data));
  }

  /**
   * Retrieves a list of the authenticated user's pretargeting configurations.
   *
   * [accountId] - The account id to get the pretargeting configs for.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PretargetingConfigList> list(core.int accountId, {core.Map optParams}) {
    var url = "pretargetingconfigs/{accountId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PretargetingConfigList.fromJson(data));
  }

  /**
   * Updates an existing pretargeting config. This method supports patch semantics.
   *
   * [request] - PretargetingConfig to send in this request
   *
   * [accountId] - The account id to update the pretargeting config for.
   *
   * [configId] - The specific id of the configuration to update.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PretargetingConfig> patch(PretargetingConfig request, core.int accountId, core.int configId, {core.Map optParams}) {
    var url = "pretargetingconfigs/{accountId}/{configId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (configId == null) paramErrors.add("configId is required");
    if (configId != null) urlParams["configId"] = configId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PretargetingConfig.fromJson(data));
  }

  /**
   * Updates an existing pretargeting config.
   *
   * [request] - PretargetingConfig to send in this request
   *
   * [accountId] - The account id to update the pretargeting config for.
   *
   * [configId] - The specific id of the configuration to update.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PretargetingConfig> update(PretargetingConfig request, core.int accountId, core.int configId, {core.Map optParams}) {
    var url = "pretargetingconfigs/{accountId}/{configId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (configId == null) paramErrors.add("configId is required");
    if (configId != null) urlParams["configId"] = configId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PretargetingConfig.fromJson(data));
  }
}

