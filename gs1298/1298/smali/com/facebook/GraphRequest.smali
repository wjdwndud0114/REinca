.class public Lcom/facebook/GraphRequest;
.super Ljava/lang/Object;
.source "GraphRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;,
        Lcom/facebook/GraphRequest$GraphJSONObjectCallback;,
        Lcom/facebook/GraphRequest$GraphJSONArrayCallback;,
        Lcom/facebook/GraphRequest$OnProgressCallback;,
        Lcom/facebook/GraphRequest$Callback;,
        Lcom/facebook/GraphRequest$Serializer;,
        Lcom/facebook/GraphRequest$KeyValueSerializer;,
        Lcom/facebook/GraphRequest$Attachment;
    }
.end annotation


# static fields
.field private static final ACCEPT_LANGUAGE_HEADER:Ljava/lang/String; = "Accept-Language"

.field public static final ACCESS_TOKEN_PARAM:Ljava/lang/String; = "access_token"

.field private static final ATTACHED_FILES_PARAM:Ljava/lang/String; = "attached_files"

.field private static final ATTACHMENT_FILENAME_PREFIX:Ljava/lang/String; = "file"

.field private static final BATCH_APP_ID_PARAM:Ljava/lang/String; = "batch_app_id"

.field private static final BATCH_BODY_PARAM:Ljava/lang/String; = "body"

.field private static final BATCH_ENTRY_DEPENDS_ON_PARAM:Ljava/lang/String; = "depends_on"

.field private static final BATCH_ENTRY_NAME_PARAM:Ljava/lang/String; = "name"

.field private static final BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM:Ljava/lang/String; = "omit_response_on_success"

.field private static final BATCH_METHOD_PARAM:Ljava/lang/String; = "method"

.field private static final BATCH_PARAM:Ljava/lang/String; = "batch"

.field private static final BATCH_RELATIVE_URL_PARAM:Ljava/lang/String; = "relative_url"

.field private static final CAPTION_PARAM:Ljava/lang/String; = "caption"

.field private static final CONTENT_ENCODING_HEADER:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field private static final DEBUG_KEY:Ljava/lang/String; = "__debug__"

.field private static final DEBUG_MESSAGES_KEY:Ljava/lang/String; = "messages"

.field private static final DEBUG_MESSAGE_KEY:Ljava/lang/String; = "message"

.field private static final DEBUG_MESSAGE_LINK_KEY:Ljava/lang/String; = "link"

.field private static final DEBUG_MESSAGE_TYPE_KEY:Ljava/lang/String; = "type"

.field private static final DEBUG_PARAM:Ljava/lang/String; = "debug"

.field private static final DEBUG_SEVERITY_INFO:Ljava/lang/String; = "info"

.field private static final DEBUG_SEVERITY_WARNING:Ljava/lang/String; = "warning"

.field public static final FIELDS_PARAM:Ljava/lang/String; = "fields"

.field private static final FORMAT_JSON:Ljava/lang/String; = "json"

.field private static final FORMAT_PARAM:Ljava/lang/String; = "format"

.field private static final GRAPH_PATH_FORMAT:Ljava/lang/String; = "%s/%s"

.field private static final ISO_8601_FORMAT_STRING:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZ"

.field public static final MAXIMUM_BATCH_SIZE:I = 0x32

.field private static final ME:Ljava/lang/String; = "me"

.field private static final MIME_BOUNDARY:Ljava/lang/String; = "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

.field private static final MY_FRIENDS:Ljava/lang/String; = "me/friends"

.field private static final MY_PHOTOS:Ljava/lang/String; = "me/photos"

.field private static final PICTURE_PARAM:Ljava/lang/String; = "picture"

.field private static final SDK_ANDROID:Ljava/lang/String; = "android"

.field private static final SDK_PARAM:Ljava/lang/String; = "sdk"

.field private static final SEARCH:Ljava/lang/String; = "search"

.field public static final TAG:Ljava/lang/String;

.field private static final USER_AGENT_BASE:Ljava/lang/String; = "FBAndroidSDK"

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"

.field private static final VIDEOS_SUFFIX:Ljava/lang/String; = "/videos"

.field private static defaultBatchApplicationId:Ljava/lang/String;

.field private static volatile userAgent:Ljava/lang/String;

.field private static versionPattern:Ljava/util/regex/Pattern;


# instance fields
.field private accessToken:Lcom/facebook/AccessToken;

.field private batchEntryDependsOn:Ljava/lang/String;

.field private batchEntryName:Ljava/lang/String;

.field private batchEntryOmitResultOnSuccess:Z

.field private callback:Lcom/facebook/GraphRequest$Callback;

.field private graphObject:Lorg/json/JSONObject;

.field private graphPath:Ljava/lang/String;

.field private httpMethod:Lcom/facebook/HttpMethod;

.field private overriddenURL:Ljava/lang/String;

.field private parameters:Landroid/os/Bundle;

.field private skipClientToken:Z

.field private tag:Ljava/lang/Object;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/facebook/GraphRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->TAG:Ljava/lang/String;

    .line 133
    const-string v0, "^/?v\\d+\\.\\d+/(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->versionPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 153
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;)V
    .locals 6
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "graphPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 166
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V
    .locals 6
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "graphPath"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "httpMethod"    # Lcom/facebook/HttpMethod;

    .prologue
    .line 190
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V
    .locals 7
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "graphPath"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "httpMethod"    # Lcom/facebook/HttpMethod;
    .param p5, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .prologue
    .line 217
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;)V
    .locals 1
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "graphPath"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "httpMethod"    # Lcom/facebook/HttpMethod;
    .param p5, "callback"    # Lcom/facebook/GraphRequest$Callback;
    .param p6, "version"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->batchEntryOmitResultOnSuccess:Z

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->skipClientToken:Z

    .line 246
    iput-object p1, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    .line 247
    iput-object p2, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    .line 248
    iput-object p6, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    .line 250
    invoke-virtual {p0, p5}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    .line 251
    invoke-virtual {p0, p4}, Lcom/facebook/GraphRequest;->setHttpMethod(Lcom/facebook/HttpMethod;)V

    .line 253
    if-eqz p3, :cond_1

    .line 254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    .line 259
    :goto_0
    iget-object v0, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 260
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getAPIVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    .line 262
    :cond_0
    return-void

    .line 256
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    goto :goto_0
.end method

.method constructor <init>(Lcom/facebook/AccessToken;Ljava/net/URL;)V
    .locals 1
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "overriddenURL"    # Ljava/net/URL;

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->batchEntryOmitResultOnSuccess:Z

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->skipClientToken:Z

    .line 265
    iput-object p1, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    .line 266
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    .line 268
    sget-object v0, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/GraphRequest;->setHttpMethod(Lcom/facebook/HttpMethod;)V

    .line 270
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    .line 271
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 76
    invoke-static {p0}, Lcom/facebook/GraphRequest;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 76
    invoke-static {p0}, Lcom/facebook/GraphRequest;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addCommonParameters()V
    .locals 7

    .prologue
    .line 1417
    iget-object v4, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    if-eqz v4, :cond_2

    .line 1418
    iget-object v4, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v5, "access_token"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1419
    iget-object v4, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 1420
    .local v3, "token":Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/internal/Logger;->registerAccessToken(Ljava/lang/String;)V

    .line 1421
    iget-object v4, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v5, "access_token"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    .end local v3    # "token":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v5, "sdk"

    const-string v6, "android"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    iget-object v4, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v5, "format"

    const-string v6, "json"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    sget-object v4, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    invoke-static {v4}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1438
    iget-object v4, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v5, "debug"

    const-string v6, "info"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    :cond_1
    :goto_1
    return-void

    .line 1423
    :cond_2
    iget-boolean v4, p0, Lcom/facebook/GraphRequest;->skipClientToken:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v5, "access_token"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1424
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 1425
    .local v1, "appID":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getClientToken()Ljava/lang/String;

    move-result-object v2

    .line 1426
    .local v2, "clientToken":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1427
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1428
    .local v0, "accessToken":Ljava/lang/String;
    iget-object v4, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v5, "access_token"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1430
    .end local v0    # "accessToken":Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/facebook/GraphRequest;->TAG:Ljava/lang/String;

    const-string v5, "Warning: Request without access token missing application ID or client token."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1439
    .end local v1    # "appID":Ljava/lang/String;
    .end local v2    # "clientToken":Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    invoke-static {v4}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1440
    iget-object v4, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    const-string v5, "debug"

    const-string v6, "warning"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 1445
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v4, p1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1447
    .local v2, "uriBuilder":Landroid/net/Uri$Builder;
    iget-object v4, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1448
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1449
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1451
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 1452
    const-string v3, ""

    .line 1455
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    invoke-static {v3}, Lcom/facebook/GraphRequest;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1456
    invoke-static {v3}, Lcom/facebook/GraphRequest;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1468
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 1458
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    sget-object v6, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    if-ne v5, v6, :cond_0

    .line 1459
    new-instance v4, Ljava/lang/IllegalArgumentException;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Unsupported parameter type for GET request: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 1463
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1460
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1471
    .end local v0    # "key":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1406
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1408
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/facebook/GraphRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    const-string v1, "Accept-Language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1412
    return-object v0
.end method

.method public static createOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;)Lcom/facebook/GraphRequest;
    .locals 12
    .param p0, "openGraphObject"    # Lcom/facebook/share/model/ShareOpenGraphObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    .prologue
    .line 1840
    const-string v6, "type"

    invoke-virtual {p0, v6}, Lcom/facebook/share/model/ShareOpenGraphObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1841
    .local v5, "type":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 1842
    const-string v6, "og:type"

    invoke-virtual {p0, v6}, Lcom/facebook/share/model/ShareOpenGraphObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1845
    :cond_0
    if-nez v5, :cond_1

    .line 1846
    new-instance v6, Lcom/facebook/FacebookException;

    const-string v7, "Open graph object type cannot be null"

    invoke-direct {v6, v7}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1849
    :cond_1
    :try_start_0
    new-instance v6, Lcom/facebook/GraphRequest$7;

    invoke-direct {v6}, Lcom/facebook/GraphRequest$7;-><init>()V

    invoke-static {p0, v6}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONValue(Ljava/lang/Object;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 1865
    .local v4, "stagedObject":Lorg/json/JSONObject;
    move-object v2, v5

    .line 1866
    .local v2, "ogType":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1867
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v6, "object"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v7, "%s/%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "me"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "objects/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1873
    .local v1, "graphPath":Ljava/lang/String;
    new-instance v6, Lcom/facebook/GraphRequest;

    .line 1874
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v7

    sget-object v8, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-direct {v6, v7, v1, v3, v8}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 1879
    .end local v1    # "graphPath":Ljava/lang/String;
    .end local v2    # "ogType":Ljava/lang/String;
    .end local v3    # "parameters":Landroid/os/Bundle;
    .end local v4    # "stagedObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1880
    .local v0, "e":Lorg/json/JSONException;
    new-instance v6, Lcom/facebook/FacebookException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static executeAndWait(Lcom/facebook/GraphRequest;)Lcom/facebook/GraphResponse;
    .locals 4
    .param p0, "request"    # Lcom/facebook/GraphRequest;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1089
    new-array v1, v3, [Lcom/facebook/GraphRequest;

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/facebook/GraphRequest;->executeBatchAndWait([Lcom/facebook/GraphRequest;)Ljava/util/List;

    move-result-object v0

    .line 1091
    .local v0, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphResponse;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 1092
    :cond_0
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "invalid state: expected a single response"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1095
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphResponse;

    return-object v1
.end method

.method public static executeBatchAndWait(Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    .locals 6
    .param p0, "requests"    # Lcom/facebook/GraphRequestBatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1149
    const-string v3, "requests"

    invoke-static {p0, v3}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1151
    const/4 v0, 0x0

    .line 1154
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-static {p0}, Lcom/facebook/GraphRequest;->toHttpConnection(Lcom/facebook/GraphRequestBatch;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1164
    :try_start_1
    invoke-static {v0, p0}, Lcom/facebook/GraphRequest;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1168
    .local v2, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphResponse;>;"
    invoke-static {v0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    :goto_0
    return-object v2

    .line 1155
    .end local v2    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphResponse;>;"
    :catch_0
    move-exception v1

    .line 1157
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getRequests()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/facebook/FacebookException;

    invoke-direct {v5, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    .line 1156
    invoke-static {v3, v4, v5}, Lcom/facebook/GraphResponse;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    move-result-object v2

    .line 1160
    .restart local v2    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphResponse;>;"
    invoke-static {p0, v2}, Lcom/facebook/GraphRequest;->runCallbacks(Lcom/facebook/GraphRequestBatch;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1168
    invoke-static {v0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    goto :goto_0

    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphResponse;>;"
    :catchall_0
    move-exception v3

    invoke-static {v0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    throw v3
.end method

.method public static executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1130
    .local p0, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/GraphRequest;>;"
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/GraphRequest;->executeBatchAndWait(Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs executeBatchAndWait([Lcom/facebook/GraphRequest;)Ljava/util/List;
    .locals 1
    .param p0, "requests"    # [Lcom/facebook/GraphRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/GraphRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1112
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1114
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/GraphRequest;->executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static executeBatchAsync(Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;
    .locals 3
    .param p0, "requests"    # Lcom/facebook/GraphRequestBatch;

    .prologue
    .line 1222
    const-string v1, "requests"

    invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1224
    new-instance v0, Lcom/facebook/GraphRequestAsyncTask;

    invoke-direct {v0, p0}, Lcom/facebook/GraphRequestAsyncTask;-><init>(Lcom/facebook/GraphRequestBatch;)V

    .line 1225
    .local v0, "asyncTask":Lcom/facebook/GraphRequestAsyncTask;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/GraphRequestAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1226
    return-object v0
.end method

.method public static executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/GraphRequestAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Lcom/facebook/GraphRequestAsyncTask;"
        }
    .end annotation

    .prologue
    .line 1204
    .local p0, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/GraphRequest;>;"
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/GraphRequest;->executeBatchAsync(Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static varargs executeBatchAsync([Lcom/facebook/GraphRequest;)Lcom/facebook/GraphRequestAsyncTask;
    .locals 1
    .param p0, "requests"    # [Lcom/facebook/GraphRequest;

    .prologue
    .line 1185
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1187
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/GraphRequest;->executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    .locals 8
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "requests"    # Lcom/facebook/GraphRequestBatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1266
    invoke-static {p0, p1}, Lcom/facebook/GraphResponse;->fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v1

    .line 1268
    .local v1, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphResponse;>;"
    invoke-static {p0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 1270
    invoke-virtual {p1}, Lcom/facebook/GraphRequestBatch;->size()I

    move-result v0

    .line 1271
    .local v0, "numRequests":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1272
    new-instance v2, Lcom/facebook/FacebookException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Received %d responses while expecting %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1275
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 1276
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1273
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1279
    :cond_0
    invoke-static {p1, v1}, Lcom/facebook/GraphRequest;->runCallbacks(Lcom/facebook/GraphRequestBatch;Ljava/util/List;)V

    .line 1282
    invoke-static {}, Lcom/facebook/AccessTokenManager;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/AccessTokenManager;->extendAccessTokenIfNeeded()V

    .line 1284
    return-object v1
.end method

.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1246
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/GraphRequest;>;"
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0, p1}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Lcom/facebook/GraphRequest;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;
    .locals 3
    .param p0, "callbackHandler"    # Landroid/os/Handler;
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "requests"    # Lcom/facebook/GraphRequestBatch;

    .prologue
    .line 1330
    const-string v1, "connection"

    invoke-static {p1, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1332
    new-instance v0, Lcom/facebook/GraphRequestAsyncTask;

    invoke-direct {v0, p1, p2}, Lcom/facebook/GraphRequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)V

    .line 1333
    .local v0, "asyncTask":Lcom/facebook/GraphRequestAsyncTask;
    invoke-virtual {p2, p0}, Lcom/facebook/GraphRequestBatch;->setCallbackHandler(Landroid/os/Handler;)V

    .line 1334
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/GraphRequestAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1335
    return-object v0
.end method

.method public static executeConnectionAsync(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;
    .locals 1
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "requests"    # Lcom/facebook/GraphRequestBatch;

    .prologue
    .line 1305
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/facebook/GraphRequest;->executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method private static getBatchAppId(Lcom/facebook/GraphRequestBatch;)Ljava/lang/String;
    .locals 5
    .param p0, "batch"    # Lcom/facebook/GraphRequestBatch;

    .prologue
    .line 2019
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getBatchApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2020
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getBatchApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 2035
    :goto_0
    return-object v1

    .line 2023
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/GraphRequest;

    .line 2024
    .local v2, "request":Lcom/facebook/GraphRequest;
    iget-object v0, v2, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    .line 2025
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    if-eqz v0, :cond_1

    .line 2026
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 2027
    .local v1, "applicationId":Ljava/lang/String;
    if-eqz v1, :cond_1

    goto :goto_0

    .line 2032
    .end local v0    # "accessToken":Lcom/facebook/AccessToken;
    .end local v1    # "applicationId":Ljava/lang/String;
    .end local v2    # "request":Lcom/facebook/GraphRequest;
    :cond_2
    sget-object v3, Lcom/facebook/GraphRequest;->defaultBatchApplicationId:Ljava/lang/String;

    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2033
    sget-object v1, Lcom/facebook/GraphRequest;->defaultBatchApplicationId:Ljava/lang/String;

    goto :goto_0

    .line 2035
    :cond_3
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final getDefaultBatchApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 872
    sget-object v0, Lcom/facebook/GraphRequest;->defaultBatchApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method private static getDefaultPhotoPathIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "graphPath"    # Ljava/lang/String;

    .prologue
    .line 1401
    if-nez p0, :cond_0

    const-string p0, "me/photos"

    .end local p0    # "graphPath":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private getGraphPathWithVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1504
    sget-object v1, Lcom/facebook/GraphRequest;->versionPattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1505
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1506
    iget-object v1, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    .line 1508
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getMimeContentType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1995
    const-string v0, "multipart/form-data; boundary=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUserAgent()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2001
    sget-object v1, Lcom/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2002
    const-string v1, "%s.%s"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "FBAndroidSDK"

    aput-object v3, v2, v5

    const-string v3, "4.13.2"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    .line 2005
    invoke-static {}, Lcom/facebook/internal/InternalSettings;->getCustomUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 2006
    .local v0, "customUserAgent":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2007
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "%s/%s"

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v4, Lcom/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    .line 2015
    :cond_0
    sget-object v1, Lcom/facebook/GraphRequest;->userAgent:Ljava/lang/String;

    return-object v1
.end method

.method private static hasOnProgressCallbacks(Lcom/facebook/GraphRequestBatch;)Z
    .locals 5
    .param p0, "requests"    # Lcom/facebook/GraphRequestBatch;

    .prologue
    const/4 v2, 0x1

    .line 1596
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getCallbacks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequestBatch$Callback;

    .line 1597
    .local v0, "callback":Lcom/facebook/GraphRequestBatch$Callback;
    instance-of v4, v0, Lcom/facebook/GraphRequestBatch$OnProgressCallback;

    if-eqz v4, :cond_0

    .line 1608
    .end local v0    # "callback":Lcom/facebook/GraphRequestBatch$Callback;
    :goto_0
    return v2

    .line 1602
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphRequest;

    .line 1603
    .local v1, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->getCallback()Lcom/facebook/GraphRequest$Callback;

    move-result-object v4

    instance-of v4, v4, Lcom/facebook/GraphRequest$OnProgressCallback;

    if-eqz v4, :cond_2

    goto :goto_0

    .line 1608
    .end local v1    # "request":Lcom/facebook/GraphRequest;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isGzipCompressible(Lcom/facebook/GraphRequestBatch;)Z
    .locals 6
    .param p0, "requests"    # Lcom/facebook/GraphRequestBatch;

    .prologue
    .line 1623
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphRequest;

    .line 1624
    .local v1, "request":Lcom/facebook/GraphRequest;
    iget-object v4, v1, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1625
    .local v0, "key":Ljava/lang/String;
    iget-object v5, v1, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1626
    .local v2, "value":Ljava/lang/Object;
    invoke-static {v2}, Lcom/facebook/GraphRequest;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1627
    const/4 v3, 0x0

    .line 1631
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "request":Lcom/facebook/GraphRequest;
    .end local v2    # "value":Ljava/lang/Object;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static isMeRequest(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1786
    sget-object v2, Lcom/facebook/GraphRequest;->versionPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1787
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1789
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 1791
    :cond_0
    const-string v2, "me/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "/me/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1794
    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSupportedAttachmentType(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 2039
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    instance-of v0, p0, [B

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/net/Uri;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedParameterType(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 2047
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newCustomAudienceThirdPartyIdRequest(Lcom/facebook/AccessToken;Landroid/content/Context;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 1
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .prologue
    .line 669
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/facebook/GraphRequest;->newCustomAudienceThirdPartyIdRequest(Lcom/facebook/AccessToken;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    return-object v0
.end method

.method public static newCustomAudienceThirdPartyIdRequest(Lcom/facebook/AccessToken;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 8
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .prologue
    .line 589
    if-nez p2, :cond_0

    if-eqz p0, :cond_0

    .line 590
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object p2

    .line 593
    :cond_0
    if-nez p2, :cond_1

    .line 594
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 597
    :cond_1
    if-nez p2, :cond_2

    .line 598
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Facebook App ID cannot be determined"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/custom_audience_third_party_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 603
    .local v2, "endpoint":Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v6

    .line 604
    .local v6, "attributionIdentifiers":Lcom/facebook/internal/AttributionIdentifiers;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 606
    .local v3, "parameters":Landroid/os/Bundle;
    if-nez p0, :cond_4

    .line 607
    if-nez v6, :cond_3

    .line 608
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "There is no access token and attribution identifiers could not be retrieved"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_3
    invoke-virtual {v6}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 616
    invoke-virtual {v6}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v7

    .line 618
    .local v7, "udid":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 619
    const-string v0, "udid"

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    .end local v7    # "udid":Ljava/lang/String;
    :cond_4
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v6, :cond_6

    .line 626
    invoke-virtual {v6}, Lcom/facebook/internal/AttributionIdentifiers;->isTrackingLimited()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 627
    :cond_5
    const-string v0, "limit_event_usage"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_6
    new-instance v0, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0

    .line 617
    :cond_7
    invoke-virtual {v6}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public static newDeleteObjectRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 6
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .prologue
    .line 286
    new-instance v0, Lcom/facebook/GraphRequest;

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0
.end method

.method public static newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 6
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .prologue
    const/4 v3, 0x0

    .line 374
    new-instance v0, Lcom/facebook/GraphRequest;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0
.end method

.method public static newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;
    .locals 6
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "callback"    # Lcom/facebook/GraphRequest$GraphJSONObjectCallback;

    .prologue
    const/4 v3, 0x0

    .line 300
    new-instance v5, Lcom/facebook/GraphRequest$1;

    invoke-direct {v5, p1}, Lcom/facebook/GraphRequest$1;-><init>(Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)V

    .line 308
    .local v5, "wrapper":Lcom/facebook/GraphRequest$Callback;
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string v2, "me"

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0
.end method

.method public static newMyFriendsRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)Lcom/facebook/GraphRequest;
    .locals 6
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "callback"    # Lcom/facebook/GraphRequest$GraphJSONArrayCallback;

    .prologue
    const/4 v3, 0x0

    .line 348
    new-instance v5, Lcom/facebook/GraphRequest$2;

    invoke-direct {v5, p1}, Lcom/facebook/GraphRequest$2;-><init>(Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)V

    .line 358
    .local v5, "wrapper":Lcom/facebook/GraphRequest$Callback;
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string v2, "me/friends"

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0
.end method

.method public static newPlacesSearchRequest(Lcom/facebook/AccessToken;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)Lcom/facebook/GraphRequest;
    .locals 10
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "radiusInMeters"    # I
    .param p3, "resultsLimit"    # I
    .param p4, "searchText"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/facebook/GraphRequest$GraphJSONArrayCallback;

    .prologue
    .line 400
    if-nez p1, :cond_0

    invoke-static {p4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Either location or searchText must be specified."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x5

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 405
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v0, "type"

    const-string v1, "place"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v0, "limit"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 407
    if-eqz p1, :cond_1

    .line 408
    const-string v0, "center"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%f,%f"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 412
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    .line 413
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v4, v6

    .line 409
    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v0, "distance"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    :cond_1
    invoke-static {p4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 417
    const-string v0, "q"

    invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_2
    new-instance v5, Lcom/facebook/GraphRequest$3;

    invoke-direct {v5, p5}, Lcom/facebook/GraphRequest$3;-><init>(Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)V

    .line 431
    .local v5, "wrapper":Lcom/facebook/GraphRequest$Callback;
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string v2, "search"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0
.end method

.method public static newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 6
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "graphObject"    # Lorg/json/JSONObject;
    .param p3, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .prologue
    .line 327
    new-instance v0, Lcom/facebook/GraphRequest;

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 333
    .local v0, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v0, p2}, Lcom/facebook/GraphRequest;->setGraphObject(Lorg/json/JSONObject;)V

    .line 334
    return-object v0
.end method

.method public static newUploadPhotoRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 6
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "image"    # Landroid/graphics/Bitmap;
    .param p3, "caption"    # Ljava/lang/String;
    .param p4, "params"    # Landroid/os/Bundle;
    .param p5, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .prologue
    .line 454
    invoke-static {p1}, Lcom/facebook/GraphRequest;->getDefaultPhotoPathIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 455
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 456
    .local v3, "parameters":Landroid/os/Bundle;
    if-eqz p4, :cond_0

    .line 457
    invoke-virtual {v3, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 459
    :cond_0
    const-string v0, "picture"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 460
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    const-string v0, "caption"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_1
    new-instance v0, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0
.end method

.method public static newUploadPhotoRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 6
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "caption"    # Ljava/lang/String;
    .param p4, "params"    # Landroid/os/Bundle;
    .param p5, "callback"    # Lcom/facebook/GraphRequest$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 526
    invoke-static {p1}, Lcom/facebook/GraphRequest;->getDefaultPhotoPathIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 527
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isFileUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    new-instance v2, Ljava/io/File;

    .line 531
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 528
    invoke-static/range {v0 .. v5}, Lcom/facebook/GraphRequest;->newUploadPhotoRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 545
    :goto_0
    return-object v0

    .line 535
    :cond_0
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isContentUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 536
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "The photo Uri must be either a file:// or content:// Uri"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 540
    .local v3, "parameters":Landroid/os/Bundle;
    if-eqz p4, :cond_2

    .line 541
    invoke-virtual {v3, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 543
    :cond_2
    const-string v0, "picture"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 545
    new-instance v0, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    goto :goto_0
.end method

.method public static newUploadPhotoRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 7
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "caption"    # Ljava/lang/String;
    .param p4, "params"    # Landroid/os/Bundle;
    .param p5, "callback"    # Lcom/facebook/GraphRequest$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 489
    invoke-static {p1}, Lcom/facebook/GraphRequest;->getDefaultPhotoPathIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 490
    const/high16 v0, 0x10000000

    .line 491
    invoke-static {p2, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 492
    .local v6, "descriptor":Landroid/os/ParcelFileDescriptor;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 493
    .local v3, "parameters":Landroid/os/Bundle;
    if-eqz p4, :cond_0

    .line 494
    invoke-virtual {v3, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 496
    :cond_0
    const-string v0, "picture"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 497
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 498
    const-string v0, "caption"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_1
    new-instance v0, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0
.end method

.method private static parameterToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 2052
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2053
    check-cast p0, Ljava/lang/String;

    .line 2059
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "iso8601DateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object p0

    .line 2054
    .end local v0    # "iso8601DateFormat":Ljava/text/SimpleDateFormat;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, p0, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 2055
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2056
    :cond_2
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_3

    .line 2057
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2059
    .restart local v0    # "iso8601DateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2061
    .end local v0    # "iso8601DateFormat":Ljava/text/SimpleDateFormat;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported parameter type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static processGraphObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$KeyValueSerializer;)V
    .locals 10
    .param p0, "graphObject"    # Lorg/json/JSONObject;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "serializer"    # Lcom/facebook/GraphRequest$KeyValueSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1808
    const/4 v1, 0x0

    .line 1809
    .local v1, "isOGAction":Z
    invoke-static {p1}, Lcom/facebook/GraphRequest;->isMeRequest(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1810
    const-string v9, ":"

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1811
    .local v0, "colonLocation":I
    const-string v9, "?"

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1812
    .local v5, "questionMarkLocation":I
    const/4 v9, 0x3

    if-le v0, v9, :cond_2

    const/4 v9, -0x1

    if-eq v5, v9, :cond_0

    if-ge v0, v5, :cond_2

    :cond_0
    move v1, v7

    .line 1816
    .end local v0    # "colonLocation":I
    .end local v5    # "questionMarkLocation":I
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1817
    .local v3, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1818
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1819
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1820
    .local v6, "value":Ljava/lang/Object;
    if-eqz v1, :cond_3

    const-string v9, "image"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v4, v7

    .line 1821
    .local v4, "passByValue":Z
    :goto_2
    invoke-static {v2, v6, p2, v4}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    goto :goto_1

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "passByValue":Z
    .end local v6    # "value":Ljava/lang/Object;
    .restart local v0    # "colonLocation":I
    .restart local v5    # "questionMarkLocation":I
    :cond_2
    move v1, v8

    .line 1812
    goto :goto_0

    .end local v0    # "colonLocation":I
    .end local v5    # "questionMarkLocation":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_3
    move v4, v8

    .line 1820
    goto :goto_2

    .line 1823
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method private static processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V
    .locals 18
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "serializer"    # Lcom/facebook/GraphRequest$KeyValueSerializer;
    .param p3, "passByValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1890
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 1892
    .local v12, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v13, Lorg/json/JSONObject;

    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v7, p1

    .line 1893
    check-cast v7, Lorg/json/JSONObject;

    .line 1894
    .local v7, "jsonObject":Lorg/json/JSONObject;
    if-eqz p3, :cond_0

    .line 1897
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 1898
    .local v8, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1899
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1900
    .local v10, "propertyName":Ljava/lang/String;
    const-string v13, "%s[%s]"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    const/4 v15, 0x1

    aput-object v10, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1903
    .local v11, "subKey":Ljava/lang/String;
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 1901
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v11, v13, v0, v1}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    goto :goto_0

    .line 1910
    .end local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10    # "propertyName":Ljava/lang/String;
    .end local v11    # "subKey":Ljava/lang/String;
    :cond_0
    const-string v13, "id"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1911
    const-string v13, "id"

    .line 1913
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1911
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v13, v1, v2}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    .line 1950
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-void

    .line 1916
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    const-string v13, "url"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1917
    const-string v13, "url"

    .line 1919
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1917
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v13, v1, v2}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    goto :goto_1

    .line 1922
    :cond_3
    const-string v13, "fbsdk:create_object"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1923
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v13, v1, v2}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    goto :goto_1

    .line 1926
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    const-class v13, Lorg/json/JSONArray;

    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v6, p1

    .line 1927
    check-cast v6, Lorg/json/JSONArray;

    .line 1928
    .local v6, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 1929
    .local v9, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v9, :cond_1

    .line 1930
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v14, "%s[%d]"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p0, v15, v16

    const/16 v16, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1931
    .restart local v11    # "subKey":Ljava/lang/String;
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v11, v13, v0, v1}, Lcom/facebook/GraphRequest;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    .line 1929
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1933
    .end local v4    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v9    # "length":I
    .end local v11    # "subKey":Ljava/lang/String;
    :cond_5
    const-class v13, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-nez v13, :cond_6

    const-class v13, Ljava/lang/Number;

    .line 1934
    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-nez v13, :cond_6

    const-class v13, Ljava/lang/Boolean;

    .line 1935
    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1936
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v13}, Lcom/facebook/GraphRequest$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1937
    :cond_7
    const-class v13, Ljava/util/Date;

    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v3, p1

    .line 1938
    check-cast v3, Ljava/util/Date;

    .line 1945
    .local v3, "date":Ljava/util/Date;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v13, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1948
    .local v5, "iso8601DateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v13}, Lcom/facebook/GraphRequest$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static processRequest(Lcom/facebook/GraphRequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    .locals 8
    .param p0, "requests"    # Lcom/facebook/GraphRequestBatch;
    .param p1, "logger"    # Lcom/facebook/internal/Logger;
    .param p2, "numRequests"    # I
    .param p3, "url"    # Ljava/net/URL;
    .param p4, "outputStream"    # Ljava/io/OutputStream;
    .param p5, "shouldUseGzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1738
    new-instance v4, Lcom/facebook/GraphRequest$Serializer;

    invoke-direct {v4, p4, p1, p5}, Lcom/facebook/GraphRequest$Serializer;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/Logger;Z)V

    .line 1740
    .local v4, "serializer":Lcom/facebook/GraphRequest$Serializer;
    const/4 v6, 0x1

    if-ne p2, v6, :cond_5

    .line 1741
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/facebook/GraphRequestBatch;->get(I)Lcom/facebook/GraphRequest;

    move-result-object v3

    .line 1743
    .local v3, "request":Lcom/facebook/GraphRequest;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1744
    .local v0, "attachments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/GraphRequest$Attachment;>;"
    iget-object v6, v3, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1745
    .local v2, "key":Ljava/lang/String;
    iget-object v7, v3, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1746
    .local v5, "value":Ljava/lang/Object;
    invoke-static {v5}, Lcom/facebook/GraphRequest;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1747
    new-instance v7, Lcom/facebook/GraphRequest$Attachment;

    invoke-direct {v7, v3, v5}, Lcom/facebook/GraphRequest$Attachment;-><init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1751
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    .line 1752
    const-string v6, "  Parameters:\n"

    invoke-virtual {p1, v6}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1754
    :cond_2
    iget-object v6, v3, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-static {v6, v4, v3}, Lcom/facebook/GraphRequest;->serializeParameters(Landroid/os/Bundle;Lcom/facebook/GraphRequest$Serializer;Lcom/facebook/GraphRequest;)V

    .line 1756
    if-eqz p1, :cond_3

    .line 1757
    const-string v6, "  Attachments:\n"

    invoke-virtual {p1, v6}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1759
    :cond_3
    invoke-static {v0, v4}, Lcom/facebook/GraphRequest;->serializeAttachments(Ljava/util/Map;Lcom/facebook/GraphRequest$Serializer;)V

    .line 1761
    iget-object v6, v3, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    if-eqz v6, :cond_4

    .line 1762
    iget-object v6, v3, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    invoke-virtual {p3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/facebook/GraphRequest;->processGraphObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$KeyValueSerializer;)V

    .line 1783
    .end local v3    # "request":Lcom/facebook/GraphRequest;
    :cond_4
    :goto_1
    return-void

    .line 1765
    .end local v0    # "attachments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/GraphRequest$Attachment;>;"
    :cond_5
    invoke-static {p0}, Lcom/facebook/GraphRequest;->getBatchAppId(Lcom/facebook/GraphRequestBatch;)Ljava/lang/String;

    move-result-object v1

    .line 1766
    .local v1, "batchAppID":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1767
    new-instance v6, Lcom/facebook/FacebookException;

    const-string v7, "App ID was not specified at the request or Settings."

    invoke-direct {v6, v7}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1771
    :cond_6
    const-string v6, "batch_app_id"

    invoke-virtual {v4, v6, v1}, Lcom/facebook/GraphRequest$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1776
    .restart local v0    # "attachments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/GraphRequest$Attachment;>;"
    invoke-static {v4, p0, v0}, Lcom/facebook/GraphRequest;->serializeRequestsAsJSON(Lcom/facebook/GraphRequest$Serializer;Ljava/util/Collection;Ljava/util/Map;)V

    .line 1778
    if-eqz p1, :cond_7

    .line 1779
    const-string v6, "  Attachments:\n"

    invoke-virtual {p1, v6}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1781
    :cond_7
    invoke-static {v0, v4}, Lcom/facebook/GraphRequest;->serializeAttachments(Ljava/util/Map;Lcom/facebook/GraphRequest$Serializer;)V

    goto :goto_1
.end method

.method static runCallbacks(Lcom/facebook/GraphRequestBatch;Ljava/util/List;)V
    .locals 9
    .param p0, "requests"    # Lcom/facebook/GraphRequestBatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphRequestBatch;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1362
    .local p1, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphResponse;>;"
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->size()I

    move-result v3

    .line 1366
    .local v3, "numRequests":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1367
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/facebook/GraphRequest$Callback;Lcom/facebook/GraphResponse;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1368
    invoke-virtual {p0, v2}, Lcom/facebook/GraphRequestBatch;->get(I)Lcom/facebook/GraphRequest;

    move-result-object v4

    .line 1369
    .local v4, "request":Lcom/facebook/GraphRequest;
    iget-object v6, v4, Lcom/facebook/GraphRequest;->callback:Lcom/facebook/GraphRequest$Callback;

    if-eqz v6, :cond_0

    .line 1370
    new-instance v6, Landroid/util/Pair;

    iget-object v7, v4, Lcom/facebook/GraphRequest;->callback:Lcom/facebook/GraphRequest$Callback;

    .line 1371
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1370
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1367
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1375
    .end local v4    # "request":Lcom/facebook/GraphRequest;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 1376
    new-instance v5, Lcom/facebook/GraphRequest$5;

    invoke-direct {v5, v1, p0}, Lcom/facebook/GraphRequest$5;-><init>(Ljava/util/ArrayList;Lcom/facebook/GraphRequestBatch;)V

    .line 1389
    .local v5, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1390
    .local v0, "callbackHandler":Landroid/os/Handler;
    if-nez v0, :cond_3

    .line 1392
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1398
    .end local v0    # "callbackHandler":Landroid/os/Handler;
    .end local v5    # "runnable":Ljava/lang/Runnable;
    :cond_2
    :goto_1
    return-void

    .line 1395
    .restart local v0    # "callbackHandler":Landroid/os/Handler;
    .restart local v5    # "runnable":Ljava/lang/Runnable;
    :cond_3
    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static serializeAttachments(Ljava/util/Map;Lcom/facebook/GraphRequest$Serializer;)V
    .locals 6
    .param p1, "serializer"    # Lcom/facebook/GraphRequest$Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$Attachment;",
            ">;",
            "Lcom/facebook/GraphRequest$Serializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1971
    .local p0, "attachments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/GraphRequest$Attachment;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1973
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1974
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest$Attachment;

    .line 1975
    .local v0, "attachment":Lcom/facebook/GraphRequest$Attachment;
    invoke-virtual {v0}, Lcom/facebook/GraphRequest$Attachment;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/GraphRequest;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1976
    invoke-virtual {v0}, Lcom/facebook/GraphRequest$Attachment;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/GraphRequest$Attachment;->getRequest()Lcom/facebook/GraphRequest;

    move-result-object v5

    invoke-virtual {p1, v1, v4, v5}, Lcom/facebook/GraphRequest$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V

    goto :goto_0

    .line 1979
    .end local v0    # "attachment":Lcom/facebook/GraphRequest$Attachment;
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static serializeParameters(Landroid/os/Bundle;Lcom/facebook/GraphRequest$Serializer;Lcom/facebook/GraphRequest;)V
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "serializer"    # Lcom/facebook/GraphRequest$Serializer;
    .param p2, "request"    # Lcom/facebook/GraphRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1957
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1959
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1960
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1961
    .local v2, "value":Ljava/lang/Object;
    invoke-static {v2}, Lcom/facebook/GraphRequest;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1962
    invoke-virtual {p1, v0, v2, p2}, Lcom/facebook/GraphRequest$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V

    goto :goto_0

    .line 1965
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private static serializeRequestsAsJSON(Lcom/facebook/GraphRequest$Serializer;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 4
    .param p0, "serializer"    # Lcom/facebook/GraphRequest$Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphRequest$Serializer;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$Attachment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1986
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/GraphRequest;>;"
    .local p2, "attachments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/GraphRequest$Attachment;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1987
    .local v0, "batch":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphRequest;

    .line 1988
    .local v1, "request":Lcom/facebook/GraphRequest;
    invoke-direct {v1, v0, p2}, Lcom/facebook/GraphRequest;->serializeToBatch(Lorg/json/JSONArray;Ljava/util/Map;)V

    goto :goto_0

    .line 1991
    .end local v1    # "request":Lcom/facebook/GraphRequest;
    :cond_0
    const-string v2, "batch"

    invoke-virtual {p0, v2, v0, p1}, Lcom/facebook/GraphRequest$Serializer;->writeRequestsAsJson(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V

    .line 1992
    return-void
.end method

.method private serializeToBatch(Lorg/json/JSONArray;Ljava/util/Map;)V
    .locals 18
    .param p1, "batch"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$Attachment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1533
    .local p2, "attachments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/GraphRequest$Attachment;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1535
    .local v3, "batchEntry":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/GraphRequest;->batchEntryName:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 1536
    const-string v12, "name"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/GraphRequest;->batchEntryName:Ljava/lang/String;

    invoke-virtual {v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1537
    const-string v12, "omit_response_on_success"

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/facebook/GraphRequest;->batchEntryOmitResultOnSuccess:Z

    invoke-virtual {v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1541
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/GraphRequest;->batchEntryDependsOn:Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 1542
    const-string v12, "depends_on"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/GraphRequest;->batchEntryDependsOn:Ljava/lang/String;

    invoke-virtual {v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1545
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/GraphRequest;->getUrlForBatchedRequest()Ljava/lang/String;

    move-result-object v9

    .line 1546
    .local v9, "relativeURL":Ljava/lang/String;
    const-string v12, "relative_url"

    invoke-virtual {v3, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1547
    const-string v12, "method"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    invoke-virtual {v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1548
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    if-eqz v12, :cond_2

    .line 1549
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v12}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v10

    .line 1550
    .local v10, "token":Ljava/lang/String;
    invoke-static {v10}, Lcom/facebook/internal/Logger;->registerAccessToken(Ljava/lang/String;)V

    .line 1554
    .end local v10    # "token":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1555
    .local v1, "attachmentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v12}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 1556
    .local v6, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1557
    .local v5, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    invoke-virtual {v13, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1558
    .local v11, "value":Ljava/lang/Object;
    invoke-static {v11}, Lcom/facebook/GraphRequest;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1560
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v14, "%s%d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "file"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    .line 1564
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    .line 1560
    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1565
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1566
    new-instance v13, Lcom/facebook/GraphRequest$Attachment;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11}, Lcom/facebook/GraphRequest$Attachment;-><init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1570
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 1571
    const-string v12, ","

    invoke-static {v12, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 1572
    .local v2, "attachmentNamesString":Ljava/lang/String;
    const-string v12, "attached_files"

    invoke-virtual {v3, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1575
    .end local v2    # "attachmentNamesString":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    if-eqz v12, :cond_6

    .line 1577
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1578
    .local v7, "keysAndValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    new-instance v13, Lcom/facebook/GraphRequest$6;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v7}, Lcom/facebook/GraphRequest$6;-><init>(Lcom/facebook/GraphRequest;Ljava/util/ArrayList;)V

    invoke-static {v12, v9, v13}, Lcom/facebook/GraphRequest;->processGraphObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$KeyValueSerializer;)V

    .line 1588
    const-string v12, "&"

    invoke-static {v12, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 1589
    .local v4, "bodyValue":Ljava/lang/String;
    const-string v12, "body"

    invoke-virtual {v3, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1592
    .end local v4    # "bodyValue":Ljava/lang/String;
    .end local v7    # "keysAndValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1593
    return-void
.end method

.method static final serializeToUrlConnection(Lcom/facebook/GraphRequestBatch;Ljava/net/HttpURLConnection;)V
    .locals 22
    .param p0, "requests"    # Lcom/facebook/GraphRequestBatch;
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1676
    new-instance v20, Lcom/facebook/internal/Logger;

    sget-object v2, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v3, "Request"

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3}, Lcom/facebook/internal/Logger;-><init>(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V

    .line 1678
    .local v20, "logger":Lcom/facebook/internal/Logger;
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/GraphRequestBatch;->size()I

    move-result v4

    .line 1679
    .local v4, "numRequests":I
    invoke-static/range {p0 .. p0}, Lcom/facebook/GraphRequest;->isGzipCompressible(Lcom/facebook/GraphRequestBatch;)Z

    move-result v7

    .line 1681
    .local v7, "shouldUseGzip":Z
    const/4 v2, 0x1

    if-ne v4, v2, :cond_0

    const/4 v2, 0x0

    .line 1682
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/facebook/GraphRequestBatch;->get(I)Lcom/facebook/GraphRequest;

    move-result-object v2

    iget-object v0, v2, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    move-object/from16 v18, v0

    .line 1683
    .local v18, "connectionHttpMethod":Lcom/facebook/HttpMethod;
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lcom/facebook/HttpMethod;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1684
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/facebook/GraphRequest;->setConnectionContentType(Ljava/net/HttpURLConnection;Z)V

    .line 1686
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    .line 1687
    .local v5, "url":Ljava/net/URL;
    const-string v2, "Request:\n"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1688
    const-string v2, "Id"

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/GraphRequestBatch;->getId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1689
    const-string v2, "URL"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1690
    const-string v2, "Method"

    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1691
    const-string v2, "User-Agent"

    const-string v3, "User-Agent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1692
    const-string v2, "Content-Type"

    const-string v3, "Content-Type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1694
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/GraphRequestBatch;->getTimeout()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1695
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/GraphRequestBatch;->getTimeout()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1699
    sget-object v2, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_1

    const/16 v19, 0x1

    .line 1700
    .local v19, "isPost":Z
    :goto_1
    if-nez v19, :cond_2

    .line 1701
    invoke-virtual/range {v20 .. v20}, Lcom/facebook/internal/Logger;->log()V

    .line 1733
    :goto_2
    return-void

    .line 1682
    .end local v5    # "url":Ljava/net/URL;
    .end local v18    # "connectionHttpMethod":Lcom/facebook/HttpMethod;
    .end local v19    # "isPost":Z
    :cond_0
    sget-object v18, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    goto :goto_0

    .line 1699
    .restart local v5    # "url":Ljava/net/URL;
    .restart local v18    # "connectionHttpMethod":Lcom/facebook/HttpMethod;
    :cond_1
    const/16 v19, 0x0

    goto :goto_1

    .line 1705
    .restart local v19    # "isPost":Z
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1707
    const/4 v8, 0x0

    .line 1709
    .local v8, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1710
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .local v9, "outputStream":Ljava/io/OutputStream;
    if-eqz v7, :cond_3

    .line 1711
    :try_start_1
    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v8, v9}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    move-object v9, v8

    .line 1714
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/facebook/GraphRequest;->hasOnProgressCallbacks(Lcom/facebook/GraphRequestBatch;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1715
    const/4 v6, 0x0

    .line 1716
    .local v6, "countingStream":Lcom/facebook/ProgressNoopOutputStream;
    new-instance v6, Lcom/facebook/ProgressNoopOutputStream;

    .end local v6    # "countingStream":Lcom/facebook/ProgressNoopOutputStream;
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/GraphRequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/facebook/ProgressNoopOutputStream;-><init>(Landroid/os/Handler;)V

    .line 1717
    .restart local v6    # "countingStream":Lcom/facebook/ProgressNoopOutputStream;
    const/4 v3, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/facebook/GraphRequest;->processRequest(Lcom/facebook/GraphRequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;Z)V

    .line 1719
    invoke-virtual {v6}, Lcom/facebook/ProgressNoopOutputStream;->getMaxProgress()I

    move-result v21

    .line 1720
    .local v21, "max":I
    invoke-virtual {v6}, Lcom/facebook/ProgressNoopOutputStream;->getProgressMap()Ljava/util/Map;

    move-result-object v11

    .line 1722
    .local v11, "progressMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/GraphRequest;Lcom/facebook/RequestProgress;>;"
    new-instance v8, Lcom/facebook/ProgressOutputStream;

    move/from16 v0, v21

    int-to-long v12, v0

    move-object/from16 v10, p0

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ProgressOutputStream;-><init>(Ljava/io/OutputStream;Lcom/facebook/GraphRequestBatch;Ljava/util/Map;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v6    # "countingStream":Lcom/facebook/ProgressNoopOutputStream;
    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .end local v11    # "progressMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/GraphRequest;Lcom/facebook/RequestProgress;>;"
    .end local v21    # "max":I
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    :goto_3
    move-object/from16 v12, p0

    move-object/from16 v13, v20

    move v14, v4

    move-object v15, v5

    move-object/from16 v16, v8

    move/from16 v17, v7

    .line 1725
    :try_start_2
    invoke-static/range {v12 .. v17}, Lcom/facebook/GraphRequest;->processRequest(Lcom/facebook/GraphRequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1727
    if-eqz v8, :cond_4

    .line 1728
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 1732
    :cond_4
    invoke-virtual/range {v20 .. v20}, Lcom/facebook/internal/Logger;->log()V

    goto :goto_2

    .line 1727
    :catchall_0
    move-exception v2

    :goto_4
    if-eqz v8, :cond_5

    .line 1728
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    :cond_5
    throw v2

    .line 1727
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    move-object v8, v9

    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    goto :goto_4

    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    :cond_6
    move-object v8, v9

    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3
.end method

.method private static setConnectionContentType(Ljava/net/HttpURLConnection;Z)V
    .locals 2
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "shouldUseGzip"    # Z

    .prologue
    .line 1614
    if-eqz p1, :cond_0

    .line 1615
    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    :goto_0
    return-void

    .line 1618
    :cond_0
    const-string v0, "Content-Type"

    invoke-static {}, Lcom/facebook/GraphRequest;->getMimeContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final setDefaultBatchApplicationId(Ljava/lang/String;)V
    .locals 0
    .param p0, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 885
    sput-object p0, Lcom/facebook/GraphRequest;->defaultBatchApplicationId:Ljava/lang/String;

    .line 886
    return-void
.end method

.method static final shouldWarnOnMissingFieldsParam(Lcom/facebook/GraphRequest;)Z
    .locals 6
    .param p0, "request"    # Lcom/facebook/GraphRequest;

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1635
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 1636
    .local v0, "version":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1648
    :goto_0
    return v3

    .line 1640
    :cond_0
    const-string v4, "v"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1641
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1643
    :cond_1
    const-string v4, "\\."

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1645
    .local v1, "versionParts":[Ljava/lang/String;
    array-length v4, v1

    if-lt v4, v5, :cond_2

    aget-object v4, v1, v2

    .line 1646
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-gt v4, v5, :cond_3

    :cond_2
    aget-object v4, v1, v2

    .line 1647
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lt v4, v5, :cond_4

    aget-object v4, v1, v3

    .line 1648
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    move v3, v2

    goto :goto_0
.end method

.method public static toHttpConnection(Lcom/facebook/GraphRequestBatch;)Ljava/net/HttpURLConnection;
    .locals 6
    .param p0, "requests"    # Lcom/facebook/GraphRequestBatch;

    .prologue
    .line 1045
    invoke-static {p0}, Lcom/facebook/GraphRequest;->validateFieldsParamForGetRequests(Lcom/facebook/GraphRequestBatch;)V

    .line 1049
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1051
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/facebook/GraphRequestBatch;->get(I)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 1054
    .local v2, "request":Lcom/facebook/GraphRequest;
    new-instance v3, Ljava/net/URL;

    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    .end local v2    # "request":Lcom/facebook/GraphRequest;
    .local v3, "url":Ljava/net/URL;
    :goto_0
    const/4 v0, 0x0

    .line 1066
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :try_start_1
    invoke-static {v3}, Lcom/facebook/GraphRequest;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1068
    invoke-static {p0, v0}, Lcom/facebook/GraphRequest;->serializeToUrlConnection(Lcom/facebook/GraphRequestBatch;Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1075
    return-object v0

    .line 1058
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "url":Ljava/net/URL;
    :cond_0
    :try_start_2
    new-instance v3, Ljava/net/URL;

    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v3    # "url":Ljava/net/URL;
    goto :goto_0

    .line 1060
    .end local v3    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 1061
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "could not construct URL for request"

    invoke-direct {v4, v5, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1069
    .end local v1    # "e":Ljava/net/MalformedURLException;
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v3    # "url":Ljava/net/URL;
    :catch_1
    move-exception v1

    .line 1070
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 1072
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "could not construct request body"

    invoke-direct {v4, v5, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1069
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .prologue
    .line 1028
    .local p0, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/GraphRequest;>;"
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1030
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/GraphRequest;->toHttpConnection(Lcom/facebook/GraphRequestBatch;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toHttpConnection([Lcom/facebook/GraphRequest;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0, "requests"    # [Lcom/facebook/GraphRequest;

    .prologue
    .line 1013
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/GraphRequest;->toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method static final validateFieldsParamForGetRequests(Lcom/facebook/GraphRequestBatch;)V
    .locals 10
    .param p0, "requests"    # Lcom/facebook/GraphRequestBatch;

    .prologue
    .line 1653
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphRequest;

    .line 1654
    .local v1, "request":Lcom/facebook/GraphRequest;
    sget-object v3, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->getHttpMethod()Lcom/facebook/HttpMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1655
    invoke-static {v1}, Lcom/facebook/GraphRequest;->shouldWarnOnMissingFieldsParam(Lcom/facebook/GraphRequest;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1656
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    .line 1657
    .local v0, "params":Landroid/os/Bundle;
    const-string v3, "fields"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "fields"

    .line 1658
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1659
    :cond_1
    sget-object v3, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const/4 v4, 0x5

    const-string v5, "Request"

    const-string v6, "starting with Graph API v2.4, GET requests for /%s should contain an explicit \"fields\" parameter."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 1665
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->getGraphPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1659
    invoke-static {v3, v4, v5, v6, v7}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1670
    .end local v0    # "params":Landroid/os/Bundle;
    .end local v1    # "request":Lcom/facebook/GraphRequest;
    :cond_2
    return-void
.end method


# virtual methods
.method public final executeAndWait()Lcom/facebook/GraphResponse;
    .locals 1

    .prologue
    .line 983
    invoke-static {p0}, Lcom/facebook/GraphRequest;->executeAndWait(Lcom/facebook/GraphRequest;)Lcom/facebook/GraphResponse;

    move-result-object v0

    return-object v0
.end method

.method public final executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    .locals 2

    .prologue
    .line 998
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/facebook/GraphRequest;->executeBatchAsync([Lcom/facebook/GraphRequest;)Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final getAccessToken()Lcom/facebook/AccessToken;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    return-object v0
.end method

.method public final getBatchEntryDependsOn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/facebook/GraphRequest;->batchEntryDependsOn:Ljava/lang/String;

    return-object v0
.end method

.method public final getBatchEntryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/facebook/GraphRequest;->batchEntryName:Ljava/lang/String;

    return-object v0
.end method

.method public final getBatchEntryOmitResultOnSuccess()Z
    .locals 1

    .prologue
    .line 848
    iget-boolean v0, p0, Lcom/facebook/GraphRequest;->batchEntryOmitResultOnSuccess:Z

    return v0
.end method

.method public final getCallback()Lcom/facebook/GraphRequest$Callback;
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/facebook/GraphRequest;->callback:Lcom/facebook/GraphRequest$Callback;

    return-object v0
.end method

.method public final getGraphObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getGraphPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpMethod()Lcom/facebook/HttpMethod;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    return-object v0
.end method

.method public final getParameters()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lcom/facebook/GraphRequest;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method final getUrlForBatchedRequest()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1475
    iget-object v1, p0, Lcom/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1476
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Can\'t override URL for a batch request"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1479
    :cond_0
    invoke-direct {p0}, Lcom/facebook/GraphRequest;->getGraphPathWithVersion()Ljava/lang/String;

    move-result-object v0

    .line 1480
    .local v0, "baseUrl":Ljava/lang/String;
    invoke-direct {p0}, Lcom/facebook/GraphRequest;->addCommonParameters()V

    .line 1481
    invoke-direct {p0, v0}, Lcom/facebook/GraphRequest;->appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method final getUrlForSingleRequest()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1485
    iget-object v2, p0, Lcom/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1486
    iget-object v2, p0, Lcom/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1500
    :goto_0
    return-object v2

    .line 1490
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->getHttpMethod()Lcom/facebook/HttpMethod;

    move-result-object v2

    sget-object v3, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    const-string v3, "/videos"

    .line 1492
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1493
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphVideoUrlBase()Ljava/lang/String;

    move-result-object v1

    .line 1497
    .local v1, "graphBaseUrlBase":Ljava/lang/String;
    :goto_1
    const-string v2, "%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/facebook/GraphRequest;->getGraphPathWithVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1499
    .local v0, "baseUrl":Ljava/lang/String;
    invoke-direct {p0}, Lcom/facebook/GraphRequest;->addCommonParameters()V

    .line 1500
    invoke-direct {p0, v0}, Lcom/facebook/GraphRequest;->appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1495
    .end local v0    # "baseUrl":Ljava/lang/String;
    .end local v1    # "graphBaseUrlBase":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "graphBaseUrlBase":Ljava/lang/String;
    goto :goto_1
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final setAccessToken(Lcom/facebook/AccessToken;)V
    .locals 0
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 790
    iput-object p1, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    .line 791
    return-void
.end method

.method public final setBatchEntryDependsOn(Ljava/lang/String;)V
    .locals 0
    .param p1, "batchEntryDependsOn"    # Ljava/lang/String;

    .prologue
    .line 837
    iput-object p1, p0, Lcom/facebook/GraphRequest;->batchEntryDependsOn:Ljava/lang/String;

    .line 838
    return-void
.end method

.method public final setBatchEntryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "batchEntryName"    # Ljava/lang/String;

    .prologue
    .line 813
    iput-object p1, p0, Lcom/facebook/GraphRequest;->batchEntryName:Ljava/lang/String;

    .line 814
    return-void
.end method

.method public final setBatchEntryOmitResultOnSuccess(Z)V
    .locals 0
    .param p1, "batchEntryOmitResultOnSuccess"    # Z

    .prologue
    .line 861
    iput-boolean p1, p0, Lcom/facebook/GraphRequest;->batchEntryOmitResultOnSuccess:Z

    .line 862
    return-void
.end method

.method public final setCallback(Lcom/facebook/GraphRequest$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .prologue
    .line 904
    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    invoke-static {v1}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    .line 905
    invoke-static {v1}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 906
    :cond_0
    new-instance v0, Lcom/facebook/GraphRequest$4;

    invoke-direct {v0, p0, p1}, Lcom/facebook/GraphRequest$4;-><init>(Lcom/facebook/GraphRequest;Lcom/facebook/GraphRequest$Callback;)V

    .line 943
    .local v0, "wrapper":Lcom/facebook/GraphRequest$Callback;
    iput-object v0, p0, Lcom/facebook/GraphRequest;->callback:Lcom/facebook/GraphRequest$Callback;

    .line 948
    .end local v0    # "wrapper":Lcom/facebook/GraphRequest$Callback;
    :goto_0
    return-void

    .line 945
    :cond_1
    iput-object p1, p0, Lcom/facebook/GraphRequest;->callback:Lcom/facebook/GraphRequest$Callback;

    goto :goto_0
.end method

.method public final setGraphObject(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "graphObject"    # Lorg/json/JSONObject;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    .line 689
    return-void
.end method

.method public final setGraphPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "graphPath"    # Ljava/lang/String;

    .prologue
    .line 706
    iput-object p1, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    .line 707
    return-void
.end method

.method public final setHttpMethod(Lcom/facebook/HttpMethod;)V
    .locals 2
    .param p1, "httpMethod"    # Lcom/facebook/HttpMethod;

    .prologue
    .line 724
    iget-object v0, p0, Lcom/facebook/GraphRequest;->overriddenURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    if-eq p1, v0, :cond_0

    .line 725
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Can\'t change HTTP method on request with overridden URL."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_0
    if-eqz p1, :cond_1

    .end local p1    # "httpMethod":Lcom/facebook/HttpMethod;
    :goto_0
    iput-object p1, p0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    .line 728
    return-void

    .line 727
    .restart local p1    # "httpMethod":Lcom/facebook/HttpMethod;
    :cond_1
    sget-object p1, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    goto :goto_0
.end method

.method public final setParameters(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 772
    iput-object p1, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    .line 773
    return-void
.end method

.method public final setSkipClientToken(Z)V
    .locals 0
    .param p1, "skipClientToken"    # Z

    .prologue
    .line 754
    iput-boolean p1, p0, Lcom/facebook/GraphRequest;->skipClientToken:Z

    .line 755
    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 958
    iput-object p1, p0, Lcom/facebook/GraphRequest;->tag:Ljava/lang/Object;

    .line 959
    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/facebook/GraphRequest;->version:Ljava/lang/String;

    .line 748
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Request: "

    .line 1346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " accessToken: "

    .line 1347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 1348
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphPath: "

    .line 1349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->graphPath:Ljava/lang/String;

    .line 1350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphObject: "

    .line 1351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->graphObject:Lorg/json/JSONObject;

    .line 1352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpMethod: "

    .line 1353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->httpMethod:Lcom/facebook/HttpMethod;

    .line 1354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameters: "

    .line 1355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->parameters:Landroid/os/Bundle;

    .line 1356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    .line 1357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1347
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphRequest;->accessToken:Lcom/facebook/AccessToken;

    goto :goto_0
.end method
