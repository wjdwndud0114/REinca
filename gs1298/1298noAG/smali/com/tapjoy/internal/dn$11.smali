.class final Lcom/tapjoy/internal/dn$11;
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
    .line 278
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/dn;-><init>(Lcom/tapjoy/internal/dk;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 278
    check-cast p1, Ljava/lang/Long;

    .line 3280
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tapjoy/internal/dp;->a(J)I

    move-result v0

    .line 278
    return v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 278
    .line 1288
    invoke-virtual {p1}, Lcom/tapjoy/internal/do;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 278
    return-object v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/dp;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 278
    check-cast p2, Ljava/lang/Long;

    .line 2284
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dp;->c(J)V

    .line 278
    return-void
.end method
