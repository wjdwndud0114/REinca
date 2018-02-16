.class final Lcom/tapjoy/internal/dn$5;
.super Lcom/tapjoy/internal/dn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/dn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/dk;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/dn;-><init>(Lcom/tapjoy/internal/dk;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 381
    check-cast p1, Lcom/tapjoy/internal/hu;

    .line 3383
    invoke-virtual {p1}, Lcom/tapjoy/internal/hu;->c()I

    move-result v0

    .line 381
    return v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 381
    .line 2258
    invoke-virtual {p1}, Lcom/tapjoy/internal/do;->h()J

    move-result-wide v0

    .line 2259
    iget-object v2, p1, Lcom/tapjoy/internal/do;->a:Lcom/tapjoy/internal/ht;

    invoke-interface {v2, v0, v1}, Lcom/tapjoy/internal/ht;->b(J)Lcom/tapjoy/internal/hu;

    move-result-object v0

    .line 381
    return-object v0
.end method

.method public final bridge synthetic a(Lcom/tapjoy/internal/dp;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 381
    check-cast p2, Lcom/tapjoy/internal/hu;

    .line 2387
    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/dp;->a(Lcom/tapjoy/internal/hu;)V

    .line 381
    return-void
.end method
