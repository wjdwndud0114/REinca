.class final Lcom/tapjoy/internal/dn$9;
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
    .line 249
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/dn;-><init>(Lcom/tapjoy/internal/dk;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 249
    check-cast p1, Ljava/lang/Integer;

    .line 3251
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/internal/dp;->b(I)I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/internal/dp;->a(I)I

    move-result v0

    .line 249
    return v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 249
    .line 1259
    invoke-virtual {p1}, Lcom/tapjoy/internal/do;->d()I

    move-result v0

    .line 2157
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    .line 1259
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 249
    return-object v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/dp;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 249
    check-cast p2, Ljava/lang/Integer;

    .line 2255
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/internal/dp;->b(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/dp;->c(I)V

    .line 249
    return-void
.end method
