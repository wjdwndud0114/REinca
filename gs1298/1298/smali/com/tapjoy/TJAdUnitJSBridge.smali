.class public Lcom/tapjoy/TJAdUnitJSBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJAdUnitJSBridge$a;,
        Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;
    }
.end annotation


# instance fields
.field private a:Lcom/tapjoy/TJWebViewJSInterface;

.field public allowRedirect:Z

.field private b:Lcom/tapjoy/TJAdUnitJSBridge;

.field private c:Landroid/content/Context;

.field public closeRequested:Z

.field public customClose:Z

.field private d:Lcom/tapjoy/TJAdUnitActivity;

.field public didLaunchOtherActivity:Z

.field private e:Lcom/tapjoy/TJAdUnit;

.field private f:Landroid/webkit/WebView;

.field private g:Landroid/app/ProgressDialog;

.field private h:Landroid/location/LocationManager;

.field private i:Landroid/location/LocationListener;

.field private j:Landroid/view/View;

.field private k:Z

.field private l:Lcom/moat/analytics/mobile/tjy/ReactiveVideoTracker;

.field private m:Ljava/util/HashMap;

.field private n:Landroid/os/Handler;

.field public otherActivityCallbackID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "w"    # Landroid/webkit/WebView;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->j:Landroid/view/View;

    .line 78
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->didLaunchOtherActivity:Z

    .line 79
    iput-boolean v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    .line 80
    iput-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->otherActivityCallbackID:Ljava/lang/String;

    .line 81
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->customClose:Z

    .line 82
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested:Z

    .line 102
    const-string v0, "TJAdUnitJSBridge"

    const-string v1, "creating AdUnit/JS Bridge"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->c:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->f:Landroid/webkit/WebView;

    .line 105
    iput-object p0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    .line 107
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->f:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 108
    const-string v0, "TJAdUnitJSBridge"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "Cannot create AdUnitJSBridge -- webview is NULL"

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 141
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v0, Lcom/tapjoy/TJWebViewJSInterface;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->f:Landroid/webkit/WebView;

    new-instance v2, Lcom/tapjoy/TJAdUnitJSBridge$1;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJAdUnitJSBridge$1;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;)V

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TJWebViewJSInterface;-><init>(Landroid/webkit/WebView;Lcom/tapjoy/TJWebViewJSInterfaceListener;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJWebViewJSInterface;

    .line 139
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->f:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJWebViewJSInterface;

    const-string v2, "AndroidJavascriptInterface"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iput-boolean v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->k:Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/TJAdUnit;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "tjAdUnit"    # Lcom/tapjoy/TJAdUnit;

    .prologue
    .line 91
    invoke-virtual {p2}, Lcom/tapjoy/TJAdUnit;->getWebView()Lcom/tapjoy/mraid/view/MraidView;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 92
    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJAdUnitJSBridge;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->j:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/TJAdUnitJSBridge;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJAdUnitJSBridge;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->f:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic f(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->h:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic g(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/location/LocationListener;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->i:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic h(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJAdUnitActivity;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->d:Lcom/tapjoy/TJAdUnitActivity;

    return-object v0
.end method

.method static synthetic i(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/moat/analytics/mobile/tjy/ReactiveVideoTracker;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->l:Lcom/moat/analytics/mobile/tjy/ReactiveVideoTracker;

    return-object v0
.end method


# virtual methods
.method public alert(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 9
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 150
    const-string v0, "TJAdUnitJSBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "alert_method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v2, ""

    .line 152
    const-string v4, ""

    .line 153
    const/4 v0, 0x0

    .line 157
    :try_start_0
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    const-string v1, "message"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 159
    :try_start_1
    const-string v4, "buttons"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 167
    :goto_0
    iget-object v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->d:Lcom/tapjoy/TJAdUnitActivity;

    .line 168
    if-eqz v4, :cond_3

    .line 169
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 171
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    new-array v0, v7, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v3

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    :goto_1
    return-void

    .line 161
    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v1, v4

    move-object v4, v8

    .line 163
    :goto_2
    new-array v5, v7, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v5, v3

    invoke-virtual {p0, p2, v5}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_0

    .line 175
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 177
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 180
    packed-switch v2, :pswitch_data_0

    .line 189
    const/4 v0, -0x1

    move v4, v0

    .line 194
    :goto_4
    :try_start_2
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 200
    :goto_5
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v7, Lcom/tapjoy/TJAdUnitJSBridge$5;

    invoke-direct {v7, p0, p2}, Lcom/tapjoy/TJAdUnitJSBridge$5;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V

    invoke-virtual {v5, v4, v0, v7}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 177
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 182
    :pswitch_0
    const/4 v0, -0x2

    move v4, v0

    .line 183
    goto :goto_4

    .line 185
    :pswitch_1
    const/4 v0, -0x3

    move v4, v0

    .line 186
    goto :goto_4

    .line 196
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 225
    :cond_2
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 226
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 227
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 230
    :cond_3
    const-string v0, "TJAdUnitJSBridge"

    const-string v1, "Cannot alert -- TJAdUnitActivity is null"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 161
    :catch_2
    move-exception v4

    goto :goto_2

    .line 180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public attachVolumeListener(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1293
    :try_start_0
    const-string v0, "attach"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1294
    const-string v1, "interval"

    const/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 1295
    if-lez v1, :cond_0

    .line 1296
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v2, v0, v1}, Lcom/tapjoy/TJAdUnit;->attachVolumeListener(ZI)V

    .line 1297
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1307
    :goto_0
    return-void

    .line 1299
    :cond_0
    const-string v0, "TJAdUnitJSBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid `interval` value passed to attachVolumeListener(): interval="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1302
    :catch_0
    move-exception v0

    .line 1303
    const-string v1, "TJAdUnitJSBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "attachVolumeListener exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1305
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public cacheAsset(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 9
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 618
    const-string v2, ""

    .line 619
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 623
    :try_start_0
    const-string v3, "url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 632
    .local v0, "assetURL":Ljava/lang/String;
    :try_start_1
    const-string v3, "offerId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 637
    :goto_0
    :try_start_2
    const-string v3, "timeToLive"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 641
    :goto_1
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 642
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v0, v2, v6, v7}, Lcom/tapjoy/TapjoyCache;->cacheAssetFromURL(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    .end local v0    # "assetURL":Ljava/lang/String;
    :goto_2
    return-void

    .line 625
    :catch_0
    move-exception v1

    const-string v1, "TJAdUnitJSBridge"

    const-string v2, "Unable to cache video. Invalid parameters."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v8

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 644
    .restart local v0    # "assetURL":Ljava/lang/String;
    :cond_0
    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v8

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method public cachePathForURL(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 658
    :try_start_0
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 664
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 665
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tapjoy/TapjoyCache;->getPathOfCachedURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 669
    .end local v0    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 660
    :catch_0
    move-exception v1

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 667
    .restart local v0    # "url":Ljava/lang/String;
    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public checkAppInstalled(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 241
    const-string v1, ""

    .line 245
    :try_start_0
    const-string v0, "bundle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 253
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 260
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    new-array v0, v4, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v3

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    :goto_1
    return-void

    .line 249
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 269
    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v3

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public clearCache(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 534
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCache;->clearTapjoyCache()V

    .line 536
    new-array v0, v1, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    :goto_0
    return-void

    .line 538
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public clearLoggingLevel(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 1281
    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyAppSettings;->clearLoggingLevel()V

    .line 1282
    return-void
.end method

.method public clearVideo(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 842
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    new-instance v1, Lcom/tapjoy/TJAdUnitJSBridge$10;

    invoke-direct {v1, p0, p2}, Lcom/tapjoy/TJAdUnitJSBridge$10;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnit;->clearVideo(Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V

    .line 850
    :cond_0
    return-void
.end method

.method public closeRequested(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "shouldForceClose"    # Ljava/lang/Boolean;

    .prologue
    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested:Z

    .line 320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 321
    const-string v1, "forceClose"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v1, "closeRequested"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V

    .line 324
    return-void
.end method

.method public contentReady(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 689
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->fireContentReady()V

    .line 691
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    :goto_0
    return-void

    .line 693
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 368
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->i:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->h:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->h:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->i:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 370
    iput-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->h:Landroid/location/LocationManager;

    .line 371
    iput-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->i:Landroid/location/LocationListener;

    .line 373
    :cond_0
    return-void
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 1446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->k:Z

    .line 1447
    return-void
.end method

.method public dismiss(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 381
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->d:Lcom/tapjoy/TJAdUnitActivity;

    .line 382
    if-eqz v0, :cond_0

    .line 383
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitActivity;->finish()V

    .line 389
    :goto_0
    return-void

    .line 386
    :cond_0
    const-string v0, "TJAdUnitJSBridge"

    const-string v1, "Cannot dismiss -- TJAdUnitActivity is null"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public display()V
    .locals 2

    .prologue
    .line 395
    const-string v0, "display"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    return-void
.end method

.method public displayRichMedia(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 404
    .line 405
    const/4 v1, 0x0

    .line 409
    :try_start_0
    const-string v0, "inline"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v2, v0

    .line 415
    :goto_0
    :try_start_1
    const-string v0, "html"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 423
    :goto_1
    if-nez v0, :cond_1

    .line 425
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v3

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v0

    move v2, v3

    goto :goto_0

    .line 419
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 430
    :cond_1
    if-eqz v2, :cond_2

    .line 433
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/TJAdUnitJSBridge$6;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TJAdUnitJSBridge$6;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 486
    :cond_2
    new-instance v1, Lcom/tapjoy/TJPlacementData;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p2}, Lcom/tapjoy/TJPlacementData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->d:Lcom/tapjoy/TJAdUnitActivity;

    .line 489
    if-eqz v0, :cond_0

    .line 490
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tapjoy/TJAdUnitActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 491
    const-string v3, "placement_data"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 492
    const/16 v1, 0x147

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/TJAdUnitActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method

.method public displayStoreURL(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 507
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TJAdUnitJSBridge;->displayURL(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method public displayURL(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 514
    :try_start_0
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->didLaunchOtherActivity:Z

    .line 518
    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->otherActivityCallbackID:Ljava/lang/String;

    .line 519
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 520
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :goto_0
    return-void

    .line 522
    :catch_0
    move-exception v0

    .line 524
    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public displayVideo(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 796
    :try_start_0
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 801
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    new-instance v2, Lcom/tapjoy/TJAdUnitJSBridge$9;

    invoke-direct {v2, p0, p2}, Lcom/tapjoy/TJAdUnitJSBridge$9;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/tapjoy/TJAdUnit;->loadVideoUrl(Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V

    .line 815
    .end local v0    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 808
    .restart local v0    # "url":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 811
    .end local v0    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 812
    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 813
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public flushMessageQueue()V
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJWebViewJSInterface;

    invoke-virtual {v0}, Lcom/tapjoy/TJWebViewJSInterface;->flushMessageQueue()V

    .line 1141
    return-void
.end method

.method public getCachedAssets(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 677
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 678
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyCache;->cachedAssetsToJSON()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 682
    :goto_0
    return-void

    .line 680
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, ""

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getInstalledAppData(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 11
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 278
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 279
    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 281
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 283
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 284
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eq v4, v10, :cond_0

    .line 288
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 289
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 291
    const-string v6, "packageName"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v6, "targetSdk"

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const/16 v0, 0x1000

    :try_start_0
    invoke-virtual {v1, v5, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 297
    const-string v5, "installTime"

    new-instance v6, Ljava/util/Date;

    iget-wide v8, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v5, "updateTime"

    new-instance v6, Ljava/util/Date;

    iget-wide v8, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v5, "versionName"

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v5, "versionCode"

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 306
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 310
    :cond_1
    new-array v0, v10, [Ljava/lang/Object;

    aput-object v2, v0, v7

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    return-void

    .line 303
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getLocation(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 860
    const/high16 v4, 0x42c80000    # 100.0f

    .line 866
    :try_start_0
    const-string v0, "gpsAccuracy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 873
    :goto_0
    :try_start_1
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    move v2, v0

    .line 880
    :goto_1
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->c:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->h:Landroid/location/LocationManager;

    .line 881
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 882
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->h:Landroid/location/LocationManager;

    invoke-virtual {v1, v0, v6}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 884
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->i:Landroid/location/LocationListener;

    if-nez v0, :cond_0

    .line 886
    new-instance v0, Lcom/tapjoy/TJAdUnitJSBridge$11;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJAdUnitJSBridge$11;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->i:Landroid/location/LocationListener;

    .line 923
    :cond_0
    if-eqz v2, :cond_3

    .line 925
    if-eqz v1, :cond_2

    .line 927
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->h:Landroid/location/LocationManager;

    const-wide/16 v2, 0x0

    iget-object v5, p0, Lcom/tapjoy/TJAdUnitJSBridge;->i:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 938
    :cond_1
    :goto_2
    new-array v0, v7, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v6

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 940
    :goto_3
    return-void

    .line 877
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v6

    goto :goto_1

    .line 930
    :cond_2
    new-array v0, v7, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v6

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 936
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->h:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->i:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->h:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->i:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getVolume(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 330
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitJSBridge;->getVolumeArgs()Ljava/util/HashMap;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getVolumeArgs()Ljava/util/HashMap;
    .locals 5

    .prologue
    .line 347
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    if-nez v0, :cond_0

    .line 348
    const-string v0, "TJAdUnitJSBridge"

    const-string v1, "No ad unit provided"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const/4 v0, 0x0

    .line 360
    :goto_0
    return-object v0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getVolume()Ljava/lang/String;

    move-result-object v1

    .line 353
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->isMuted()Z

    move-result v2

    .line 354
    const-string v0, "TJAdUnitJSBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getVolumeArgs: volume="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; isMuted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 357
    const-string v3, "currentVolume"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v1, "isMuted"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public initMoatVideoTracker(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1316
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->d:Lcom/tapjoy/TJAdUnitActivity;

    .line 1317
    if-nez v0, :cond_0

    .line 1318
    const-string v0, "TJAdUnitJSBridge"

    const-string v1, "Error from initMoatVideoTracker -- TJAdUnitActivity is null"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1334
    :goto_0
    return-void

    .line 1324
    :cond_0
    :try_start_0
    const-string v1, "partnerCode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1325
    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/MoatFactory;->create(Landroid/app/Activity;)Lcom/moat/analytics/mobile/tjy/MoatFactory;

    move-result-object v0

    .line 1326
    new-instance v2, Lcom/moat/analytics/mobile/tjy/ReactiveVideoTrackerPlugin;

    invoke-direct {v2, v1}, Lcom/moat/analytics/mobile/tjy/ReactiveVideoTrackerPlugin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/moat/analytics/mobile/tjy/MoatFactory;->createCustomTracker(Lcom/moat/analytics/mobile/tjy/ac;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/tjy/ReactiveVideoTracker;

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->l:Lcom/moat/analytics/mobile/tjy/ReactiveVideoTracker;

    .line 2337
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->m:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 2338
    const-string v0, "TJAdUnitJSBridge"

    const-string v1, "Initializing MOAT tracking events map"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->m:Ljava/util/HashMap;

    .line 2341
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->m:Ljava/util/HashMap;

    const-string v1, "firstQuartile"

    sget-object v2, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_FIRST_QUARTILE:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2342
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->m:Ljava/util/HashMap;

    const-string v1, "midpoint"

    sget-object v2, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_MID_POINT:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2343
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->m:Ljava/util/HashMap;

    const-string v1, "thirdQuartile"

    sget-object v2, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_THIRD_QUARTILE:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2344
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->m:Ljava/util/HashMap;

    const-string v1, "complete"

    sget-object v2, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2345
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->m:Ljava/util/HashMap;

    const-string v1, "paused"

    sget-object v2, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_PAUSED:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2346
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->m:Ljava/util/HashMap;

    const-string v1, "playing"

    sget-object v2, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_PLAYING:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2347
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->m:Ljava/util/HashMap;

    const-string v1, "start"

    sget-object v2, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_START:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2348
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->m:Ljava/util/HashMap;

    const-string v1, "stopped"

    sget-object v2, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2349
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->m:Ljava/util/HashMap;

    const-string v1, "skipped"

    sget-object v2, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_SKIPPED:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2350
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->m:Ljava/util/HashMap;

    const-string v1, "volumeChanged"

    sget-object v2, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_VOLUME_CHANGE:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2351
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->m:Ljava/util/HashMap;

    const-string v1, "enterFullScreen"

    sget-object v2, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_ENTER_FULLSCREEN:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2352
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->m:Ljava/util/HashMap;

    const-string v1, "exitFullScreen"

    sget-object v2, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_EXIT_FULLSCREEN:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->n:Landroid/os/Handler;

    .line 1329
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1330
    :catch_0
    move-exception v0

    .line 1331
    const-string v1, "TJAdUnitJSBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initMoatVideoTracker exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 1099
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJWebViewJSInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/tapjoy/TJWebViewJSInterface;->callback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    return-void
.end method

.method public varargs invokeJSAdunitMethod(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1086
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1087
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJWebViewJSInterface;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/tapjoy/TJWebViewJSInterface;->callback(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    return-void
.end method

.method public invokeJSCallback(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 1132
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJWebViewJSInterface;

    const-string v1, ""

    invoke-virtual {v0, p2, v1, p1}, Lcom/tapjoy/TJWebViewJSInterface;->callback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    return-void
.end method

.method public varargs invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "callbackID"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .prologue
    .line 1113
    invoke-static {p1}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    const-string v0, "TJAdUnitJSBridge"

    const-string v1, "invokeJSCallback -- no callbackID provided"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    :goto_0
    return-void

    .line 1117
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1118
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->a:Lcom/tapjoy/TJWebViewJSInterface;

    const-string v2, ""

    invoke-virtual {v1, v0, v2, p1}, Lcom/tapjoy/TJWebViewJSInterface;->callback(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public log(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 951
    :try_start_0
    const-string v0, "TJAdUnitJSBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Logging message="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    :goto_0
    return-void

    .line 954
    :catch_0
    move-exception v0

    .line 956
    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v3

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 957
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public nativeEval(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 991
    new-instance v0, Lcom/tapjoy/TJAdUnitJSBridge$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/tapjoy/TJAdUnitJSBridge$12;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1014
    return-void
.end method

.method public onVideoCompletion()V
    .locals 3

    .prologue
    .line 1564
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1565
    const-string v1, "videoEventName"

    const-string v2, "videoComplete"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    const-string v1, "videoEvent"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V

    .line 1568
    return-void
.end method

.method public onVideoError(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 1579
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1580
    const-string v1, "videoEventName"

    const-string v2, "videoError"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    const-string v1, "videoEvent"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V

    .line 1583
    return-void
.end method

.method public onVideoInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "infoMessage"    # Ljava/lang/String;

    .prologue
    .line 1571
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1572
    const-string v1, "videoEventName"

    const-string v2, "videoInfo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    const-string v1, "info"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    const-string v1, "videoEvent"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V

    .line 1576
    return-void
.end method

.method public onVideoPaused(I)V
    .locals 3
    .param p1, "currentTime"    # I

    .prologue
    .line 1556
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1557
    const-string v1, "videoEventName"

    const-string v2, "videoPause"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    const-string v1, "currentTime"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    const-string v1, "videoEvent"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V

    .line 1561
    return-void
.end method

.method public onVideoProgress(I)V
    .locals 3
    .param p1, "currentTime"    # I

    .prologue
    .line 1548
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1549
    const-string v1, "videoEventName"

    const-string v2, "videoProgress"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    const-string v1, "currentTime"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    const-string v1, "videoEvent"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V

    .line 1553
    return-void
.end method

.method public onVideoReady(III)V
    .locals 3
    .param p1, "videoDuration"    # I
    .param p2, "videoWidth"    # I
    .param p3, "videoHeight"    # I

    .prologue
    .line 1530
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1531
    const-string v1, "videoEventName"

    const-string v2, "videoReady"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    const-string v1, "videoDuration"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    const-string v1, "videoWidth"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    const-string v1, "videoHeight"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    const-string v1, "videoEvent"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V

    .line 1537
    return-void
.end method

.method public onVideoStarted(I)V
    .locals 3
    .param p1, "currentTime"    # I

    .prologue
    .line 1540
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1541
    const-string v1, "videoEventName"

    const-string v2, "videoStart"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    const-string v1, "currentTime"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    const-string v1, "videoEvent"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V

    .line 1545
    return-void
.end method

.method public onVolumeChanged()V
    .locals 2

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitJSBridge;->getVolumeArgs()Ljava/util/HashMap;

    move-result-object v0

    .line 343
    const-string v1, "volumeChanged"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSAdunitMethod(Ljava/lang/String;Ljava/util/Map;)V

    .line 344
    return-void
.end method

.method public openApp(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 970
    :try_start_0
    const-string v0, "bundle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 971
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 972
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 973
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    :goto_0
    return-void

    .line 975
    :catch_0
    move-exception v0

    .line 977
    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v3

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 978
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public pauseVideo(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 832
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_0

    .line 833
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v2}, Lcom/tapjoy/TJAdUnit;->pauseVideo()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    :cond_0
    return-void
.end method

.method public playVideo(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 822
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_0

    .line 823
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v2}, Lcom/tapjoy/TJAdUnit;->playVideo()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 825
    :cond_0
    return-void
.end method

.method public present(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1026
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1027
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1029
    const-string v1, "visible"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1033
    :try_start_1
    const-string v2, "transparent"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 1039
    :goto_0
    :try_start_2
    const-string v2, "customClose"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/tapjoy/TJAdUnitJSBridge;->customClose:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1044
    :goto_1
    :try_start_3
    new-instance v2, Lcom/tapjoy/TJAdUnitJSBridge$a;

    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->f:Landroid/webkit/WebView;

    invoke-direct {v2, p0, v3}, Lcom/tapjoy/TJAdUnitJSBridge$a;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Landroid/webkit/WebView;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Boolean;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lcom/tapjoy/TJAdUnitJSBridge$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1046
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1053
    :goto_2
    return-void

    .line 1048
    :catch_0
    move-exception v0

    .line 1050
    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v5

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1051
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method public removeAssetFromCache(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 597
    :try_start_0
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 603
    .local v0, "assetURL":Ljava/lang/String;
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 604
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tapjoy/TapjoyCache;->removeAssetFromCache(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    .end local v0    # "assetURL":Ljava/lang/String;
    :goto_0
    return-void

    .line 599
    :catch_0
    move-exception v1

    const-string v1, "TJAdUnitJSBridge"

    const-string v2, "Unable to cache video. Invalid parameters."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v3

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 606
    .restart local v0    # "assetURL":Ljava/lang/String;
    :cond_0
    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v3

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setAdUnitActivity(Lcom/tapjoy/TJAdUnitActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/tapjoy/TJAdUnitActivity;

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->d:Lcom/tapjoy/TJAdUnitActivity;

    .line 1169
    return-void
.end method

.method public setAllowRedirect(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1150
    .line 1154
    :try_start_0
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1158
    :goto_0
    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    .line 1160
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1161
    return-void

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public setBackgroundColor(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 738
    :try_start_0
    const-string v1, "backgroundColor"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 745
    .local v0, "backgroundHexColor":Ljava/lang/String;
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    if-eqz v1, :cond_0

    .line 746
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    new-instance v2, Lcom/tapjoy/TJAdUnitJSBridge$7;

    invoke-direct {v2, p0, p2}, Lcom/tapjoy/TJAdUnitJSBridge$7;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/tapjoy/TJAdUnit;->setBackgroundColor(Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V

    .line 755
    .end local v0    # "backgroundHexColor":Ljava/lang/String;
    :goto_0
    return-void

    .line 740
    :catch_0
    move-exception v1

    const-string v1, "TJAdUnitJSBridge"

    const-string v2, "Unable to set background color. Invalid parameters."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 753
    .restart local v0    # "backgroundHexColor":Ljava/lang/String;
    :cond_0
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setBackgroundWebViewContent(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 761
    const-string v0, "TJAdUnitJSBridge"

    const-string v1, "setBackgroundWebViewContent"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :try_start_0
    const-string v0, "backgroundContent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 773
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    if-eqz v1, :cond_0

    .line 774
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    new-instance v2, Lcom/tapjoy/TJAdUnitJSBridge$8;

    invoke-direct {v2, p0, p2}, Lcom/tapjoy/TJAdUnitJSBridge$8;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/tapjoy/TJAdUnit;->setBackgroundContent(Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V

    .line 783
    :goto_0
    return-void

    .line 768
    :catch_0
    move-exception v0

    const-string v0, "TJAdUnitJSBridge"

    const-string v1, "Unable to set background content. Invalid parameters."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 781
    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setCloseButtonVisible(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1215
    :try_start_0
    const-string v0, "visible"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1217
    new-instance v1, Lcom/tapjoy/TJAdUnitJSBridge$2;

    invoke-direct {v1, p0, v0}, Lcom/tapjoy/TJAdUnitJSBridge$2;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Z)V

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 1228
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    :goto_0
    return-void

    .line 1230
    :catch_0
    move-exception v0

    .line 1232
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1233
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setEventPreloadLimit(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 566
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 571
    :try_start_0
    const-string v0, "eventPreloadLimit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 580
    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->setCachedPlacementLimit(I)V

    .line 581
    new-array v0, v3, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    :goto_0
    return-void

    .line 575
    :catch_0
    move-exception v0

    const-string v0, "TJAdUnitJSBridge"

    const-string v1, "Unable to set Tapjoy cache\'s event preload limit. Invalid parameters."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    new-array v0, v3, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 583
    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setLoggingLevel(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1271
    :try_start_0
    const-string v0, "loggingLevel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1272
    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tapjoy/TapjoyAppSettings;->saveLoggingLevel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1278
    :goto_0
    return-void

    .line 1273
    :catch_0
    move-exception v0

    .line 1274
    const-string v1, "TJAdUnitJSBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setLoggingLevel exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, p2, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1276
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setOrientation(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 701
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    if-nez v0, :cond_0

    .line 702
    const-string v0, "TJAdUnitJSBridge"

    const-string v3, "No ad unit provided"

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 728
    :goto_0
    return-void

    .line 712
    :cond_0
    :try_start_0
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 714
    const-string v3, "landscape"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "landscapeLeft"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v0, v2

    .line 722
    :goto_1
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v3, v0}, Lcom/tapjoy/TJAdUnit;->setOrientation(I)V

    .line 724
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 726
    :catch_0
    move-exception v0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 716
    :cond_2
    :try_start_1
    const-string v3, "landscapeRight"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    .line 717
    const/16 v0, 0x8

    goto :goto_1

    :cond_3
    move v0, v1

    .line 719
    goto :goto_1
.end method

.method public setPrerenderLimit(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 550
    :try_start_0
    const-string v0, "prerenderLimit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 557
    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->setPreRenderedPlacementLimit(I)V

    .line 558
    new-array v0, v3, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    :goto_0
    return-void

    .line 552
    :catch_0
    move-exception v0

    const-string v0, "TJAdUnitJSBridge"

    const-string v1, "Unable to set Tapjoy placement pre-render limit. Invalid parameters."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    new-array v0, v3, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setSpinnerVisible(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1182
    :try_start_0
    const-string v3, "visible"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1183
    .local v2, "visible":Z
    const-string v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1184
    .local v1, "title":Ljava/lang/String;
    const-string v3, "message"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1186
    .local v0, "message":Ljava/lang/String;
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->d:Lcom/tapjoy/TJAdUnitActivity;

    .line 1187
    if-eqz v3, :cond_2

    .line 1188
    if-eqz v2, :cond_1

    .line 1189
    invoke-static {v3, v1, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->g:Landroid/app/ProgressDialog;

    .line 1195
    :cond_0
    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1204
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "visible":Z
    :goto_1
    return-void

    .line 1191
    .restart local v0    # "message":Ljava/lang/String;
    .restart local v1    # "title":Ljava/lang/String;
    .restart local v2    # "visible":Z
    :cond_1
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->g:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 1192
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1200
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "visible":Z
    :catch_0
    move-exception v3

    .line 1201
    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v4, v6

    invoke-virtual {p0, p2, v4}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1202
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1197
    .restart local v0    # "message":Ljava/lang/String;
    .restart local v1    # "title":Ljava/lang/String;
    .restart local v2    # "visible":Z
    :cond_2
    :try_start_1
    const-string v3, "TJAdUnitJSBridge"

    const-string v4, "Cannot setSpinnerVisible -- TJAdUnitActivity is null"

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    invoke-virtual {p0, p2, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public shouldClose(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1242
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge;->d:Lcom/tapjoy/TJAdUnitActivity;

    .line 1245
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1246
    const-string v0, "close"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1249
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1250
    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnitActivity;->finish()V

    .line 1253
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    :goto_0
    iput-boolean v4, p0, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested:Z

    .line 1266
    return-void

    .line 1254
    :catch_0
    move-exception v0

    .line 1255
    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-virtual {p0, p2, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1258
    if-eqz v1, :cond_1

    .line 1259
    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnitActivity;->finish()V

    .line 1262
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startMoatVideoTracker(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1365
    :try_start_0
    const-string v0, "videoLength"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1366
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1367
    const-string v0, "adIds"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1368
    if-eqz v3, :cond_0

    .line 1369
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 1370
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1371
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1372
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1390
    :catch_0
    move-exception v0

    .line 1391
    const-string v1, "TJAdUnitJSBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startMoatVideoTracker exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1394
    :goto_1
    return-void

    .line 1378
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->n:Landroid/os/Handler;

    new-instance v3, Lcom/tapjoy/TJAdUnitJSBridge$3;

    invoke-direct {v3, p0, v2, v1, p2}, Lcom/tapjoy/TJAdUnitJSBridge$3;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public triggerEvent(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_0

    .line 1064
    :try_start_0
    const-string v0, "eventName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1070
    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1071
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->fireOnVideoStart()V

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1066
    :catch_0
    move-exception v0

    const-string v0, "TJAdUnitJSBridge"

    const-string v1, "Unable to triggerEvent. No event name."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1072
    :cond_1
    const-string v1, "complete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1073
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->fireOnVideoComplete()V

    goto :goto_0

    .line 1074
    :cond_2
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->e:Lcom/tapjoy/TJAdUnit;

    const-string v1, "Error while trying to play video."

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnit;->fireOnVideoError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public triggerMoatVideoEvent(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1406
    :try_start_0
    const-string v0, "currentVideoTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1407
    const-string v0, "eventName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1409
    const/4 v0, 0x0

    .line 1410
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge;->m:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->m:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    .line 1414
    :cond_0
    if-nez v0, :cond_1

    .line 1415
    const-string v0, "TJAdUnitJSBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "eventName:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no matching MOAT event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1438
    :goto_0
    return-void

    .line 1420
    :cond_1
    const-string v2, "TJAdUnitJSBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sending MOAT event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    new-instance v2, Lcom/moat/analytics/mobile/tjy/MoatAdEvent;

    invoke-direct {v2, v0, v1}, Lcom/moat/analytics/mobile/tjy/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/tjy/MoatAdEventType;Ljava/lang/Integer;)V

    .line 1424
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge;->n:Landroid/os/Handler;

    new-instance v1, Lcom/tapjoy/TJAdUnitJSBridge$4;

    invoke-direct {v1, p0, v2}, Lcom/tapjoy/TJAdUnitJSBridge$4;-><init>(Lcom/tapjoy/TJAdUnitJSBridge;Lcom/moat/analytics/mobile/tjy/MoatAdEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1433
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1434
    :catch_0
    move-exception v0

    .line 1435
    const-string v1, "TJAdUnitJSBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "triggerMoatVideoEvent exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, p2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
