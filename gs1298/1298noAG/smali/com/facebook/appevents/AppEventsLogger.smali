.class public Lcom/facebook/appevents/AppEventsLogger;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;,
        Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;
    }
.end annotation


# static fields
.field public static final ACTION_APP_EVENTS_FLUSHED:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_FLUSHED"

.field public static final APP_EVENTS_EXTRA_FLUSH_RESULT:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

.field public static final APP_EVENTS_EXTRA_NUM_EVENTS_FLUSHED:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

.field private static final APP_EVENT_NAME_PUSH_OPENED:Ljava/lang/String; = "fb_mobile_push_opened"

.field public static final APP_EVENT_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.appEventPreferences"

.field private static final APP_EVENT_PUSH_PARAMETER_ACTION:Ljava/lang/String; = "fb_push_action"

.field private static final APP_EVENT_PUSH_PARAMETER_CAMPAIGN:Ljava/lang/String; = "fb_push_campaign"

.field private static final APP_SUPPORTS_ATTRIBUTION_ID_RECHECK_PERIOD_IN_SECONDS:I = 0x15180

.field private static final FLUSH_APP_SESSION_INFO_IN_SECONDS:I = 0x1e

.field private static final PUSH_PAYLOAD_CAMPAIGN_KEY:Ljava/lang/String; = "campaign"

.field private static final PUSH_PAYLOAD_KEY:Ljava/lang/String; = "fb_push_payload"

.field private static final SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT:Ljava/lang/String; = "_fbSourceApplicationHasBeenSet"

.field private static final TAG:Ljava/lang/String;

.field private static anonymousAppDeviceGUID:Ljava/lang/String;

.field private static backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

.field private static isActivateAppEventRequested:Z

.field private static isOpenedByApplink:Z

.field private static pushNotificationsRegistrationId:Ljava/lang/String;

.field private static sourceApplication:Ljava/lang/String;

.field private static staticLock:Ljava/lang/Object;


# instance fields
.field private final accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

.field private final contextName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    const-class v0, Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    .line 197
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->AUTO:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .line 198
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "accessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 735
    .line 736
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 735
    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 739
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 2
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "accessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 746
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLogger;->contextName:Ljava/lang/String;

    .line 748
    if-nez p3, :cond_0

    .line 749
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p3

    .line 753
    :cond_0
    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    .line 754
    invoke-virtual {p3}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 756
    :cond_1
    new-instance v0, Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-direct {v0, p3}, Lcom/facebook/appevents/AccessTokenAppIdPair;-><init>(Lcom/facebook/AccessToken;)V

    iput-object v0, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 766
    :goto_0
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->initializeTimersIfNeeded()V

    .line 767
    return-void

    .line 759
    :cond_2
    if-nez p2, :cond_3

    .line 761
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 760
    invoke-static {v0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 763
    :cond_3
    new-instance v0, Lcom/facebook/appevents/AccessTokenAppIdPair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/facebook/appevents/AccessTokenAppIdPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/facebook/appevents/AppEventsLogger;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/AppEventsLogger;->logAppSessionResumeEvent(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/appevents/AppEventsLogger;J)V
    .locals 1
    .param p0, "x0"    # Lcom/facebook/appevents/AppEventsLogger;
    .param p1, "x1"    # J

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/facebook/appevents/AppEventsLogger;->logAppSessionSuspendEvent(J)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public static activateApp(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/app/Application;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public static activateApp(Landroid/app/Application;Ljava/lang/String;)V
    .locals 2
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "The Facebook sdk must be initialized before calling activateApp"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    if-nez p1, :cond_1

    .line 234
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    .line 240
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/FacebookSdk;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V

    .line 242
    invoke-static {p0, p1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->startTracking(Landroid/app/Application;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public static activateApp(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 260
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    const-string v1, "activateApp events are being logged automatically. There\'s no need to call activateApp explicitly, this is safe to remove."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 267
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static activateApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 281
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 282
    sget-object v4, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    const-string v5, "activateApp events are being logged automatically. There\'s no need to call activateApp explicitly, this is safe to remove."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_0
    return-void

    .line 287
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 288
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Both context and applicationId must be non-null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 291
    :cond_2
    instance-of v4, p0, Landroid/app/Activity;

    if-eqz v4, :cond_3

    move-object v4, p0

    .line 292
    check-cast v4, Landroid/app/Activity;

    invoke-static {v4}, Lcom/facebook/appevents/AppEventsLogger;->setSourceApplication(Landroid/app/Activity;)V

    .line 304
    :goto_1
    invoke-static {p0, p1}, Lcom/facebook/FacebookSdk;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    new-instance v2, Lcom/facebook/appevents/AppEventsLogger;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 307
    .local v2, "logger":Lcom/facebook/appevents/AppEventsLogger;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 308
    .local v0, "eventTime":J
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getSourceApplication()Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, "sourceApplicationInfo":Ljava/lang/String;
    sget-object v4, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v5, Lcom/facebook/appevents/AppEventsLogger$1;

    invoke-direct {v5, v2, v0, v1, v3}, Lcom/facebook/appevents/AppEventsLogger$1;-><init>(Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 295
    .end local v0    # "eventTime":J
    .end local v2    # "logger":Lcom/facebook/appevents/AppEventsLogger;
    .end local v3    # "sourceApplicationInfo":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->resetSourceApplication()V

    .line 296
    const-class v4, Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "To set source application the context of activateApp must be an instance of Activity"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static deactivateApp(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 333
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    const-string v1, "deactivateApp events are being logged automatically. There\'s no need to call deactivateApp, this is safe to remove."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/appevents/AppEventsLogger;->deactivateApp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deactivateApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 354
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    sget-object v3, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    const-string v4, "deactivateApp events are being logged automatically. There\'s no need to call deactivateApp, this is safe to remove."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_0
    return-void

    .line 360
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 361
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Both context and applicationId must be non-null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 364
    :cond_2
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->resetSourceApplication()V

    .line 366
    new-instance v2, Lcom/facebook/appevents/AppEventsLogger;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 367
    .local v2, "logger":Lcom/facebook/appevents/AppEventsLogger;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 368
    .local v0, "eventTime":J
    sget-object v3, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v4, Lcom/facebook/appevents/AppEventsLogger$2;

    invoke-direct {v4, v2, v0, v1}, Lcom/facebook/appevents/AppEventsLogger$2;-><init>(Lcom/facebook/appevents/AppEventsLogger;J)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static eagerFlush()V
    .locals 2

    .prologue
    .line 835
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object v0

    sget-object v1, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    if-eq v0, v1, :cond_0

    .line 836
    sget-object v0, Lcom/facebook/appevents/FlushReason;->EAGER_FLUSHING_EVENT:Lcom/facebook/appevents/FlushReason;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventQueue;->flush(Lcom/facebook/appevents/FlushReason;)V

    .line 838
    :cond_0
    return-void
.end method

.method public static getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 929
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 930
    sget-object v2, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 931
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 933
    const-string v1, "com.facebook.sdk.appEventPreferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 936
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "anonymousAppDeviceGUID"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 937
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XZ"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 941
    const-string v1, "com.facebook.sdk.appEventPreferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 942
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "anonymousAppDeviceGUID"

    sget-object v4, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    .line 943
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 944
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 947
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    :cond_1
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->anonymousAppDeviceGUID:Ljava/lang/String;

    return-object v1

    .line 947
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;
    .locals 2

    .prologue
    .line 470
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 471
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    monitor-exit v1

    return-object v0

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getPushNotificationsRegistrationId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 701
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 702
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->pushNotificationsRegistrationId:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 703
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getSourceApplication()Ljava/lang/String;
    .locals 3

    .prologue
    .line 906
    const-string v0, "Unclassified"

    .line 907
    .local v0, "openType":Ljava/lang/String;
    sget-boolean v1, Lcom/facebook/appevents/AppEventsLogger;->isOpenedByApplink:Z

    if-eqz v1, :cond_0

    .line 908
    const-string v0, "Applink"

    .line 910
    :cond_0
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 913
    .end local v0    # "openType":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static initializeTimersIfNeeded()V
    .locals 7

    .prologue
    .line 770
    sget-object v2, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 771
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 772
    monitor-exit v2

    .line 797
    .local v1, "attributionRecheckRunnable":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 774
    .end local v1    # "attributionRecheckRunnable":Ljava/lang/Runnable;
    :cond_0
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 775
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    new-instance v1, Lcom/facebook/appevents/AppEventsLogger$3;

    invoke-direct {v1}, Lcom/facebook/appevents/AppEventsLogger$3;-><init>()V

    .line 791
    .restart local v1    # "attributionRecheckRunnable":Ljava/lang/Runnable;
    sget-object v0, Lcom/facebook/appevents/AppEventsLogger;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x15180

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 775
    .end local v1    # "attributionRecheckRunnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private logAppSessionResumeEvent(JLjava/lang/String;)V
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "sourceApplicationInfo"    # Ljava/lang/String;

    .prologue
    .line 378
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    .line 377
    invoke-static/range {v1 .. v6}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->onResume(Landroid/content/Context;Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V

    .line 383
    return-void
.end method

.method private logAppSessionSuspendEvent(J)V
    .locals 3
    .param p1, "eventTime"    # J

    .prologue
    .line 387
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 386
    invoke-static {v0, v1, p0, p1, p2}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->onSuspend(Landroid/content/Context;Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEventsLogger;J)V

    .line 391
    return-void
.end method

.method private static logEvent(Landroid/content/Context;Lcom/facebook/appevents/AppEvent;Lcom/facebook/appevents/AccessTokenAppIdPair;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Lcom/facebook/appevents/AppEvent;
    .param p2, "accessTokenAppId"    # Lcom/facebook/appevents/AccessTokenAppIdPair;

    .prologue
    .line 818
    invoke-static {p2, p1}, Lcom/facebook/appevents/AppEventQueue;->add(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V

    .line 821
    invoke-virtual {p1}, Lcom/facebook/appevents/AppEvent;->getIsImplicit()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/facebook/appevents/AppEventsLogger;->isActivateAppEventRequested:Z

    if-nez v0, :cond_0

    .line 822
    invoke-virtual {p1}, Lcom/facebook/appevents/AppEvent;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fb_mobile_activate_app"

    if-ne v0, v1, :cond_1

    .line 823
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger;->isActivateAppEventRequested:Z

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string v1, "AppEvents"

    const-string v2, "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity\'s onResume() methodbefore logging other app events."

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    .locals 7
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "valueToSum"    # Ljava/lang/Double;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "isImplicitlyLogged"    # Z
    .param p5, "currentSessionId"    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 805
    new-instance v0, Lcom/facebook/appevents/AppEvent;

    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger;->contextName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/appevents/AppEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 812
    .local v0, "event":Lcom/facebook/appevents/AppEvent;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-static {v1, v0, v2}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Landroid/content/Context;Lcom/facebook/appevents/AppEvent;Lcom/facebook/appevents/AccessTokenAppIdPair;)V

    .line 813
    return-void
.end method

.method public static newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 403
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    invoke-direct {v0, p0, v1, v1}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Lcom/facebook/AccessToken;)Lcom/facebook/appevents/AppEventsLogger;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 415
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/appevents/AppEventsLogger;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 448
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)Lcom/facebook/appevents/AppEventsLogger;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "accessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 434
    new-instance v0, Lcom/facebook/appevents/AppEventsLogger;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/appevents/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method private static notifyDeveloperError(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 846
    sget-object v0, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const-string v1, "AppEvents"

    invoke-static {v0, v1, p0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    return-void
.end method

.method public static onContextStop()V
    .locals 0

    .prologue
    .line 677
    invoke-static {}, Lcom/facebook/appevents/AppEventQueue;->persistToDisk()V

    .line 678
    return-void
.end method

.method static resetSourceApplication()V
    .locals 1

    .prologue
    .line 917
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    .line 918
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/appevents/AppEventsLogger;->isOpenedByApplink:Z

    .line 919
    return-void
.end method

.method public static setFlushBehavior(Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;)V
    .locals 2
    .param p0, "flushBehavior"    # Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .prologue
    .line 482
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 483
    :try_start_0
    sput-object p0, Lcom/facebook/appevents/AppEventsLogger;->flushBehavior:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    .line 484
    monitor-exit v1

    .line 485
    return-void

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setPushNotificationsRegistrationId(Ljava/lang/String;)V
    .locals 2
    .param p0, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 695
    sget-object v1, Lcom/facebook/appevents/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 696
    :try_start_0
    sput-object p0, Lcom/facebook/appevents/AppEventsLogger;->pushNotificationsRegistrationId:Ljava/lang/String;

    .line 697
    monitor-exit v1

    .line 698
    return-void

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static setSourceApplication(Landroid/app/Activity;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x1

    .line 854
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 855
    .local v3, "callingApplication":Landroid/content/ComponentName;
    if-eqz v3, :cond_1

    .line 856
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 857
    .local v4, "callingApplicationPackage":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 859
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->resetSourceApplication()V

    .line 897
    .end local v4    # "callingApplicationPackage":Ljava/lang/String;
    :goto_0
    return-void

    .line 862
    .restart local v4    # "callingApplicationPackage":Ljava/lang/String;
    :cond_0
    sput-object v4, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    .line 868
    .end local v4    # "callingApplicationPackage":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 869
    .local v5, "openIntent":Landroid/content/Intent;
    if-eqz v5, :cond_2

    const-string v6, "_fbSourceApplicationHasBeenSet"

    const/4 v7, 0x0

    .line 870
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 871
    :cond_2
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->resetSourceApplication()V

    goto :goto_0

    .line 875
    :cond_3
    invoke-static {v5}, Lbolts/AppLinks;->getAppLinkData(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 877
    .local v0, "applinkData":Landroid/os/Bundle;
    if-nez v0, :cond_4

    .line 878
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->resetSourceApplication()V

    goto :goto_0

    .line 882
    :cond_4
    sput-boolean v8, Lcom/facebook/appevents/AppEventsLogger;->isOpenedByApplink:Z

    .line 884
    const-string v6, "referer_app_link"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 886
    .local v1, "applinkReferrerData":Landroid/os/Bundle;
    if-nez v1, :cond_5

    .line 887
    const/4 v6, 0x0

    sput-object v6, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    goto :goto_0

    .line 891
    :cond_5
    const-string v6, "package"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 892
    .local v2, "applinkReferrerPackage":Ljava/lang/String;
    sput-object v2, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    .line 895
    const-string v6, "_fbSourceApplicationHasBeenSet"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method static setSourceApplication(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "applicationPackage"    # Ljava/lang/String;
    .param p1, "openByAppLink"    # Z

    .prologue
    .line 901
    sput-object p0, Lcom/facebook/appevents/AppEventsLogger;->sourceApplication:Ljava/lang/String;

    .line 902
    sput-boolean p1, Lcom/facebook/appevents/AppEventsLogger;->isOpenedByApplink:Z

    .line 903
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    .prologue
    .line 665
    sget-object v0, Lcom/facebook/appevents/FlushReason;->EXPLICIT:Lcom/facebook/appevents/FlushReason;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventQueue;->flush(Lcom/facebook/appevents/FlushReason;)V

    .line 666
    return-void
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-virtual {v0}, Lcom/facebook/appevents/AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValidForAccessToken(Lcom/facebook/AccessToken;)Z
    .locals 2
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 686
    new-instance v0, Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-direct {v0, p1}, Lcom/facebook/appevents/AccessTokenAppIdPair;-><init>(Lcom/facebook/AccessToken;)V

    .line 687
    .local v0, "other":Lcom/facebook/appevents/AccessTokenAppIdPair;
    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger;->accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    invoke-virtual {v1, v0}, Lcom/facebook/appevents/AccessTokenAppIdPair;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public logEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 498
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 499
    return-void
.end method

.method public logEvent(Ljava/lang/String;D)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "valueToSum"    # D

    .prologue
    .line 516
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 517
    return-void
.end method

.method public logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 6
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "valueToSum"    # D
    .param p4, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 568
    .line 570
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v4, 0x0

    .line 573
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentSessionGuid()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    .line 568
    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 574
    return-void
.end method

.method public logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 538
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 543
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentSessionGuid()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 538
    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 544
    return-void
.end method

.method public logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;)V
    .locals 1
    .param p1, "purchaseAmount"    # Ljava/math/BigDecimal;
    .param p2, "currency"    # Ljava/util/Currency;

    .prologue
    .line 586
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/appevents/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    .line 587
    return-void
.end method

.method public logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "purchaseAmount"    # Ljava/math/BigDecimal;
    .param p2, "currency"    # Ljava/util/Currency;
    .param p3, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 604
    if-nez p1, :cond_0

    .line 605
    const-string v0, "purchaseAmount cannot be null"

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    .line 619
    :goto_0
    return-void

    .line 607
    :cond_0
    if-nez p2, :cond_1

    .line 608
    const-string v0, "currency cannot be null"

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    goto :goto_0

    .line 612
    :cond_1
    if-nez p3, :cond_2

    .line 613
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "parameters":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 615
    .restart local p3    # "parameters":Landroid/os/Bundle;
    :cond_2
    const-string v0, "fb_currency"

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v0, "fb_mobile_purchase"

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3, p3}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 618
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->eagerFlush()V

    goto :goto_0
.end method

.method public logPushNotificationOpen(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "payload"    # Landroid/os/Bundle;

    .prologue
    .line 626
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/appevents/AppEventsLogger;->logPushNotificationOpen(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method public logPushNotificationOpen(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7
    .param p1, "payload"    # Landroid/os/Bundle;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 634
    const/4 v0, 0x0

    .line 636
    .local v0, "campaignId":Ljava/lang/String;
    :try_start_0
    const-string v4, "fb_push_payload"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 637
    .local v3, "payloadString":Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 658
    .end local v3    # "payloadString":Ljava/lang/String;
    :goto_0
    return-void

    .line 641
    .restart local v3    # "payloadString":Ljava/lang/String;
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 642
    .local v1, "facebookPayload":Lorg/json/JSONObject;
    const-string v4, "campaign"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 646
    .end local v1    # "facebookPayload":Lorg/json/JSONObject;
    .end local v3    # "payloadString":Ljava/lang/String;
    :goto_1
    if-nez v0, :cond_1

    .line 647
    sget-object v4, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    sget-object v5, Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;

    const-string v6, "Malformed payload specified for logging a push notification open."

    invoke-static {v4, v5, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 652
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 653
    .local v2, "parameters":Landroid/os/Bundle;
    const-string v4, "fb_push_campaign"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    if-eqz p2, :cond_2

    .line 655
    const-string v4, "fb_push_action"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :cond_2
    const-string v4, "fb_mobile_push_opened"

    invoke-virtual {p0, v4, v2}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 643
    .end local v2    # "parameters":Landroid/os/Bundle;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "valueToSum"    # Ljava/lang/Double;
    .param p3, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 710
    const/4 v4, 0x1

    .line 715
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentSessionGuid()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 710
    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    .line 716
    return-void
.end method
