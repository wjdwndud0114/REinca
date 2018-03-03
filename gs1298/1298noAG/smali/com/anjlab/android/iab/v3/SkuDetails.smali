.class public Lcom/anjlab/android/iab/v3/SkuDetails;
.super Ljava/lang/Object;
.source "SkuDetails.java"


# instance fields
.field public final currency:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final isSubscription:Z

.field public final priceText:Ljava/lang/String;

.field public final priceValue:Ljava/lang/Double;

.field public final productId:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "source"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "responseType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 40
    const-string v0, "inapp"

    .line 41
    :cond_0
    const-string v1, "productId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->productId:Ljava/lang/String;

    .line 42
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->title:Ljava/lang/String;

    .line 43
    const-string v1, "description"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->description:Ljava/lang/String;

    .line 44
    const-string v1, "subs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->isSubscription:Z

    .line 45
    const-string v1, "price_currency_code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->currency:Ljava/lang/String;

    .line 46
    const-string v1, "price_amount_micros"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->priceValue:Ljava/lang/Double;

    .line 47
    const-string v1, "price"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->priceText:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    const-string v0, "%s: %s(%s) %f in %s (%s)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->productId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->description:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->priceValue:Ljava/lang/Double;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->currency:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/anjlab/android/iab/v3/SkuDetails;->priceText:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
