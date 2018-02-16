.class public Lcom/facebook/applinks/AppLinkData;
.super Ljava/lang/Object;
.source "AppLinkData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/applinks/AppLinkData$CompletionHandler;
    }
.end annotation


# static fields
.field private static final APPLINK_BRIDGE_ARGS_KEY:Ljava/lang/String; = "bridge_args"

.field private static final APPLINK_METHOD_ARGS_KEY:Ljava/lang/String; = "method_args"

.field private static final APPLINK_VERSION_KEY:Ljava/lang/String; = "version"

.field public static final ARGUMENTS_EXTRAS_KEY:Ljava/lang/String; = "extras"

.field public static final ARGUMENTS_NATIVE_CLASS_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_NATIVE_CLASS"

.field public static final ARGUMENTS_NATIVE_URL:Ljava/lang/String; = "com.facebook.platform.APPLINK_NATIVE_URL"

.field public static final ARGUMENTS_REFERER_DATA_KEY:Ljava/lang/String; = "referer_data"

.field public static final ARGUMENTS_TAPTIME_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_TAP_TIME_UTC"

.field private static final BRIDGE_ARGS_METHOD_KEY:Ljava/lang/String; = "method"

.field private static final BUNDLE_AL_APPLINK_DATA_KEY:Ljava/lang/String; = "al_applink_data"

.field static final BUNDLE_APPLINK_ARGS_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_ARGS"

.field private static final DEFERRED_APP_LINK_ARGS_FIELD:Ljava/lang/String; = "applink_args"

.field private static final DEFERRED_APP_LINK_CLASS_FIELD:Ljava/lang/String; = "applink_class"

.field private static final DEFERRED_APP_LINK_CLICK_TIME_FIELD:Ljava/lang/String; = "click_time"

.field private static final DEFERRED_APP_LINK_EVENT:Ljava/lang/String; = "DEFERRED_APP_LINK"

.field private static final DEFERRED_APP_LINK_PATH:Ljava/lang/String; = "%s/activities"

.field private static final DEFERRED_APP_LINK_URL_FIELD:Ljava/lang/String; = "applink_url"

.field private static final EXTRAS_DEEPLINK_CONTEXT_KEY:Ljava/lang/String; = "deeplink_context"

.field private static final METHOD_ARGS_REF_KEY:Ljava/lang/String; = "ref"

.field private static final METHOD_ARGS_TARGET_URL_KEY:Ljava/lang/String; = "target_url"

.field private static final PROMOTION_CODE_KEY:Ljava/lang/String; = "promo_code"

.field private static final REFERER_DATA_REF_KEY:Ljava/lang/String; = "fb_ref"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private argumentBundle:Landroid/os/Bundle;

.field private arguments:Lorg/json/JSONObject;

.field private promotionCode:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field private targetUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-class v0, Lcom/facebook/applinks/AppLinkData;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/facebook/applinks/AppLinkData$CompletionHandler;

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkFromServer(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    return-void
.end method

.method public static createFromActivity(Landroid/app/Activity;)Lcom/facebook/applinks/AppLinkData;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 248
    const-string v3, "activity"

    invoke-static {p0, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 250
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 251
    const/4 v1, 0x0

    .line 264
    :cond_0
    :goto_0
    return-object v1

    .line 254
    :cond_1
    invoke-static {v2}, Lcom/facebook/applinks/AppLinkData;->createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v1

    .line 255
    .local v1, "appLinkData":Lcom/facebook/applinks/AppLinkData;
    if-nez v1, :cond_2

    .line 256
    const-string v3, "com.facebook.platform.APPLINK_ARGS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "appLinkArgsJsonString":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/applinks/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v1

    .line 259
    .end local v0    # "appLinkArgsJsonString":Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_0

    .line 261
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/applinks/AppLinkData;->createFromUri(Landroid/net/Uri;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v1

    goto :goto_0
.end method

.method public static createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/applinks/AppLinkData;
    .locals 10
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 273
    if-nez p0, :cond_1

    move-object v0, v8

    .line 312
    :cond_0
    :goto_0
    return-object v0

    .line 277
    :cond_1
    const-string v9, "al_applink_data"

    invoke-virtual {p0, v9}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 278
    .local v1, "applinks":Landroid/os/Bundle;
    if-nez v1, :cond_2

    move-object v0, v8

    .line 279
    goto :goto_0

    .line 282
    :cond_2
    new-instance v0, Lcom/facebook/applinks/AppLinkData;

    invoke-direct {v0}, Lcom/facebook/applinks/AppLinkData;-><init>()V

    .line 283
    .local v0, "appLinkData":Lcom/facebook/applinks/AppLinkData;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    iput-object v9, v0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 284
    iget-object v9, v0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    if-nez v9, :cond_3

    .line 285
    const-string v9, "target_url"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 286
    .local v7, "targetUriString":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 287
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, v0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 290
    .end local v7    # "targetUriString":Ljava/lang/String;
    :cond_3
    iput-object v1, v0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    .line 291
    iput-object v8, v0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    .line 292
    const-string v8, "referer_data"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 293
    .local v6, "refererData":Landroid/os/Bundle;
    if-eqz v6, :cond_4

    .line 294
    const-string v8, "fb_ref"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    .line 297
    :cond_4
    const-string v8, "extras"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 298
    .local v5, "extras":Landroid/os/Bundle;
    if-eqz v5, :cond_0

    .line 299
    const-string v8, "deeplink_context"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "deeplinkContext":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 302
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 303
    .local v3, "dlContextJson":Lorg/json/JSONObject;
    const-string v8, "promo_code"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 304
    const-string v8, "promo_code"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/facebook/applinks/AppLinkData;->promotionCode:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    .end local v3    # "dlContextJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 307
    .local v4, "e":Lorg/json/JSONException;
    sget-object v8, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v9, "Unable to parse deeplink_context JSON"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static createFromJson(Ljava/lang/String;)Lcom/facebook/applinks/AppLinkData;
    .locals 12
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 316
    if-nez p0, :cond_0

    move-object v1, v9

    .line 372
    :goto_0
    return-object v1

    .line 322
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, "appLinkArgsJson":Lorg/json/JSONObject;
    const-string v10, "version"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 325
    .local v8, "version":Ljava/lang/String;
    const-string v10, "bridge_args"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 326
    .local v2, "bridgeArgs":Lorg/json/JSONObject;
    const-string v10, "method"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 327
    .local v6, "method":Ljava/lang/String;
    const-string v10, "applink"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "2"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 329
    new-instance v1, Lcom/facebook/applinks/AppLinkData;

    invoke-direct {v1}, Lcom/facebook/applinks/AppLinkData;-><init>()V

    .line 331
    .local v1, "appLinkData":Lcom/facebook/applinks/AppLinkData;
    const-string v10, "method_args"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    iput-object v10, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    .line 333
    iget-object v10, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v11, "ref"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 334
    iget-object v10, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v11, "ref"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    .line 344
    :cond_1
    :goto_1
    iget-object v10, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v11, "target_url"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 345
    iget-object v10, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v11, "target_url"

    .line 346
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 345
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v1, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 349
    :cond_2
    iget-object v10, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v11, "extras"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 350
    iget-object v10, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v11, "extras"

    .line 351
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 352
    .local v5, "extrasData":Lorg/json/JSONObject;
    const-string v10, "deeplink_context"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 353
    const-string v10, "deeplink_context"

    .line 354
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 355
    .local v3, "deeplink_context":Lorg/json/JSONObject;
    const-string v10, "promo_code"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 356
    const-string v10, "promo_code"

    .line 357
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/facebook/applinks/AppLinkData;->promotionCode:Ljava/lang/String;

    .line 362
    .end local v3    # "deeplink_context":Lorg/json/JSONObject;
    .end local v5    # "extrasData":Lorg/json/JSONObject;
    :cond_3
    iget-object v10, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    invoke-static {v10}, Lcom/facebook/applinks/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v10

    iput-object v10, v1, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 366
    .end local v0    # "appLinkArgsJson":Lorg/json/JSONObject;
    .end local v1    # "appLinkData":Lcom/facebook/applinks/AppLinkData;
    .end local v2    # "bridgeArgs":Lorg/json/JSONObject;
    .end local v6    # "method":Ljava/lang/String;
    .end local v8    # "version":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 367
    .local v4, "e":Lorg/json/JSONException;
    sget-object v10, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v11, "Unable to parse AppLink JSON"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Lorg/json/JSONException;
    :cond_4
    :goto_2
    move-object v1, v9

    .line 372
    goto/16 :goto_0

    .line 335
    .restart local v0    # "appLinkArgsJson":Lorg/json/JSONObject;
    .restart local v1    # "appLinkData":Lcom/facebook/applinks/AppLinkData;
    .restart local v2    # "bridgeArgs":Lorg/json/JSONObject;
    .restart local v6    # "method":Ljava/lang/String;
    .restart local v8    # "version":Ljava/lang/String;
    :cond_5
    :try_start_1
    iget-object v10, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v11, "referer_data"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 337
    iget-object v10, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v11, "referer_data"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 339
    .local v7, "refererData":Lorg/json/JSONObject;
    const-string v10, "fb_ref"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 340
    const-string v10, "fb_ref"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/facebook/FacebookException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 368
    .end local v0    # "appLinkArgsJson":Lorg/json/JSONObject;
    .end local v1    # "appLinkData":Lcom/facebook/applinks/AppLinkData;
    .end local v2    # "bridgeArgs":Lorg/json/JSONObject;
    .end local v6    # "method":Ljava/lang/String;
    .end local v7    # "refererData":Lorg/json/JSONObject;
    .end local v8    # "version":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 369
    .local v4, "e":Lcom/facebook/FacebookException;
    sget-object v10, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v11, "Unable to parse AppLink JSON"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static createFromUri(Landroid/net/Uri;)Lcom/facebook/applinks/AppLinkData;
    .locals 1
    .param p0, "appLinkDataUri"    # Landroid/net/Uri;

    .prologue
    .line 376
    if-nez p0, :cond_0

    .line 377
    const/4 v0, 0x0

    .line 382
    :goto_0
    return-object v0

    .line 380
    :cond_0
    new-instance v0, Lcom/facebook/applinks/AppLinkData;

    invoke-direct {v0}, Lcom/facebook/applinks/AppLinkData;-><init>()V

    .line 381
    .local v0, "appLinkData":Lcom/facebook/applinks/AppLinkData;
    iput-object p0, v0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "completionHandler"    # Lcom/facebook/applinks/AppLinkData$CompletionHandler;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    .line 119
    return-void
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "completionHandler"    # Lcom/facebook/applinks/AppLinkData$CompletionHandler;

    .prologue
    .line 134
    const-string v2, "context"

    invoke-static {p0, v2}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    const-string v2, "completionHandler"

    invoke-static {p2, v2}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    if-nez p1, :cond_0

    .line 138
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 141
    :cond_0
    const-string v2, "applicationId"

    invoke-static {p1, v2}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 144
    .local v0, "applicationContext":Landroid/content/Context;
    move-object v1, p1

    .line 145
    .local v1, "applicationIdCopy":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/facebook/applinks/AppLinkData$1;

    invoke-direct {v3, v0, v1, p2}, Lcom/facebook/applinks/AppLinkData$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method private static fetchDeferredAppLinkFromServer(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "completionHandler"    # Lcom/facebook/applinks/AppLinkData$CompletionHandler;

    .prologue
    .line 159
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 161
    .local v6, "deferredApplinkParams":Lorg/json/JSONObject;
    :try_start_0
    const-string v14, "event"

    const-string v15, "DEFERRED_APP_LINK"

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    invoke-static/range {p0 .. p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v14

    .line 164
    invoke-static/range {p0 .. p0}, Lcom/facebook/appevents/AppEventsLogger;->getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 165
    invoke-static/range {p0 .. p0}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v16

    .line 162
    move/from16 v0, v16

    invoke-static {v6, v14, v15, v0}, Lcom/facebook/internal/Utility;->setAppEventAttributionParameters(Lorg/json/JSONObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Z)V

    .line 166
    const-string v14, "application_package_name"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    const-string v14, "%s/activities"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 172
    .local v9, "deferredApplinkUrlPath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 175
    .local v4, "appLinkData":Lcom/facebook/applinks/AppLinkData;
    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_1
    invoke-static {v14, v9, v6, v15}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v7

    .line 177
    .local v7, "deferredApplinkRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v7}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v8

    .line 178
    .local v8, "deferredApplinkResponse":Lcom/facebook/GraphResponse;
    invoke-virtual {v8}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v11

    .line 179
    .local v11, "jsonResponse":Lorg/json/JSONObject;
    if-eqz v11, :cond_5

    .line 180
    const-string v14, "applink_args"

    .line 181
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "appLinkArgsJsonString":Ljava/lang/String;
    const-string v14, "click_time"

    const-wide/16 v16, -0x1

    .line 183
    move-wide/from16 v0, v16

    invoke-virtual {v11, v14, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 184
    .local v12, "tapTimeUtc":J
    const-string v14, "applink_class"

    .line 185
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "appLinkClassName":Ljava/lang/String;
    const-string v14, "applink_url"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, "appLinkUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 189
    invoke-static {v2}, Lcom/facebook/applinks/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/applinks/AppLinkData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 191
    const-wide/16 v14, -0x1

    cmp-long v14, v12, v14

    if-eqz v14, :cond_1

    .line 193
    :try_start_2
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    if-eqz v14, :cond_0

    .line 194
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v15, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    invoke-virtual {v14, v15, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 196
    :cond_0
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v14, :cond_1

    .line 197
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string v15, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    .line 198
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    .line 197
    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 205
    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    .line 207
    :try_start_3
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    if-eqz v14, :cond_2

    .line 208
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v15, "com.facebook.platform.APPLINK_NATIVE_CLASS"

    invoke-virtual {v14, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    :cond_2
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v14, :cond_3

    .line 212
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string v15, "com.facebook.platform.APPLINK_NATIVE_CLASS"

    invoke-virtual {v14, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 220
    :cond_3
    :goto_1
    if-eqz v5, :cond_5

    .line 222
    :try_start_4
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    if-eqz v14, :cond_4

    .line 223
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v15, "com.facebook.platform.APPLINK_NATIVE_URL"

    invoke-virtual {v14, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    :cond_4
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v14, :cond_5

    .line 226
    iget-object v14, v4, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string v15, "com.facebook.platform.APPLINK_NATIVE_URL"

    invoke-virtual {v14, v15, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 239
    .end local v2    # "appLinkArgsJsonString":Ljava/lang/String;
    .end local v3    # "appLinkClassName":Ljava/lang/String;
    .end local v5    # "appLinkUrl":Ljava/lang/String;
    .end local v7    # "deferredApplinkRequest":Lcom/facebook/GraphRequest;
    .end local v8    # "deferredApplinkResponse":Lcom/facebook/GraphResponse;
    .end local v11    # "jsonResponse":Lorg/json/JSONObject;
    .end local v12    # "tapTimeUtc":J
    :cond_5
    :goto_2
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/facebook/applinks/AppLinkData$CompletionHandler;->onDeferredAppLinkDataFetched(Lcom/facebook/applinks/AppLinkData;)V

    .line 240
    return-void

    .line 167
    .end local v4    # "appLinkData":Lcom/facebook/applinks/AppLinkData;
    .end local v9    # "deferredApplinkUrlPath":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 168
    .local v10, "e":Lorg/json/JSONException;
    new-instance v14, Lcom/facebook/FacebookException;

    const-string v15, "An error occurred while preparing deferred app link"

    invoke-direct {v14, v15, v10}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 200
    .end local v10    # "e":Lorg/json/JSONException;
    .restart local v2    # "appLinkArgsJsonString":Ljava/lang/String;
    .restart local v3    # "appLinkClassName":Ljava/lang/String;
    .restart local v4    # "appLinkData":Lcom/facebook/applinks/AppLinkData;
    .restart local v5    # "appLinkUrl":Ljava/lang/String;
    .restart local v7    # "deferredApplinkRequest":Lcom/facebook/GraphRequest;
    .restart local v8    # "deferredApplinkResponse":Lcom/facebook/GraphResponse;
    .restart local v9    # "deferredApplinkUrlPath":Ljava/lang/String;
    .restart local v11    # "jsonResponse":Lorg/json/JSONObject;
    .restart local v12    # "tapTimeUtc":J
    :catch_1
    move-exception v10

    .line 201
    .restart local v10    # "e":Lorg/json/JSONException;
    :try_start_5
    sget-object v14, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v15, "Unable to put tap time in AppLinkData.arguments"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 235
    .end local v2    # "appLinkArgsJsonString":Ljava/lang/String;
    .end local v3    # "appLinkClassName":Ljava/lang/String;
    .end local v5    # "appLinkUrl":Ljava/lang/String;
    .end local v7    # "deferredApplinkRequest":Lcom/facebook/GraphRequest;
    .end local v8    # "deferredApplinkResponse":Lcom/facebook/GraphResponse;
    .end local v10    # "e":Lorg/json/JSONException;
    .end local v11    # "jsonResponse":Lorg/json/JSONObject;
    .end local v12    # "tapTimeUtc":J
    :catch_2
    move-exception v10

    .line 236
    .local v10, "e":Ljava/lang/Exception;
    sget-object v14, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v15, "Unable to fetch deferred applink from server"

    invoke-static {v14, v15}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 215
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v2    # "appLinkArgsJsonString":Ljava/lang/String;
    .restart local v3    # "appLinkClassName":Ljava/lang/String;
    .restart local v5    # "appLinkUrl":Ljava/lang/String;
    .restart local v7    # "deferredApplinkRequest":Lcom/facebook/GraphRequest;
    .restart local v8    # "deferredApplinkResponse":Lcom/facebook/GraphResponse;
    .restart local v11    # "jsonResponse":Lorg/json/JSONObject;
    .restart local v12    # "tapTimeUtc":J
    :catch_3
    move-exception v10

    .line 216
    .local v10, "e":Lorg/json/JSONException;
    :try_start_6
    sget-object v14, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v15, "Unable to put tap time in AppLinkData.arguments"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 229
    .end local v10    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v10

    .line 230
    .restart local v10    # "e":Lorg/json/JSONException;
    sget-object v14, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v15, "Unable to put tap time in AppLinkData.arguments"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2
.end method

.method private static toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 11
    .param p0, "node"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 386
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 388
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 389
    .local v3, "fields":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 390
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 392
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 394
    .local v7, "value":Ljava/lang/Object;
    instance-of v9, v7, Lorg/json/JSONObject;

    if-eqz v9, :cond_0

    .line 395
    check-cast v7, Lorg/json/JSONObject;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-static {v7}, Lcom/facebook/applinks/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 396
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v9, v7, Lorg/json/JSONArray;

    if-eqz v9, :cond_6

    move-object v8, v7

    .line 397
    check-cast v8, Lorg/json/JSONArray;

    .line 398
    .local v8, "valueArr":Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 399
    new-array v9, v10, [Ljava/lang/String;

    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_1
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 402
    .local v4, "firstNode":Ljava/lang/Object;
    instance-of v9, v4, Lorg/json/JSONObject;

    if-eqz v9, :cond_3

    .line 403
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    new-array v2, v9, [Landroid/os/Bundle;

    .line 404
    .local v2, "bundles":[Landroid/os/Bundle;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 405
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/applinks/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v9

    aput-object v9, v2, v5

    .line 404
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 407
    :cond_2
    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    .line 408
    .end local v2    # "bundles":[Landroid/os/Bundle;
    .end local v5    # "i":I
    :cond_3
    instance-of v9, v4, Lorg/json/JSONArray;

    if-eqz v9, :cond_4

    .line 410
    new-instance v9, Lcom/facebook/FacebookException;

    const-string v10, "Nested arrays are not supported."

    invoke-direct {v9, v10}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 412
    :cond_4
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    new-array v0, v9, [Ljava/lang/String;

    .line 413
    .local v0, "arrValues":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_5

    .line 414
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v5

    .line 413
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 416
    :cond_5
    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 420
    .end local v0    # "arrValues":[Ljava/lang/String;
    .end local v4    # "firstNode":Ljava/lang/Object;
    .end local v5    # "i":I
    .end local v8    # "valueArr":Lorg/json/JSONArray;
    :cond_6
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 423
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_7
    return-object v1
.end method


# virtual methods
.method public getArgumentBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPromotionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->promotionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getRefererData()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string v1, "referer_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 473
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTargetUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    return-object v0
.end method
