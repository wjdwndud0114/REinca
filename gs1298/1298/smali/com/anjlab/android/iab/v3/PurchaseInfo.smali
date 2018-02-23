.class public Lcom/anjlab/android/iab/v3/PurchaseInfo;
.super Ljava/lang/Object;
.source "PurchaseInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anjlab/android/iab/v3/PurchaseInfo$ResponseData;,
        Lcom/anjlab/android/iab/v3/PurchaseInfo$PurchaseState;
    }
.end annotation


# instance fields
.field public final responseData:Ljava/lang/String;

.field public final signature:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->responseData:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->signature:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static getPurchaseState(I)Lcom/anjlab/android/iab/v3/PurchaseInfo$PurchaseState;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 57
    packed-switch p0, :pswitch_data_0

    .line 67
    sget-object v0, Lcom/anjlab/android/iab/v3/PurchaseInfo$PurchaseState;->Canceled:Lcom/anjlab/android/iab/v3/PurchaseInfo$PurchaseState;

    :goto_0
    return-object v0

    .line 59
    :pswitch_0
    sget-object v0, Lcom/anjlab/android/iab/v3/PurchaseInfo$PurchaseState;->PurchasedSuccessfully:Lcom/anjlab/android/iab/v3/PurchaseInfo$PurchaseState;

    goto :goto_0

    .line 61
    :pswitch_1
    sget-object v0, Lcom/anjlab/android/iab/v3/PurchaseInfo$PurchaseState;->Canceled:Lcom/anjlab/android/iab/v3/PurchaseInfo$PurchaseState;

    goto :goto_0

    .line 63
    :pswitch_2
    sget-object v0, Lcom/anjlab/android/iab/v3/PurchaseInfo$PurchaseState;->Refunded:Lcom/anjlab/android/iab/v3/PurchaseInfo$PurchaseState;

    goto :goto_0

    .line 65
    :pswitch_3
    sget-object v0, Lcom/anjlab/android/iab/v3/PurchaseInfo$PurchaseState;->SubscriptionExpired:Lcom/anjlab/android/iab/v3/PurchaseInfo$PurchaseState;

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public parseResponseData()Lcom/anjlab/android/iab/v3/PurchaseInfo$ResponseData;
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v3, 0x0

    .line 73
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->responseData:Ljava/lang/String;

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    .local v2, "json":Lorg/json/JSONObject;
    new-instance v0, Lcom/anjlab/android/iab/v3/PurchaseInfo$ResponseData;

    invoke-direct {v0, p0}, Lcom/anjlab/android/iab/v3/PurchaseInfo$ResponseData;-><init>(Lcom/anjlab/android/iab/v3/PurchaseInfo;)V

    .line 75
    .local v0, "data":Lcom/anjlab/android/iab/v3/PurchaseInfo$ResponseData;
    const-string v6, "orderId"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/anjlab/android/iab/v3/PurchaseInfo$ResponseData;->orderId:Ljava/lang/String;

    .line 76
    const-string v6, "packageName"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/anjlab/android/iab/v3/PurchaseInfo$ResponseData;->packageName:Ljava/lang/String;

    .line 77
    const-string v6, "productId"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/anjlab/android/iab/v3/PurchaseInfo$ResponseData;->productId:Ljava/lang/String;

    .line 78
    const-string v6, "purchaseTime"

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v6, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 79
    .local v4, "purchaseTimeMillis":J
    cmp-long v6, v4, v10

    if-eqz v6, :cond_0

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    :goto_0
    iput-object v6, v0, Lcom/anjlab/android/iab/v3/PurchaseInfo$ResponseData;->purchaseTime:Ljava/util/Date;

    .line 80
    const-string v6, "purchaseState"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/anjlab/android/iab/v3/PurchaseInfo;->getPurchaseState(I)Lcom/anjlab/android/iab/v3/PurchaseInfo$PurchaseState;

    move-result-object v6

    iput-object v6, v0, Lcom/anjlab/android/iab/v3/PurchaseInfo$ResponseData;->purchaseState:Lcom/anjlab/android/iab/v3/PurchaseInfo$PurchaseState;

    .line 81
    const-string v6, "developerPayload"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/anjlab/android/iab/v3/PurchaseInfo$ResponseData;->developerPayload:Ljava/lang/String;

    .line 82
    const-string v6, "purchaseToken"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/anjlab/android/iab/v3/PurchaseInfo$ResponseData;->purchaseToken:Ljava/lang/String;

    .line 83
    const-string v6, "autoRenewing"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/anjlab/android/iab/v3/PurchaseInfo$ResponseData;->autoRenewing:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0    # "data":Lcom/anjlab/android/iab/v3/PurchaseInfo$ResponseData;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v4    # "purchaseTimeMillis":J
    :goto_1
    return-object v0

    .restart local v0    # "data":Lcom/anjlab/android/iab/v3/PurchaseInfo$ResponseData;
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v4    # "purchaseTimeMillis":J
    :cond_0
    move-object v6, v3

    .line 79
    goto :goto_0

    .line 85
    .end local v0    # "data":Lcom/anjlab/android/iab/v3/PurchaseInfo$ResponseData;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v4    # "purchaseTimeMillis":J
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v3

    .line 87
    goto :goto_1
.end method
