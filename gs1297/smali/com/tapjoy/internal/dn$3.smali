.class final Lcom/tapjoy/internal/dn$3;
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
    .line 353
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/dn;-><init>(Lcom/tapjoy/internal/dk;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 353
    const/16 v0, 0x8

    return v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 353
    .line 1363
    invoke-virtual {p1}, Lcom/tapjoy/internal/do;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 353
    return-object v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/dp;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 353
    check-cast p2, Ljava/lang/Double;

    .line 2359
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/dp;->d(J)V

    .line 353
    return-void
.end method
