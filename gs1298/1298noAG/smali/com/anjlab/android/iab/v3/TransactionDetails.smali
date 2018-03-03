.class public Lcom/anjlab/android/iab/v3/TransactionDetails;
.super Ljava/lang/Object;
.source "TransactionDetails.java"


# instance fields
.field public final orderId:Ljava/lang/String;

.field public final productId:Ljava/lang/String;

.field public final purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

.field public final purchaseTime:Ljava/util/Date;

.field public final purchaseToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/anjlab/android/iab/v3/PurchaseInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/anjlab/android/iab/v3/PurchaseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/anjlab/android/iab/v3/PurchaseInfo;->responseData:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "source":Lorg/json/JSONObject;
    iput-object p1, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    .line 38
    const-string v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->productId:Ljava/lang/String;

    .line 39
    const-string v1, "orderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->orderId:Ljava/lang/String;

    .line 40
    const-string v1, "purchaseToken"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseToken:Ljava/lang/String;

    .line 41
    new-instance v1, Ljava/util/Date;

    const-string v2, "purchaseTime"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseTime:Ljava/util/Date;

    .line 42
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 46
    const-string v0, "%s purchased at %s(%s). Token: %s, Signature: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->productId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseTime:Ljava/util/Date;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->orderId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseToken:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/anjlab/android/iab/v3/TransactionDetails;->purchaseInfo:Lcom/anjlab/android/iab/v3/PurchaseInfo;

    iget-object v3, v3, Lcom/anjlab/android/iab/v3/PurchaseInfo;->signature:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
