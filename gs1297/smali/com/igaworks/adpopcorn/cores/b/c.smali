.class public Lcom/igaworks/adpopcorn/cores/b/c;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field public static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/igaworks/adpopcorn/cores/b/c;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/igaworks/adpopcorn/cores/b/c;->c:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 13

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const/4 v0, 0x0

    const-string v2, ""

    const-string v1, "IsTest"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "IsTest"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/igaworks/adpopcorn/cores/d;->a:Z

    :cond_2
    const-string v1, "Result"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "Result"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_3
    const-string v1, "ResultCode"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ResultCode"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/igaworks/adpopcorn/cores/b/c;->c:I

    :cond_4
    const/4 v3, 0x0

    if-eqz v0, :cond_36

    const-string v0, "TotalPageIdx"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "TotalPageIdx"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/igaworks/adpopcorn/cores/b/c;->a:I

    :cond_5
    const-string v0, "FilteredKey"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "FilteredKey"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igaworks/adpopcorn/cores/b/c;->b:Ljava/lang/String;

    :cond_6
    const-string v0, "ResetSgn"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "ResetSgn"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/igaworks/adpopcorn/cores/common/h;->a(Landroid/content/Context;)V

    :cond_7
    const/4 v0, 0x0

    const-string v1, "ScheduledCampaigns"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "ScheduledCampaigns"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "ScheduledCampaigns"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_9

    new-instance v7, Lorg/json/JSONArray;

    const-string v1, "ScheduledCampaigns"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_9

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    const/4 v1, 0x0

    move v12, v1

    move v1, v3

    move v3, v12

    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v3, v4, :cond_1e

    move v3, v1

    :cond_9
    const-string v1, "Campaigns"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "Campaigns"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "Campaigns"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_35

    new-instance v7, Lorg/json/JSONArray;

    const-string v1, "Campaigns"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_35

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_a
    const/4 v1, 0x0

    move v5, v1

    move v1, v3

    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v5, v3, :cond_0

    new-instance v6, Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-direct {v6}, Lcom/igaworks/adpopcorn/cores/model/d;-><init>()V

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v3, "Auth"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "Auth"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "Auth"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/igaworks/adpopcorn/cores/model/d;->a(Ljava/lang/String;)V

    :cond_b
    const-string v3, "Desc"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "Desc"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "Desc"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/igaworks/adpopcorn/cores/model/d;->b(Ljava/lang/String;)V

    :cond_c
    const-string v3, "IconImgURL"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "IconImgURL"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "IconImgURL"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/igaworks/adpopcorn/cores/model/d;->c(Ljava/lang/String;)V

    :cond_d
    const-string v3, "IsChoiceOffer"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "IsChoiceOffer"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "IsChoiceOffer"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v6, v3}, Lcom/igaworks/adpopcorn/cores/model/d;->b(Z)V

    :cond_e
    const-string v3, "Key"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "Key"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "Key"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/igaworks/adpopcorn/cores/model/d;->d(Ljava/lang/String;)V

    :cond_f
    const-string v3, "PackageName"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "PackageName"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v2, "PackageName"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/igaworks/adpopcorn/cores/model/d;->e(Ljava/lang/String;)V

    :cond_10
    move-object v4, v2

    const-string v2, "PartiTypeCode"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "PartiTypeCode"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v1, "PartiTypeCode"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/igaworks/adpopcorn/cores/model/d;->a(I)V

    :cond_11
    move v3, v1

    const-string v1, "BadgeTypeCode"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "BadgeTypeCode"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "BadgeTypeCode"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/igaworks/adpopcorn/cores/model/d;->b(I)V

    :cond_12
    const-string v1, "IsOverseaOffer"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "IsOverseaOffer"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "IsOverseaOffer"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v6, v1}, Lcom/igaworks/adpopcorn/cores/model/d;->d(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :cond_13
    const/4 v1, 0x1

    :try_start_1
    const-string v2, "TargetPackageName"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "TargetPackageName"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "TargetPackageName"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_14

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v2, v11, :cond_2e

    if-eqz v10, :cond_14

    array-length v2, v10

    if-lez v2, :cond_14

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v12, v1

    move v1, v2

    move v2, v12

    :goto_4
    array-length v9, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    if-lt v2, v9, :cond_2f

    :cond_14
    :goto_5
    if-eqz v1, :cond_15

    :try_start_2
    const-string v2, "DetargetPackageName"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "DetargetPackageName"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "DetargetPackageName"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_15

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v2, v11, :cond_31

    if-eqz v10, :cond_15

    array-length v2, v10

    if-lez v2, :cond_15

    const/4 v2, 0x0

    :goto_7
    array-length v9, v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    if-lt v2, v9, :cond_32

    :cond_15
    :goto_8
    :try_start_3
    const-string v2, "Reward"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "Reward"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "Reward"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/igaworks/adpopcorn/cores/model/d;->j(Ljava/lang/String;)V

    :cond_16
    const-string v2, "Title"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "Title"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "Title"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/igaworks/adpopcorn/cores/model/d;->f(Ljava/lang/String;)V

    :cond_17
    const-string v2, "IsSpecialOffer"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "IsSpecialOffer"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "IsSpecialOffer"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v6, v2}, Lcom/igaworks/adpopcorn/cores/model/d;->a(Z)V

    :cond_18
    const-string v2, "SpecialOfferImgURL"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "SpecialOfferImgURL"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "SpecialOfferImgURL"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/igaworks/adpopcorn/cores/model/d;->g(Ljava/lang/String;)V

    :cond_19
    const-string v2, "RewardCondition"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "RewardCondition"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "RewardCondition"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/igaworks/adpopcorn/cores/model/d;->i(Ljava/lang/String;)V

    :cond_1a
    const-string v2, "UseRedirectURL"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "UseRedirectURL"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "UseRedirectURL"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v6, v2}, Lcom/igaworks/adpopcorn/cores/model/d;->c(Z)V

    :cond_1b
    const-string v2, "RedirectURL"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "RedirectURL"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "RedirectURL"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/igaworks/adpopcorn/cores/model/d;->h(Ljava/lang/String;)V

    :cond_1c
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/igaworks/adpopcorn/cores/model/d;->e(Z)V

    const/16 v2, 0xa

    if-ne v3, v2, :cond_34

    invoke-static {p0, v4}, Lcom/igaworks/adpopcorn/cores/b/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    :goto_9
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v2, v4

    move v1, v3

    goto/16 :goto_2

    :cond_1e
    new-instance v8, Lcom/igaworks/adpopcorn/cores/model/d;

    invoke-direct {v8}, Lcom/igaworks/adpopcorn/cores/model/d;-><init>()V

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v4, "IconImgURL"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "IconImgURL"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "IconImgURL"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/igaworks/adpopcorn/cores/model/d;->c(Ljava/lang/String;)V

    :cond_1f
    const-string v4, "Key"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v4, "Key"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20

    const-string v4, "Key"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/igaworks/adpopcorn/cores/model/d;->d(Ljava/lang/String;)V

    :cond_20
    const-string v4, "PackageName"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "PackageName"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    const-string v2, "PackageName"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/igaworks/adpopcorn/cores/model/d;->e(Ljava/lang/String;)V

    :cond_21
    move-object v4, v2

    const-string v2, "PartiTypeCode"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "PartiTypeCode"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v1, "PartiTypeCode"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/igaworks/adpopcorn/cores/model/d;->a(I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :cond_22
    const/4 v2, 0x1

    :try_start_4
    const-string v5, "TargetPackageName"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    const-string v5, "TargetPackageName"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_23

    const-string v5, "TargetPackageName"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_23

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_23

    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_23

    array-length v5, v10

    if-lez v5, :cond_23

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v12, v2

    move v2, v5

    move v5, v12

    :goto_a
    array-length v11, v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    if-lt v5, v11, :cond_2a

    :cond_23
    :goto_b
    if-eqz v2, :cond_24

    :try_start_5
    const-string v5, "DetargetPackageName"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    const-string v5, "DetargetPackageName"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_24

    const-string v5, "DetargetPackageName"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_24

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_24

    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_24

    array-length v5, v10

    if-lez v5, :cond_24

    const/4 v5, 0x0

    :goto_c
    array-length v11, v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    if-lt v5, v11, :cond_2c

    :cond_24
    :goto_d
    :try_start_6
    const-string v5, "Reward"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    const-string v5, "Reward"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_25

    const-string v5, "Reward"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/igaworks/adpopcorn/cores/model/d;->j(Ljava/lang/String;)V

    :cond_25
    const-string v5, "Title"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    const-string v5, "Title"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_26

    const-string v5, "Title"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/igaworks/adpopcorn/cores/model/d;->f(Ljava/lang/String;)V

    :cond_26
    const-string v5, "ScheduleTime"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    const-string v5, "ScheduleTime"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_27

    const-string v5, "ScheduleTime"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/igaworks/adpopcorn/cores/model/d;->k(Ljava/lang/String;)V

    :cond_27
    const-string v5, "ScheduleTypeCode"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    const-string v5, "ScheduleTypeCode"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_28

    const-string v5, "ScheduleTypeCode"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v8, v5}, Lcom/igaworks/adpopcorn/cores/model/d;->c(I)V

    :cond_28
    const/4 v5, 0x1

    invoke-virtual {v8, v5}, Lcom/igaworks/adpopcorn/cores/model/d;->e(Z)V

    if-eqz v2, :cond_29

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :cond_29
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v4

    goto/16 :goto_1

    :cond_2a
    :try_start_7
    aget-object v11, v10, v5

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    :try_start_8
    aget-object v11, v10, v5

    if-eqz v11, :cond_2b

    aget-object v11, v10, v5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2b

    aget-object v2, v10, v5

    invoke-static {p0, v2}, Lcom/igaworks/adpopcorn/cores/b/c;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4

    move-result v2

    if-nez v2, :cond_23

    :cond_2b
    :goto_e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_e

    :cond_2c
    :try_start_9
    aget-object v11, v10, v5

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4

    :try_start_a
    aget-object v11, v10, v5

    if-eqz v11, :cond_2d

    aget-object v11, v10, v5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2d

    aget-object v11, v10, v5

    invoke-static {p0, v11}, Lcom/igaworks/adpopcorn/cores/b/c;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_4

    move-result v11

    if-eqz v11, :cond_2d

    const/4 v2, 0x0

    goto/16 :goto_d

    :catch_1
    move-exception v2

    const/4 v2, 0x1

    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_c

    :cond_2e
    :try_start_b
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_2f
    aget-object v9, v10, v2

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_4

    :try_start_c
    aget-object v9, v10, v2

    if-eqz v9, :cond_30

    aget-object v9, v10, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_30

    aget-object v1, v10, v2

    invoke-static {p0, v1}, Lcom/igaworks/adpopcorn/cores/b/c;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_4

    move-result v1

    if-nez v1, :cond_14

    :cond_30
    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :catch_2
    move-exception v1

    const/4 v1, 0x0

    goto :goto_f

    :cond_31
    :try_start_d
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_32
    aget-object v9, v10, v2

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_4

    :try_start_e
    aget-object v9, v10, v2

    if-eqz v9, :cond_33

    aget-object v9, v10, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_33

    aget-object v9, v10, v2

    invoke-static {p0, v9}, Lcom/igaworks/adpopcorn/cores/b/c;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_4

    move-result v9

    if-eqz v9, :cond_33

    const/4 v1, 0x0

    goto/16 :goto_8

    :catch_3
    move-exception v1

    const/4 v1, 0x1

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_34
    if-eqz v1, :cond_1d

    :try_start_f
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_9

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_35
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_36
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_6
    move-exception v2

    goto/16 :goto_8

    :catch_7
    move-exception v2

    goto/16 :goto_5

    :catch_8
    move-exception v5

    goto/16 :goto_d

    :catch_9
    move-exception v5

    goto/16 :goto_b
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
