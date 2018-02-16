.class Lcom/facebook/appevents/AppEventQueue;
.super Ljava/lang/Object;
.source "AppEventQueue.java"


# static fields
.field private static final FLUSH_PERIOD_IN_SECONDS:I = 0xf

.field private static final NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static volatile appEventCollection:Lcom/facebook/appevents/AppEventCollection;

.field private static final flushRunnable:Ljava/lang/Runnable;

.field private static scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

.field private static final singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/facebook/appevents/AppEventCollection;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventCollection;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    .line 57
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 61
    new-instance v0, Lcom/facebook/appevents/AppEventQueue$1;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventQueue$1;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->flushRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0
    .param p0, "x0"    # Ljava/util/concurrent/ScheduledFuture;

    .prologue
    .line 49
    sput-object p0, Lcom/facebook/appevents/AppEventQueue;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$100()Lcom/facebook/appevents/AppEventCollection;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/facebook/appevents/AppEventCollection;)Lcom/facebook/appevents/AppEventCollection;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/appevents/AppEventCollection;

    .prologue
    .line 49
    sput-object p0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->flushRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p1, "x1"    # Lcom/facebook/GraphRequest;
    .param p2, "x2"    # Lcom/facebook/GraphResponse;
    .param p3, "x3"    # Lcom/facebook/appevents/SessionEventsState;
    .param p4, "x4"    # Lcom/facebook/appevents/FlushStatistics;

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/appevents/AppEventQueue;->handleResponse(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V

    return-void
.end method

.method public static add(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V
    .locals 2
    .param p0, "accessTokenAppId"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p1, "appEvent"    # Lcom/facebook/appevents/AppEvent;

    .prologue
    .line 96
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/appevents/AppEventQueue$4;

    invoke-direct {v1, p0, p1}, Lcom/facebook/appevents/AppEventQueue$4;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method private static buildRequestForSession(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;ZLcom/facebook/appevents/FlushStatistics;)Lcom/facebook/GraphRequest;
    .locals 10
    .param p0, "accessTokenAppId"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p1, "appEvents"    # Lcom/facebook/appevents/SessionEventsState;
    .param p2, "limitEventUsage"    # Z
    .param p3, "flushState"    # Lcom/facebook/appevents/FlushStatistics;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/facebook/appevents/AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "applicationId":Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/facebook/internal/Utility;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/Utility$FetchedAppSettings;

    move-result-object v1

    .line 200
    .local v1, "fetchedAppSettings":Lcom/facebook/internal/Utility$FetchedAppSettings;
    const-string v7, "%s/activities"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v9

    .line 202
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 200
    invoke-static {v6, v7, v6, v6}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v3

    .line 206
    .local v3, "postRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v5

    .line 207
    .local v5, "requestParameters":Landroid/os/Bundle;
    if-nez v5, :cond_0

    .line 208
    new-instance v5, Landroid/os/Bundle;

    .end local v5    # "requestParameters":Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 210
    .restart local v5    # "requestParameters":Landroid/os/Bundle;
    :cond_0
    const-string v7, "access_token"

    invoke-virtual {p0}, Lcom/facebook/appevents/AccessTokenAppIdPair;->getAccessTokenString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getPushNotificationsRegistrationId()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "pushNotificationsRegistrationId":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 214
    const-string v7, "device_token"

    invoke-virtual {v5, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_1
    invoke-virtual {v3, v5}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 219
    if-nez v1, :cond_2

    move-object v3, v6

    .line 247
    .end local v3    # "postRequest":Lcom/facebook/GraphRequest;
    :goto_0
    return-object v3

    .line 225
    .restart local v3    # "postRequest":Lcom/facebook/GraphRequest;
    :cond_2
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 226
    invoke-virtual {v1}, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsImplicitLogging()Z

    move-result v8

    .line 223
    invoke-virtual {p1, v3, v7, v8, p2}, Lcom/facebook/appevents/SessionEventsState;->populateRequest(Lcom/facebook/GraphRequest;Landroid/content/Context;ZZ)I

    move-result v2

    .line 229
    .local v2, "numEvents":I
    if-nez v2, :cond_3

    move-object v3, v6

    .line 230
    goto :goto_0

    .line 233
    :cond_3
    iget v6, p3, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    add-int/2addr v6, v2

    iput v6, p3, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    .line 235
    new-instance v6, Lcom/facebook/appevents/AppEventQueue$5;

    invoke-direct {v6, p0, v3, p1, p3}, Lcom/facebook/appevents/AppEventQueue$5;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V

    invoke-virtual {v3, v6}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    goto :goto_0
.end method

.method public static flush(Lcom/facebook/appevents/FlushReason;)V
    .locals 2
    .param p0, "reason"    # Lcom/facebook/appevents/FlushReason;

    .prologue
    .line 85
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/appevents/AppEventQueue$3;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/AppEventQueue$3;-><init>(Lcom/facebook/appevents/FlushReason;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method static flushAndWait(Lcom/facebook/appevents/FlushReason;)V
    .locals 7
    .param p0, "reason"    # Lcom/facebook/appevents/FlushReason;

    .prologue
    .line 126
    invoke-static {}, Lcom/facebook/appevents/AppEventStore;->readAndClearStore()Lcom/facebook/appevents/PersistedEvents;

    move-result-object v4

    .line 128
    .local v4, "result":Lcom/facebook/appevents/PersistedEvents;
    sget-object v5, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    invoke-virtual {v5, v4}, Lcom/facebook/appevents/AppEventCollection;->addPersistedEvents(Lcom/facebook/appevents/PersistedEvents;)V

    .line 133
    :try_start_0
    sget-object v5, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    invoke-static {p0, v5}, Lcom/facebook/appevents/AppEventQueue;->sendEventsToServer(Lcom/facebook/appevents/FlushReason;Lcom/facebook/appevents/AppEventCollection;)Lcom/facebook/appevents/FlushStatistics;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 141
    .local v2, "flushResults":Lcom/facebook/appevents/FlushStatistics;
    if-eqz v2, :cond_0

    .line 142
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    iget v6, v2, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    const-string v5, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    iget-object v6, v2, Lcom/facebook/appevents/FlushStatistics;->result:Lcom/facebook/appevents/FlushResult;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 149
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 150
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 152
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "flushResults":Lcom/facebook/appevents/FlushStatistics;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    const-string v6, "Caught unexpected exception while flushing app events: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/appevents/AccessTokenAppIdPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    invoke-virtual {v0}, Lcom/facebook/appevents/AppEventCollection;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static handleResponse(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V
    .locals 15
    .param p0, "accessTokenAppId"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p1, "request"    # Lcom/facebook/GraphRequest;
    .param p2, "response"    # Lcom/facebook/GraphResponse;
    .param p3, "appEvents"    # Lcom/facebook/appevents/SessionEventsState;
    .param p4, "flushState"    # Lcom/facebook/appevents/FlushStatistics;

    .prologue
    .line 256
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    .line 257
    .local v2, "error":Lcom/facebook/FacebookRequestError;
    const-string v8, "Success"

    .line 259
    .local v8, "resultDescription":Ljava/lang/String;
    sget-object v5, Lcom/facebook/appevents/FlushResult;->SUCCESS:Lcom/facebook/appevents/FlushResult;

    .line 261
    .local v5, "flushResult":Lcom/facebook/appevents/FlushResult;
    if-eqz v2, :cond_0

    .line 262
    const/4 v1, -0x1

    .line 263
    .local v1, "NO_CONNECTIVITY_ERROR_CODE":I
    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_4

    .line 264
    const-string v8, "Failed: No Connectivity"

    .line 265
    sget-object v5, Lcom/facebook/appevents/FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/FlushResult;

    .line 274
    .end local v1    # "NO_CONNECTIVITY_ERROR_CODE":I
    :cond_0
    :goto_0
    sget-object v9, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    invoke-static {v9}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 275
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/GraphRequest;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 279
    .local v3, "eventsJsonString":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 280
    .local v6, "jsonArray":Lorg/json/JSONArray;
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 285
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .local v7, "prettyPrintedEvents":Ljava/lang/String;
    :goto_1
    sget-object v9, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v10, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    const-string v11, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 287
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/GraphRequest;->getGraphObject()Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v8, v12, v13

    const/4 v13, 0x2

    aput-object v7, v12, v13

    .line 285
    invoke-static {v9, v10, v11, v12}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    .end local v3    # "eventsJsonString":Ljava/lang/String;
    .end local v7    # "prettyPrintedEvents":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_5

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/facebook/appevents/SessionEventsState;->clearInFlightAndStats(Z)V

    .line 294
    sget-object v9, Lcom/facebook/appevents/FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/FlushResult;

    if-ne v5, v9, :cond_2

    .line 300
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    new-instance v10, Lcom/facebook/appevents/AppEventQueue$6;

    move-object/from16 v0, p3

    invoke-direct {v10, p0, v0}, Lcom/facebook/appevents/AppEventQueue$6;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 308
    :cond_2
    sget-object v9, Lcom/facebook/appevents/FlushResult;->SUCCESS:Lcom/facebook/appevents/FlushResult;

    if-eq v5, v9, :cond_3

    .line 310
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/facebook/appevents/FlushStatistics;->result:Lcom/facebook/appevents/FlushResult;

    sget-object v10, Lcom/facebook/appevents/FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/FlushResult;

    if-eq v9, v10, :cond_3

    .line 311
    move-object/from16 v0, p4

    iput-object v5, v0, Lcom/facebook/appevents/FlushStatistics;->result:Lcom/facebook/appevents/FlushResult;

    .line 314
    :cond_3
    return-void

    .line 267
    .restart local v1    # "NO_CONNECTIVITY_ERROR_CODE":I
    :cond_4
    const-string v9, "Failed:\n  Response: %s\n  Error %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 268
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/GraphResponse;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 269
    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 267
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 270
    sget-object v5, Lcom/facebook/appevents/FlushResult;->SERVER_ERROR:Lcom/facebook/appevents/FlushResult;

    goto :goto_0

    .line 281
    .end local v1    # "NO_CONNECTIVITY_ERROR_CODE":I
    .restart local v3    # "eventsJsonString":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 282
    .local v4, "exc":Lorg/json/JSONException;
    const-string v7, "<Can\'t encode events for debug logging>"

    .restart local v7    # "prettyPrintedEvents":Ljava/lang/String;
    goto :goto_1

    .line 292
    .end local v3    # "eventsJsonString":Ljava/lang/String;
    .end local v4    # "exc":Lorg/json/JSONException;
    .end local v7    # "prettyPrintedEvents":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public static persistToDisk()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/appevents/AppEventQueue$2;

    invoke-direct {v1}, Lcom/facebook/appevents/AppEventQueue$2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method private static sendEventsToServer(Lcom/facebook/appevents/FlushReason;Lcom/facebook/appevents/AppEventCollection;)Lcom/facebook/appevents/FlushStatistics;
    .locals 12
    .param p0, "reason"    # Lcom/facebook/appevents/FlushReason;
    .param p1, "appEventCollection"    # Lcom/facebook/appevents/AppEventCollection;

    .prologue
    .line 157
    new-instance v2, Lcom/facebook/appevents/FlushStatistics;

    invoke-direct {v2}, Lcom/facebook/appevents/FlushStatistics;-><init>()V

    .line 159
    .local v2, "flushResults":Lcom/facebook/appevents/FlushStatistics;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 160
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v3

    .line 162
    .local v3, "limitEventUsage":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v5, "requestsToExecute":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphRequest;>;"
    invoke-virtual {p1}, Lcom/facebook/appevents/AppEventCollection;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 166
    .local v0, "accessTokenAppId":Lcom/facebook/appevents/AccessTokenAppIdPair;
    invoke-virtual {p1, v0}, Lcom/facebook/appevents/AppEventCollection;->get(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;

    move-result-object v7

    .line 164
    invoke-static {v0, v7, v3, v2}, Lcom/facebook/appevents/AppEventQueue;->buildRequestForSession(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;ZLcom/facebook/appevents/FlushStatistics;)Lcom/facebook/GraphRequest;

    move-result-object v4

    .line 169
    .local v4, "request":Lcom/facebook/GraphRequest;
    if-eqz v4, :cond_0

    .line 170
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    .end local v0    # "accessTokenAppId":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .end local v4    # "request":Lcom/facebook/GraphRequest;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 175
    sget-object v6, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v7, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    const-string v8, "Flushing %d events due to %s."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v2, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    .line 176
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 177
    invoke-virtual {p0}, Lcom/facebook/appevents/FlushReason;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 175
    invoke-static {v6, v7, v8, v9}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/GraphRequest;

    .line 182
    .restart local v4    # "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v4}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    goto :goto_1

    .line 187
    .end local v4    # "request":Lcom/facebook/GraphRequest;
    :cond_2
    const/4 v2, 0x0

    .end local v2    # "flushResults":Lcom/facebook/appevents/FlushStatistics;
    :cond_3
    return-object v2
.end method
