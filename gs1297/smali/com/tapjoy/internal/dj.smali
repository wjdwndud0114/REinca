.class public abstract Lcom/tapjoy/internal/dj;
.super Lcom/tapjoy/internal/dn;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/tapjoy/internal/dk;->a:Lcom/tapjoy/internal/dk;

    invoke-direct {p0, v0, p1}, Lcom/tapjoy/internal/dn;-><init>(Lcom/tapjoy/internal/dk;Ljava/lang/Class;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcom/tapjoy/internal/dq;

    .line 3029
    invoke-interface {p1}, Lcom/tapjoy/internal/dq;->a()I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/internal/dp;->a(I)I

    move-result v0

    .line 23
    return v0
.end method

.method public abstract a(I)Lcom/tapjoy/internal/dq;
.end method

.method public final synthetic a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 23
    .line 1037
    invoke-virtual {p1}, Lcom/tapjoy/internal/do;->d()I

    move-result v0

    .line 1038
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dj;->a(I)Lcom/tapjoy/internal/dq;

    move-result-object v1

    .line 1039
    if-nez v1, :cond_0

    .line 1040
    new-instance v1, Lcom/tapjoy/internal/dn$a;

    iget-object v2, p0, Lcom/tapjoy/internal/dj;->a:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Lcom/tapjoy/internal/dn$a;-><init>(ILjava/lang/Class;)V

    throw v1

    .line 23
    :cond_0
    return-object v1
.end method

.method public final synthetic a(Lcom/tapjoy/internal/dp;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 23
    check-cast p2, Lcom/tapjoy/internal/dq;

    .line 2033
    invoke-interface {p2}, Lcom/tapjoy/internal/dq;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dp;->c(I)V

    .line 23
    return-void
.end method
