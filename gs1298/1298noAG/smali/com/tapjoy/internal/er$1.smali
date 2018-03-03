.class final Lcom/tapjoy/internal/er$1;
.super Lcom/tapjoy/internal/ey;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/er;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/er;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/er;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tapjoy/internal/er$1;->a:Lcom/tapjoy/internal/er;

    invoke-direct {p0}, Lcom/tapjoy/internal/ey;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/content/Context;Lcom/tapjoy/TJPlacementListener;Ljava/lang/Object;)Lcom/tapjoy/TJPlacement;
    .locals 2

    .prologue
    .line 44
    .line 2053
    const-string v0, "AppLaunch"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, p2}, Lcom/tapjoy/TJPlacementManager;->createPlacement(Landroid/content/Context;Ljava/lang/String;ZLcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    .line 44
    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1059
    const-string v0, "AppLaunch"

    .line 44
    return-object v0
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/tapjoy/internal/ey;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/internal/gk;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
