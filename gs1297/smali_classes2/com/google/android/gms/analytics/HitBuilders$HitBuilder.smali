.class public Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/HitBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HitBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private zzaaM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field zzaaN:Lcom/google/android/gms/analytics/ecommerce/ProductAction;

.field zzaaO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/ecommerce/Product;",
            ">;>;"
        }
    .end annotation
.end field

.field zzaaP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/ecommerce/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field zzaaQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/ecommerce/Product;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzaaM:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzaaO:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzaaP:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzaaQ:Ljava/util/List;

    return-void
.end method

.method private zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzaaM:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "HitBuilder.setIfNonNull() called with a null paramName."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsw;->zzbe(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addImpression(Lcom/google/android/gms/analytics/ecommerce/Product;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/analytics/ecommerce/Product;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "product should be non-null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsw;->zzbe(Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzaaO:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzaaO:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzaaO:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addProduct(Lcom/google/android/gms/analytics/ecommerce/Product;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/analytics/ecommerce/Product;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "product should be non-null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsw;->zzbe(Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzaaQ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addPromotion(Lcom/google/android/gms/analytics/ecommerce/Promotion;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/analytics/ecommerce/Promotion;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "promotion should be non-null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsw;->zzbe(Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzaaP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public build()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v6, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzaaM:Ljava/util/Map;

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzaaN:Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzaaN:Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->build()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzaaP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/ecommerce/Promotion;

    invoke-static {v1}, Lcom/google/android/gms/analytics/zzc;->zzar(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/analytics/ecommerce/Promotion;->zzbL(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzaaQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/ecommerce/Product;

    invoke-static {v1}, Lcom/google/android/gms/analytics/zzc;->zzap(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/analytics/ecommerce/Product;->zzbL(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzaaO:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v2

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/analytics/zzc;->zzau(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v2

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/ecommerce/Product;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4}, Lcom/google/android/gms/analytics/zzc;->zzat(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v10, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v1, v5}, Lcom/google/android/gms/analytics/ecommerce/Product;->zzbL(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    :cond_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "nm"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    return-object v6
.end method

.method protected get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzaaM:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzaaM:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0

    :cond_0
    const-string v0, "HitBuilder.set() called with a null paramName."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsw;->zzbe(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setAll(Ljava/util/Map;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzaaM:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setCampaignParamsFromUrl(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zztg;->zzcf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zztg;->zzcd(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "&cc"

    const-string v0, "utm_content"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    const-string v2, "&cm"

    const-string v0, "utm_medium"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    const-string v2, "&cn"

    const-string v0, "utm_campaign"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    const-string v2, "&cs"

    const-string v0, "utm_source"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    const-string v2, "&ck"

    const-string v0, "utm_term"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    const-string v2, "&ci"

    const-string v0, "utm_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    const-string v2, "&anid"

    const-string v0, "anid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    const-string v2, "&gclid"

    const-string v0, "gclid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    const-string v2, "&dclid"

    const-string v0, "dclid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    const-string v2, "&aclid"

    const-string v0, "aclid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    const-string v2, "&gmob_t"

    const-string v0, "gmob_t"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    goto/16 :goto_0
.end method

.method public setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/analytics/zzc;->zzal(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public setCustomMetric(IF)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/analytics/zzc;->zzan(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method protected setHitType(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "&t"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public setNewSession()Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const-string v0, "&sc"

    const-string v1, "start"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public setNonInteraction(Z)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    const-string v0, "&ni"

    invoke-static {p1}, Lcom/google/android/gms/internal/zztg;->zzW(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public setProductAction(Lcom/google/android/gms/analytics/ecommerce/ProductAction;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/analytics/ecommerce/ProductAction;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzaaN:Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    return-object p0
.end method

.method public setPromotionAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->zzaaM:Ljava/util/Map;

    const-string v1, "&promoa"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
