.class public final Lcom/facebook/internal/NativeProtocol;
.super Ljava/lang/Object;
.source "NativeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;,
        Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;,
        Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;,
        Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    }
.end annotation


# static fields
.field public static final ACTION_APPINVITE_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.APPINVITES_DIALOG"

.field public static final ACTION_FEED_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.FEED_DIALOG"

.field public static final ACTION_LIKE_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.LIKE_DIALOG"

.field public static final ACTION_MESSAGE_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.MESSAGE_DIALOG"

.field public static final ACTION_OGACTIONPUBLISH_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

.field public static final ACTION_OGMESSAGEPUBLISH_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG"

.field public static final AUDIENCE_EVERYONE:Ljava/lang/String; = "everyone"

.field public static final AUDIENCE_FRIENDS:Ljava/lang/String; = "friends"

.field public static final AUDIENCE_ME:Ljava/lang/String; = "only_me"

.field public static final BRIDGE_ARG_ACTION_ID_STRING:Ljava/lang/String; = "action_id"

.field public static final BRIDGE_ARG_APP_NAME_STRING:Ljava/lang/String; = "app_name"

.field public static final BRIDGE_ARG_ERROR_BUNDLE:Ljava/lang/String; = "error"

.field public static final BRIDGE_ARG_ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final BRIDGE_ARG_ERROR_DESCRIPTION:Ljava/lang/String; = "error_description"

.field public static final BRIDGE_ARG_ERROR_JSON:Ljava/lang/String; = "error_json"

.field public static final BRIDGE_ARG_ERROR_SUBCODE:Ljava/lang/String; = "error_subcode"

.field public static final BRIDGE_ARG_ERROR_TYPE:Ljava/lang/String; = "error_type"

.field private static final CONTENT_SCHEME:Ljava/lang/String; = "content://"

.field public static final ERROR_APPLICATION_ERROR:Ljava/lang/String; = "ApplicationError"

.field public static final ERROR_NETWORK_ERROR:Ljava/lang/String; = "NetworkError"

.field public static final ERROR_PERMISSION_DENIED:Ljava/lang/String; = "PermissionDenied"

.field public static final ERROR_PROTOCOL_ERROR:Ljava/lang/String; = "ProtocolError"

.field public static final ERROR_SERVICE_DISABLED:Ljava/lang/String; = "ServiceDisabled"

.field public static final ERROR_UNKNOWN_ERROR:Ljava/lang/String; = "UnknownError"

.field public static final ERROR_USER_CANCELED:Ljava/lang/String; = "UserCanceled"

.field public static final EXTRA_ACCESS_TOKEN:Ljava/lang/String; = "com.facebook.platform.extra.ACCESS_TOKEN"

.field public static final EXTRA_APPLICATION_ID:Ljava/lang/String; = "com.facebook.platform.extra.APPLICATION_ID"

.field public static final EXTRA_APPLICATION_NAME:Ljava/lang/String; = "com.facebook.platform.extra.APPLICATION_NAME"

.field public static final EXTRA_DIALOG_COMPLETE_KEY:Ljava/lang/String; = "com.facebook.platform.extra.DID_COMPLETE"

.field public static final EXTRA_DIALOG_COMPLETION_GESTURE_KEY:Ljava/lang/String; = "com.facebook.platform.extra.COMPLETION_GESTURE"

.field public static final EXTRA_EXPIRES_SECONDS_SINCE_EPOCH:Ljava/lang/String; = "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

.field public static final EXTRA_GET_INSTALL_DATA_PACKAGE:Ljava/lang/String; = "com.facebook.platform.extra.INSTALLDATA_PACKAGE"

.field public static final EXTRA_PERMISSIONS:Ljava/lang/String; = "com.facebook.platform.extra.PERMISSIONS"

.field public static final EXTRA_PROTOCOL_ACTION:Ljava/lang/String; = "com.facebook.platform.protocol.PROTOCOL_ACTION"

.field public static final EXTRA_PROTOCOL_BRIDGE_ARGS:Ljava/lang/String; = "com.facebook.platform.protocol.BRIDGE_ARGS"

.field public static final EXTRA_PROTOCOL_CALL_ID:Ljava/lang/String; = "com.facebook.platform.protocol.CALL_ID"

.field public static final EXTRA_PROTOCOL_METHOD_ARGS:Ljava/lang/String; = "com.facebook.platform.protocol.METHOD_ARGS"

.field public static final EXTRA_PROTOCOL_METHOD_RESULTS:Ljava/lang/String; = "com.facebook.platform.protocol.RESULT_ARGS"

.field public static final EXTRA_PROTOCOL_VERSION:Ljava/lang/String; = "com.facebook.platform.protocol.PROTOCOL_VERSION"

.field static final EXTRA_PROTOCOL_VERSIONS:Ljava/lang/String; = "com.facebook.platform.extra.PROTOCOL_VERSIONS"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "com.facebook.platform.extra.USER_ID"

.field private static final FACEBOOK_PROXY_AUTH_ACTIVITY:Ljava/lang/String; = "com.facebook.katana.ProxyAuth"

.field public static final FACEBOOK_PROXY_AUTH_APP_ID_KEY:Ljava/lang/String; = "client_id"

.field public static final FACEBOOK_PROXY_AUTH_E2E_KEY:Ljava/lang/String; = "e2e"

.field public static final FACEBOOK_PROXY_AUTH_PERMISSIONS_KEY:Ljava/lang/String; = "scope"

.field private static final FACEBOOK_TOKEN_REFRESH_ACTIVITY:Ljava/lang/String; = "com.facebook.katana.platform.TokenRefreshService"

.field public static final IMAGE_URL_KEY:Ljava/lang/String; = "url"

.field public static final IMAGE_USER_GENERATED_KEY:Ljava/lang/String; = "user_generated"

.field static final INTENT_ACTION_PLATFORM_ACTIVITY:Ljava/lang/String; = "com.facebook.platform.PLATFORM_ACTIVITY"

.field static final INTENT_ACTION_PLATFORM_SERVICE:Ljava/lang/String; = "com.facebook.platform.PLATFORM_SERVICE"

.field private static final KNOWN_PROTOCOL_VERSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MESSAGE_GET_ACCESS_TOKEN_REPLY:I = 0x10001

.field public static final MESSAGE_GET_ACCESS_TOKEN_REQUEST:I = 0x10000

.field public static final MESSAGE_GET_INSTALL_DATA_REPLY:I = 0x10005

.field public static final MESSAGE_GET_INSTALL_DATA_REQUEST:I = 0x10004

.field public static final MESSAGE_GET_LIKE_STATUS_REPLY:I = 0x10007

.field public static final MESSAGE_GET_LIKE_STATUS_REQUEST:I = 0x10006

.field static final MESSAGE_GET_PROTOCOL_VERSIONS_REPLY:I = 0x10003

.field static final MESSAGE_GET_PROTOCOL_VERSIONS_REQUEST:I = 0x10002

.field public static final NO_PROTOCOL_AVAILABLE:I = -0x1

.field public static final OPEN_GRAPH_CREATE_OBJECT_KEY:Ljava/lang/String; = "fbsdk:create_object"

.field private static final PLATFORM_PROVIDER:Ljava/lang/String; = ".provider.PlatformProvider"

.field private static final PLATFORM_PROVIDER_VERSIONS:Ljava/lang/String; = ".provider.PlatformProvider/versions"

.field private static final PLATFORM_PROVIDER_VERSION_COLUMN:Ljava/lang/String; = "version"

.field public static final PROTOCOL_VERSION_20121101:I = 0x133060d

.field public static final PROTOCOL_VERSION_20130502:I = 0x1332ac6

.field public static final PROTOCOL_VERSION_20130618:I = 0x1332b3a

.field public static final PROTOCOL_VERSION_20131107:I = 0x1332d23

.field public static final PROTOCOL_VERSION_20140204:I = 0x13350ac

.field public static final PROTOCOL_VERSION_20140324:I = 0x1335124

.field public static final PROTOCOL_VERSION_20140701:I = 0x133529d

.field public static final PROTOCOL_VERSION_20141001:I = 0x13353c9

.field public static final PROTOCOL_VERSION_20141028:I = 0x13353e4

.field public static final PROTOCOL_VERSION_20141107:I = 0x1335433

.field public static final PROTOCOL_VERSION_20141218:I = 0x13354a2

.field public static final PROTOCOL_VERSION_20160327:I = 0x1339f47

.field public static final RESULT_ARGS_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final RESULT_ARGS_DIALOG_COMPLETE_KEY:Ljava/lang/String; = "didComplete"

.field public static final RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY:Ljava/lang/String; = "completionGesture"

.field public static final RESULT_ARGS_EXPIRES_SECONDS_SINCE_EPOCH:Ljava/lang/String; = "expires_seconds_since_epoch"

.field public static final RESULT_ARGS_PERMISSIONS:Ljava/lang/String; = "permissions"

.field public static final STATUS_ERROR_CODE:Ljava/lang/String; = "com.facebook.platform.status.ERROR_CODE"

.field public static final STATUS_ERROR_DESCRIPTION:Ljava/lang/String; = "com.facebook.platform.status.ERROR_DESCRIPTION"

.field public static final STATUS_ERROR_JSON:Ljava/lang/String; = "com.facebook.platform.status.ERROR_JSON"

.field public static final STATUS_ERROR_SUBCODE:Ljava/lang/String; = "com.facebook.platform.status.ERROR_SUBCODE"

.field public static final STATUS_ERROR_TYPE:Ljava/lang/String; = "com.facebook.platform.status.ERROR_TYPE"

.field private static final TAG:Ljava/lang/String;

.field public static final WEB_DIALOG_ACTION:Ljava/lang/String; = "action"

.field public static final WEB_DIALOG_IS_FALLBACK:Ljava/lang/String; = "is_fallback"

.field public static final WEB_DIALOG_PARAMS:Ljava/lang/String; = "params"

.field public static final WEB_DIALOG_URL:Ljava/lang/String; = "url"

.field private static actionToAppInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static facebookAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static protocolVersionsAsyncUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/NativeProtocol;->TAG:Ljava/lang/String;

    .line 323
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->buildFacebookAppList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    .line 324
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->buildActionToAppInfoMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/NativeProtocol;->actionToAppInfoMap:Ljava/util/Map;

    .line 325
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/internal/NativeProtocol;->protocolVersionsAsyncUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 464
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x1339f47

    .line 466
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const v2, 0x13354a2

    .line 467
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x1335433

    .line 468
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x13353e4

    .line 469
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x13353c9

    .line 470
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x133529d

    .line 471
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x1335124

    .line 472
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x13350ac

    .line 473
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x1332d23

    .line 474
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x1332b3a

    .line 475
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x1332ac6

    .line 476
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x133060d

    .line 477
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 465
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/NativeProtocol;->KNOWN_PROTOCOL_VERSIONS:Ljava/util/List;

    .line 464
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Ljava/util/TreeSet;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->fetchAllAvailableProtocolVersionsForAppInfo(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Ljava/util/TreeSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/List;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->protocolVersionsAsyncUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static buildActionToAppInfoMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 341
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/facebook/internal/NativeProtocol$NativeAppInfo;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v1, "messengerAppInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/internal/NativeProtocol$NativeAppInfo;>;"
    new-instance v2, Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;-><init>(Lcom/facebook/internal/NativeProtocol$1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    const-string v2, "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

    sget-object v3, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v2, "com.facebook.platform.action.request.FEED_DIALOG"

    sget-object v3, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v2, "com.facebook.platform.action.request.LIKE_DIALOG"

    sget-object v3, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v2, "com.facebook.platform.action.request.APPINVITES_DIALOG"

    sget-object v3, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v2, "com.facebook.platform.action.request.MESSAGE_DIALOG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v2, "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    return-object v0
.end method

.method private static buildFacebookAppList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/internal/NativeProtocol$NativeAppInfo;>;"
    new-instance v1, Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;

    invoke-direct {v1, v2}, Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;-><init>(Lcom/facebook/internal/NativeProtocol$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v1, Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;

    invoke-direct {v1, v2}, Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;-><init>(Lcom/facebook/internal/NativeProtocol$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    return-object v0
.end method

.method private static buildPlatformProviderVersionURI(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/net/Uri;
    .locals 2
    .param p0, "appInfo"    # Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .prologue
    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider.PlatformProvider/versions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static computeLatestAvailableVersionFromVersionSpec(Ljava/util/TreeSet;I[I)I
    .locals 6
    .param p1, "latestSdkVersion"    # I
    .param p2, "versionSpec"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;I[I)I"
        }
    .end annotation

    .prologue
    .local p0, "allAvailableFacebookAppVersions":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v5, -0x1

    .line 835
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .line 837
    .local v3, "versionSpecIndex":I
    invoke-virtual {p0}, Ljava/util/TreeSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 838
    .local v1, "fbAppVersionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    .line 840
    .local v2, "latestFacebookAppVersion":I
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 841
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 844
    .local v0, "fbAppVersion":I
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 847
    :goto_0
    if-ltz v3, :cond_1

    aget v4, p2, v3

    if-le v4, v0, :cond_1

    .line 848
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 851
    :cond_1
    if-gez v3, :cond_3

    .line 870
    .end local v0    # "fbAppVersion":I
    :cond_2
    :goto_1
    return v5

    .line 860
    .restart local v0    # "fbAppVersion":I
    :cond_3
    aget v4, p2, v3

    if-ne v4, v0, :cond_0

    .line 862
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_4

    .line 864
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_2
    move v5, v4

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_2
.end method

.method public static createBundleForException(Lcom/facebook/FacebookException;)Landroid/os/Bundle;
    .locals 3
    .param p0, "e"    # Lcom/facebook/FacebookException;

    .prologue
    .line 711
    if-nez p0, :cond_1

    .line 712
    const/4 v0, 0x0

    .line 721
    :cond_0
    :goto_0
    return-object v0

    .line 715
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 716
    .local v0, "errorBundle":Landroid/os/Bundle;
    const-string v1, "error_description"

    invoke-virtual {p0}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    instance-of v1, p0, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v1, :cond_0

    .line 718
    const-string v1, "error_type"

    const-string v2, "UserCanceled"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createPlatformActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 518
    const-string v1, "com.facebook.platform.PLATFORM_ACTIVITY"

    invoke-static {p0, v1, p2}, Lcom/facebook/internal/NativeProtocol;->findActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 519
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 520
    const/4 v0, 0x0

    .line 525
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v0

    .line 523
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {v0, p1, p2, p3, p4}, Lcom/facebook/internal/NativeProtocol;->setupProtocolRequestIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static createPlatformServiceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 596
    sget-object v2, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 597
    .local v0, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.facebook.platform.PLATFORM_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.category.DEFAULT"

    .line 599
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 600
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0, v1, v0}, Lcom/facebook/internal/NativeProtocol;->validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 601
    if-eqz v1, :cond_0

    .line 605
    .end local v0    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createProtocolResultIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/FacebookException;)Landroid/content/Intent;
    .locals 5
    .param p0, "requestIntent"    # Landroid/content/Intent;
    .param p1, "results"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 572
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getCallIdFromIntent(Landroid/content/Intent;)Ljava/util/UUID;

    move-result-object v1

    .line 573
    .local v1, "callId":Ljava/util/UUID;
    if-nez v1, :cond_1

    .line 574
    const/4 v2, 0x0

    .line 592
    :cond_0
    :goto_0
    return-object v2

    .line 577
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 578
    .local v2, "resultIntent":Landroid/content/Intent;
    const-string v3, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getProtocolVersionFromIntent(Landroid/content/Intent;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 580
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 581
    .local v0, "bridgeArguments":Landroid/os/Bundle;
    const-string v3, "action_id"

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    if-eqz p2, :cond_2

    .line 583
    const-string v3, "error"

    .line 584
    invoke-static {p2}, Lcom/facebook/internal/NativeProtocol;->createBundleForException(Lcom/facebook/FacebookException;)Landroid/os/Bundle;

    move-result-object v4

    .line 583
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 586
    :cond_2
    const-string v3, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 588
    if-eqz p1, :cond_0

    .line 589
    const-string v3, "com.facebook.platform.protocol.RESULT_ARGS"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static createProxyAuthIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZLcom/facebook/login/DefaultAudience;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p3, "e2e"    # Ljava/lang/String;
    .param p4, "isRerequest"    # Z
    .param p5, "isForPublish"    # Z
    .param p6, "defaultAudience"    # Lcom/facebook/login/DefaultAudience;
    .param p7, "clientState"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/facebook/login/DefaultAudience;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 398
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v2, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 399
    .local v0, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 400
    invoke-virtual {v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.facebook.katana.ProxyAuth"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "client_id"

    .line 401
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 403
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 404
    const-string v3, "scope"

    const-string v4, ","

    .line 405
    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 404
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    :cond_1
    invoke-static {p3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 408
    const-string v3, "e2e"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    :cond_2
    const-string v3, "state"

    invoke-virtual {v1, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string v3, "response_type"

    const-string v4, "token,signed_request"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const-string v3, "return_scopes"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    if-eqz p5, :cond_3

    .line 419
    const-string v3, "default_audience"

    .line 421
    invoke-virtual {p6}, Lcom/facebook/login/DefaultAudience;->getNativeProtocolAudience()Ljava/lang/String;

    move-result-object v4

    .line 419
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    :cond_3
    const-string v3, "legacy_override"

    const-string v4, "v2.6"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    if-eqz p4, :cond_4

    .line 431
    const-string v3, "auth_type"

    const-string v4, "rerequest"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    :cond_4
    invoke-static {p0, v1, v0}, Lcom/facebook/internal/NativeProtocol;->validateActivityIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 438
    if-eqz v1, :cond_0

    .line 442
    .end local v0    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v1

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createTokenRefreshIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 446
    sget-object v2, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 447
    .local v0, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 448
    invoke-virtual {v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.facebook.katana.platform.TokenRefreshService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 450
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0, v1, v0}, Lcom/facebook/internal/NativeProtocol;->validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 452
    if-eqz v1, :cond_0

    .line 456
    .end local v0    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static fetchAllAvailableProtocolVersionsForAppInfo(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Ljava/util/TreeSet;
    .locals 14
    .param p0, "appInfo"    # Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ")",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 784
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    .line 786
    .local v6, "allAvailableVersions":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 787
    .local v7, "appContext":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 789
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "version"

    aput-object v3, v2, v4

    .line 790
    .local v2, "projection":[Ljava/lang/String;
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->buildPlatformProviderVersionURI(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/net/Uri;

    move-result-object v1

    .line 791
    .local v1, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 796
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 797
    .local v12, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".provider.PlatformProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 798
    .local v9, "contentProviderName":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v12, v9, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 799
    .local v11, "pInfo":Landroid/content/pm/ProviderInfo;
    if-eqz v11, :cond_1

    .line 801
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 812
    :goto_0
    if-eqz v8, :cond_1

    .line 813
    :goto_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 814
    const-string v3, "version"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 815
    .local v13, "version":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 820
    .end local v9    # "contentProviderName":Ljava/lang/String;
    .end local v11    # "pInfo":Landroid/content/pm/ProviderInfo;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "version":I
    :catchall_0
    move-exception v3

    if-eqz v8, :cond_0

    .line 821
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v3

    .line 802
    .restart local v9    # "contentProviderName":Ljava/lang/String;
    .restart local v11    # "pInfo":Landroid/content/pm/ProviderInfo;
    .restart local v12    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v10

    .line 803
    .local v10, "ex":Ljava/lang/RuntimeException;
    :goto_2
    :try_start_3
    sget-object v3, Lcom/facebook/internal/NativeProtocol;->TAG:Ljava/lang/String;

    const-string v4, "Failed to query content resolver."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 809
    const/4 v8, 0x0

    goto :goto_0

    .line 820
    .end local v10    # "ex":Ljava/lang/RuntimeException;
    :cond_1
    if-eqz v8, :cond_2

    .line 821
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 825
    :cond_2
    return-object v6

    .line 802
    :catch_1
    move-exception v10

    goto :goto_2
.end method

.method private static findActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activityAction"    # Ljava/lang/String;
    .param p2, "internalAction"    # Ljava/lang/String;

    .prologue
    .line 484
    sget-object v3, Lcom/facebook/internal/NativeProtocol;->actionToAppInfoMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 485
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/internal/NativeProtocol$NativeAppInfo;>;"
    if-nez v2, :cond_1

    .line 486
    const/4 v1, 0x0

    .line 501
    :cond_0
    :goto_0
    return-object v1

    .line 489
    :cond_1
    const/4 v1, 0x0

    .line 490
    .local v1, "intent":Landroid/content/Intent;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 491
    .local v0, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 492
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 493
    invoke-virtual {v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.category.DEFAULT"

    .line 494
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 495
    invoke-static {p0, v1, v0}, Lcom/facebook/internal/NativeProtocol;->validateActivityIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 496
    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public static getBridgeArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 638
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getProtocolVersionFromIntent(Landroid/content/Intent;)I

    move-result v0

    .line 639
    .local v0, "version":I
    invoke-static {v0}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 640
    const/4 v1, 0x0

    .line 643
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCallIdFromIntent(Landroid/content/Intent;)Ljava/util/UUID;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 613
    if-nez p0, :cond_1

    .line 614
    const/4 v1, 0x0

    .line 634
    :cond_0
    :goto_0
    return-object v1

    .line 616
    :cond_1
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getProtocolVersionFromIntent(Landroid/content/Intent;)I

    move-result v3

    .line 617
    .local v3, "version":I
    const/4 v2, 0x0

    .line 618
    .local v2, "callIdString":Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 619
    const-string v4, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 620
    .local v0, "bridgeArgs":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 621
    const-string v4, "action_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 627
    .end local v0    # "bridgeArgs":Landroid/os/Bundle;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 628
    .local v1, "callId":Ljava/util/UUID;
    if-eqz v2, :cond_0

    .line 630
    :try_start_0
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 624
    .end local v1    # "callId":Ljava/util/UUID;
    :cond_3
    const-string v4, "com.facebook.platform.protocol.CALL_ID"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 631
    .restart local v1    # "callId":Ljava/util/UUID;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getErrorDataFromResultIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 2
    .param p0, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 675
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->isErrorResult(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 676
    const/4 v1, 0x0

    .line 684
    :goto_0
    return-object v1

    .line 679
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getBridgeArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 680
    .local v0, "bridgeArgs":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 681
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    .line 684
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public static getExceptionFromErrorData(Landroid/os/Bundle;)Lcom/facebook/FacebookException;
    .locals 3
    .param p0, "errorData"    # Landroid/os/Bundle;

    .prologue
    .line 688
    if-nez p0, :cond_0

    .line 689
    const/4 v2, 0x0

    .line 707
    :goto_0
    return-object v2

    .line 692
    :cond_0
    const-string v2, "error_type"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 694
    const-string v2, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 697
    :cond_1
    const-string v2, "error_description"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "description":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 699
    const-string v2, "com.facebook.platform.status.ERROR_DESCRIPTION"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 702
    :cond_2
    if-eqz v1, :cond_3

    const-string v2, "UserCanceled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 703
    new-instance v2, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v2, v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 707
    :cond_3
    new-instance v2, Lcom/facebook/FacebookException;

    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLatestAvailableProtocolVersionForAction(Ljava/lang/String;[I)I
    .locals 2
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "versionSpec"    # [I

    .prologue
    .line 733
    sget-object v1, Lcom/facebook/internal/NativeProtocol;->actionToAppInfoMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 734
    .local v0, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/internal/NativeProtocol$NativeAppInfo;>;"
    invoke-static {v0, p1}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersionForAppInfoList(Ljava/util/List;[I)I

    move-result v1

    return v1
.end method

.method private static getLatestAvailableProtocolVersionForAppInfoList(Ljava/util/List;[I)I
    .locals 6
    .param p1, "versionSpec"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    .local p0, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/internal/NativeProtocol$NativeAppInfo;>;"
    const/4 v2, -0x1

    .line 741
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->updateAllAvailableProtocolVersionsAsync()V

    .line 743
    if-nez p0, :cond_0

    move v1, v2

    .line 760
    :goto_0
    return v1

    .line 748
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 751
    .local v0, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    invoke-virtual {v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getAvailableVersions()Ljava/util/TreeSet;

    move-result-object v4

    .line 752
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v5

    .line 750
    invoke-static {v4, v5, p1}, Lcom/facebook/internal/NativeProtocol;->computeLatestAvailableVersionFromVersionSpec(Ljava/util/TreeSet;I[I)I

    move-result v1

    .line 755
    .local v1, "protocolVersion":I
    if-eq v1, v2, :cond_1

    goto :goto_0

    .end local v0    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .end local v1    # "protocolVersion":I
    :cond_2
    move v1, v2

    .line 760
    goto :goto_0
.end method

.method public static getLatestAvailableProtocolVersionForService(I)I
    .locals 3
    .param p0, "minimumVersion"    # I

    .prologue
    .line 726
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersionForAppInfoList(Ljava/util/List;[I)I

    move-result v0

    return v0
.end method

.method public static final getLatestKnownVersion()I
    .locals 2

    .prologue
    .line 460
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->KNOWN_PROTOCOL_VERSIONS:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getMethodArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 647
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getProtocolVersionFromIntent(Landroid/content/Intent;)I

    move-result v0

    .line 648
    .local v0, "version":I
    invoke-static {v0}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 649
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 652
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.facebook.platform.protocol.METHOD_ARGS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public static getProtocolVersionFromIntent(Landroid/content/Intent;)I
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 609
    const-string v0, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSuccessResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 3
    .param p0, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 656
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getProtocolVersionFromIntent(Landroid/content/Intent;)I

    move-result v1

    .line 657
    .local v1, "version":I
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 658
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {v1}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 662
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "extras":Landroid/os/Bundle;
    :cond_1
    const-string v2, "com.facebook.platform.protocol.RESULT_ARGS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public static isErrorResult(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 666
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getBridgeArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 667
    .local v0, "bridgeArgs":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 668
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 670
    :goto_0
    return v1

    :cond_0
    const-string v1, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isVersionCompatibleWithBucketedIntent(I)Z
    .locals 2
    .param p0, "version"    # I

    .prologue
    .line 505
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->KNOWN_PROTOCOL_VERSIONS:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x133529d

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setupProtocolRequestIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "params"    # Landroid/os/Bundle;

    .prologue
    .line 537
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "applicationId":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "applicationName":Ljava/lang/String;
    const-string v4, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    invoke-virtual {p0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    .line 541
    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.facebook.platform.extra.APPLICATION_ID"

    .line 542
    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    invoke-static {p3}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 546
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 547
    .local v2, "bridgeArguments":Landroid/os/Bundle;
    const-string v4, "action_id"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v4, "app_name"

    invoke-static {v2, v4, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v4, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 552
    if-nez p4, :cond_0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 553
    .local v3, "methodArguments":Landroid/os/Bundle;
    :goto_0
    const-string v4, "com.facebook.platform.protocol.METHOD_ARGS"

    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 562
    .end local v2    # "bridgeArguments":Landroid/os/Bundle;
    .end local v3    # "methodArguments":Landroid/os/Bundle;
    :goto_1
    return-void

    .restart local v2    # "bridgeArguments":Landroid/os/Bundle;
    :cond_0
    move-object v3, p4

    .line 552
    goto :goto_0

    .line 556
    .end local v2    # "bridgeArguments":Landroid/os/Bundle;
    :cond_1
    const-string v4, "com.facebook.platform.protocol.CALL_ID"

    invoke-virtual {p0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 558
    const-string v4, "com.facebook.platform.extra.APPLICATION_NAME"

    invoke-virtual {p0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    :cond_2
    invoke-virtual {p0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static updateAllAvailableProtocolVersionsAsync()V
    .locals 3

    .prologue
    .line 764
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->protocolVersionsAsyncUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 780
    :goto_0
    return-void

    .line 768
    :cond_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/internal/NativeProtocol$1;

    invoke-direct {v1}, Lcom/facebook/internal/NativeProtocol$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static validateActivityIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "appInfo"    # Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .prologue
    const/4 v1, 0x0

    .line 356
    if-nez p1, :cond_1

    move-object p1, v1

    .line 369
    .end local p1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object p1

    .line 360
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 361
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_2

    move-object p1, v1

    .line 362
    goto :goto_0

    .line 365
    :cond_2
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0, v2}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->validateSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object p1, v1

    .line 366
    goto :goto_0
.end method

.method static validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "appInfo"    # Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .prologue
    const/4 v1, 0x0

    .line 373
    if-nez p1, :cond_1

    move-object p1, v1

    .line 386
    .end local p1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object p1

    .line 377
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 378
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_2

    move-object p1, v1

    .line 379
    goto :goto_0

    .line 382
    :cond_2
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0, v2}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->validateSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object p1, v1

    .line 383
    goto :goto_0
.end method
