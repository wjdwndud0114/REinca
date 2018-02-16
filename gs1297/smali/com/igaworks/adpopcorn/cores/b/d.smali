.class public Lcom/igaworks/adpopcorn/cores/b/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/igaworks/adpopcorn/cores/model/e;
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Lcom/igaworks/adpopcorn/cores/model/e;

    invoke-direct {v0}, Lcom/igaworks/adpopcorn/cores/model/e;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/igaworks/adpopcorn/cores/model/e;->a(Z)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "Result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "Result"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/e;->a(Z)V

    :cond_0
    const-string v3, "IsTest"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "IsTest"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/igaworks/adpopcorn/cores/d;->a:Z

    :cond_1
    const-string v3, "ResultCode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "ResultCode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/igaworks/adpopcorn/cores/model/e;->a(I)V

    :cond_2
    const-string v3, "ResultMsg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "ResultMsg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/igaworks/adpopcorn/cores/model/e;->a(Ljava/lang/String;)V

    :cond_3
    if-eqz v1, :cond_13

    const-string v1, "LandscapeImageURL"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "LandscapeImageURL"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/e;->e(Ljava/lang/String;)V

    :cond_4
    const-string v1, "IconImageURL"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "IconImageURL"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/e;->d(Ljava/lang/String;)V

    :cond_5
    const-string v1, "Name"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Name"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/e;->f(Ljava/lang/String;)V

    :cond_6
    const-string v1, "Desc"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "Desc"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/e;->c(Ljava/lang/String;)V

    :cond_7
    const-string v1, "VideoURL"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "VideoURL"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/e;->i(Ljava/lang/String;)V

    :cond_8
    const-string v1, "RedirectURL"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "RedirectURL"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/e;->h(Ljava/lang/String;)V

    :cond_9
    const-string v1, "AverageRating"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "AverageRating"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/igaworks/adpopcorn/cores/model/e;->a(D)V

    :cond_a
    const-string v1, "NumberOfDownloads"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "NumberOfDownloads"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "NumberOfDownloads"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/e;->g(Ljava/lang/String;)V

    :cond_b
    const-string v1, "ADType"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "ADType"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/e;->b(I)V

    :cond_c
    const-string v1, "ClickAction"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "ClickAction"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "ClickAction"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/e;->b(Ljava/lang/String;)V

    :cond_d
    const-string v1, "Auth"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "Auth"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "Auth"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/e;->k(Ljava/lang/String;)V

    :cond_e
    const-string v1, "Key"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "Key"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "Key"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/e;->j(Ljava/lang/String;)V

    :cond_f
    const-string v1, "AutoRedirect"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "AutoRedirect"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "AutoRedirect"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/e;->b(Z)V

    :cond_10
    const-string v1, "SkipAllowSeconds"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "SkipAllowSeconds"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "SkipAllowSeconds"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/e;->c(I)V

    :cond_11
    const-string v1, "VideoImpressionURL"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "VideoImpressionURL"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "VideoImpressionURL"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/e;->l(Ljava/lang/String;)V

    :cond_12
    const-string v1, "MoreClickReportURL"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "MoreClickReportURL"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "MoreClickReportURL"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/e;->n(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_13
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "Result"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "Result"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    const-string v4, "IsTest"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "IsTest"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/igaworks/adpopcorn/cores/d;->a:Z

    :cond_0
    if-eqz v0, :cond_12

    const-string v0, "Videos"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_13

    new-instance v4, Lorg/json/JSONArray;

    const-string v0, "Videos"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v2, v3, :cond_1

    :goto_2
    return-object v0

    :cond_1
    new-instance v3, Lcom/igaworks/adpopcorn/cores/model/e;

    invoke-direct {v3}, Lcom/igaworks/adpopcorn/cores/model/e;-><init>()V

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "LandscapeImageURL"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "LandscapeImageURL"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/igaworks/adpopcorn/cores/model/e;->e(Ljava/lang/String;)V

    :cond_2
    const-string v6, "IconImageURL"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "IconImageURL"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/igaworks/adpopcorn/cores/model/e;->d(Ljava/lang/String;)V

    :cond_3
    const-string v6, "Title"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "Title"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/igaworks/adpopcorn/cores/model/e;->f(Ljava/lang/String;)V

    :cond_4
    const-string v6, "Desc"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "Desc"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/igaworks/adpopcorn/cores/model/e;->c(Ljava/lang/String;)V

    :cond_5
    const-string v6, "VideoURL"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "VideoURL"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/igaworks/adpopcorn/cores/model/e;->i(Ljava/lang/String;)V

    :cond_6
    const-string v6, "RedirectURL"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "RedirectURL"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/igaworks/adpopcorn/cores/model/e;->h(Ljava/lang/String;)V

    :cond_7
    const-string v6, "AverageRating"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "AverageRating"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/igaworks/adpopcorn/cores/model/e;->a(D)V

    :cond_8
    const-string v6, "NumberOfDownloads"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "NumberOfDownloads"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "NumberOfDownloads"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/igaworks/adpopcorn/cores/model/e;->g(Ljava/lang/String;)V

    :cond_9
    const-string v6, "ADType"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "ADType"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/igaworks/adpopcorn/cores/model/e;->b(I)V

    :cond_a
    const-string v6, "ClickAction"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "ClickAction"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "ClickAction"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/igaworks/adpopcorn/cores/model/e;->b(Ljava/lang/String;)V

    :cond_b
    const-string v6, "Auth"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "Auth"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "Auth"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/igaworks/adpopcorn/cores/model/e;->k(Ljava/lang/String;)V

    :cond_c
    const-string v6, "Key"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "Key"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "Key"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/igaworks/adpopcorn/cores/model/e;->j(Ljava/lang/String;)V

    :cond_d
    const-string v6, "Reward"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "Reward"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "Reward"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/igaworks/adpopcorn/cores/model/e;->m(Ljava/lang/String;)V

    :cond_e
    const-string v6, "SkipAllowSeconds"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "SkipAllowSeconds"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "SkipAllowSeconds"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/igaworks/adpopcorn/cores/model/e;->c(I)V

    :cond_f
    const-string v6, "RewardCondition"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v6, "RewardCondition"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "RewardCondition"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/igaworks/adpopcorn/cores/model/e;->o(Ljava/lang/String;)V

    :cond_10
    const-string v6, "PartiTypeCode"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v6, "PartiTypeCode"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "PartiTypeCode"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/igaworks/adpopcorn/cores/model/e;->d(I)V

    :cond_11
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_12
    move-object v0, v1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    move-object v0, v1

    goto/16 :goto_2

    :cond_14
    move v0, v2

    goto/16 :goto_0
.end method
