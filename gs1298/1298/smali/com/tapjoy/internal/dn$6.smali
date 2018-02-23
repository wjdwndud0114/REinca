.class final Lcom/tapjoy/internal/dn$6;
.super Lcom/tapjoy/internal/dn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/dn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic r:Lcom/tapjoy/internal/dn;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/dn;Lcom/tapjoy/internal/dk;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/tapjoy/internal/dn$6;->r:Lcom/tapjoy/internal/dn;

    invoke-direct {p0, p2, p3}, Lcom/tapjoy/internal/dn;-><init>(Lcom/tapjoy/internal/dk;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(ILjava/lang/Object;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 464
    check-cast p2, Ljava/util/List;

    .line 4471
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 4472
    iget-object v3, p0, Lcom/tapjoy/internal/dn$6;->r:Lcom/tapjoy/internal/dn;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/tapjoy/internal/dn;->a(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    .line 4471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    :cond_0
    return v1
.end method

.method public final synthetic a(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 5466
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Repeated values can only be sized with a tag."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 464
    .line 1489
    iget-object v0, p0, Lcom/tapjoy/internal/dn$6;->r:Lcom/tapjoy/internal/dn;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;

    move-result-object v0

    .line 1490
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 464
    return-object v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V
    .locals 4

    .prologue
    .line 464
    check-cast p3, Ljava/util/List;

    .line 2483
    const/4 v0, 0x0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 2484
    iget-object v2, p0, Lcom/tapjoy/internal/dn$6;->r:Lcom/tapjoy/internal/dn;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dp;ILjava/lang/Object;)V

    .line 2483
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/tapjoy/internal/dp;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 3478
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Repeated values can only be encoded with a tag."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
