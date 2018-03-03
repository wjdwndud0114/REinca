.class Lcom/anjlab/android/iab/v3/BillingCache;
.super Lcom/anjlab/android/iab/v3/BillingBase;
.source "BillingCache.java"


# static fields
.field private static final ENTRY_DELIMITER:Ljava/lang/String; = "#####"

.field private static final LINE_DELIMITER:Ljava/lang/String; = ">>>>>"

.field private static final VERSION_KEY:Ljava/lang/String; = ".version"


# instance fields
.field private cacheKey:Ljava/lang/String;

.field private data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/anjlab/android/iab/v3/PurchaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/anjlab/android/iab/v3/BillingBase;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    .line 39
    iput-object p2, p0, Lcom/anjlab/android/iab/v3/BillingCache;->cacheKey:Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->load()V

    .line 41
    return-void
.end method

.method private flush()V
    .locals 6

    .prologue
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 68
    .local v2, "productId":Ljava/lang/String;
    iget-object v4, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anjlab/android/iab/v3/PurchaseInfo;

    .line 69
    .local v0, "info":Lcom/anjlab/android/iab/v3/PurchaseInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">>>>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->responseData:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">>>>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/anjlab/android/iab/v3/PurchaseInfo;->signature:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    .end local v0    # "info":Lcom/anjlab/android/iab/v3/PurchaseInfo;
    .end local v2    # "productId":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->getPreferencesCacheKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "#####"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/anjlab/android/iab/v3/BillingCache;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/anjlab/android/iab/v3/BillingCache;->version:Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->getPreferencesVersionKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anjlab/android/iab/v3/BillingCache;->version:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/anjlab/android/iab/v3/BillingCache;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    return-void
.end method

.method private getCurrentVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->getPreferencesVersionKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/anjlab/android/iab/v3/BillingCache;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferencesCacheKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->getPreferencesBaseKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anjlab/android/iab/v3/BillingCache;->cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferencesVersionKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->getPreferencesCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private load()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 52
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->getPreferencesCacheKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {p0, v2, v4}, Lcom/anjlab/android/iab/v3/BillingCache;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "#####"

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v0, v4, v2

    .line 53
    .local v0, "entry":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 54
    const-string v6, ">>>>>"

    invoke-static {v6}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "parts":[Ljava/lang/String;
    array-length v6, v1

    if-le v6, v12, :cond_1

    .line 56
    iget-object v6, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    aget-object v7, v1, v3

    new-instance v8, Lcom/anjlab/android/iab/v3/PurchaseInfo;

    aget-object v9, v1, v11

    aget-object v10, v1, v12

    invoke-direct {v8, v9, v10}, Lcom/anjlab/android/iab/v3/PurchaseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .end local v1    # "parts":[Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .restart local v1    # "parts":[Ljava/lang/String;
    :cond_1
    array-length v6, v1

    if-le v6, v11, :cond_0

    .line 58
    iget-object v6, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    aget-object v7, v1, v3

    new-instance v8, Lcom/anjlab/android/iab/v3/PurchaseInfo;

    aget-object v9, v1, v11

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/anjlab/android/iab/v3/PurchaseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 62
    .end local v0    # "entry":Ljava/lang/String;
    .end local v1    # "parts":[Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->getCurrentVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anjlab/android/iab/v3/BillingCache;->version:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private reloadDataIfNeeded()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->version:Ljava/lang/String;

    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 115
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->load()V

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->reloadDataIfNeeded()V

    .line 104
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 105
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->flush()V

    .line 106
    return-void
.end method

.method public getContents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDetails(Ljava/lang/String;)Lcom/anjlab/android/iab/v3/PurchaseInfo;
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->reloadDataIfNeeded()V

    .line 83
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anjlab/android/iab/v3/PurchaseInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public includesProduct(Ljava/lang/String;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->reloadDataIfNeeded()V

    .line 78
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "details"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->reloadDataIfNeeded()V

    .line 88
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    new-instance v1, Lcom/anjlab/android/iab/v3/PurchaseInfo;

    invoke-direct {v1, p2, p3}, Lcom/anjlab/android/iab/v3/PurchaseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->flush()V

    .line 92
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->reloadDataIfNeeded()V

    .line 96
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-direct {p0}, Lcom/anjlab/android/iab/v3/BillingCache;->flush()V

    .line 100
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    const-string v0, ", "

    iget-object v1, p0, Lcom/anjlab/android/iab/v3/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
