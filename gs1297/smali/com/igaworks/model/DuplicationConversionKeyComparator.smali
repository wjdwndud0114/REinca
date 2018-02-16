.class public Lcom/igaworks/model/DuplicationConversionKeyComparator;
.super Ljava/lang/Object;
.source "DuplicationConversionKeyComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/igaworks/model/DuplicationConversionKeyModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/igaworks/model/DuplicationConversionKeyModel;Lcom/igaworks/model/DuplicationConversionKeyModel;)I
    .locals 5
    .param p1, "lhs"    # Lcom/igaworks/model/DuplicationConversionKeyModel;
    .param p2, "rhs"    # Lcom/igaworks/model/DuplicationConversionKeyModel;

    .prologue
    .line 10
    invoke-virtual {p1}, Lcom/igaworks/model/DuplicationConversionKeyModel;->getCompleteTime()J

    move-result-wide v0

    .line 11
    .local v0, "prior1":J
    invoke-virtual {p2}, Lcom/igaworks/model/DuplicationConversionKeyModel;->getCompleteTime()J

    move-result-wide v2

    .line 12
    .local v2, "prior2":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 13
    const/4 v4, 0x1

    .line 17
    :goto_0
    return v4

    .line 14
    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 15
    const/4 v4, 0x0

    goto :goto_0

    .line 17
    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 6
    check-cast p1, Lcom/igaworks/model/DuplicationConversionKeyModel;

    check-cast p2, Lcom/igaworks/model/DuplicationConversionKeyModel;

    invoke-virtual {p0, p1, p2}, Lcom/igaworks/model/DuplicationConversionKeyComparator;->compare(Lcom/igaworks/model/DuplicationConversionKeyModel;Lcom/igaworks/model/DuplicationConversionKeyModel;)I

    move-result v0

    return v0
.end method
