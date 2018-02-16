.class final Lcom/tapjoy/internal/ew$1;
.super Lcom/tapjoy/internal/ey;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/ew;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ew;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tapjoy/internal/ew$1;->a:Lcom/tapjoy/internal/ew;

    invoke-direct {p0}, Lcom/tapjoy/internal/ey;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/content/Context;Lcom/tapjoy/TJPlacementListener;Ljava/lang/Object;)Lcom/tapjoy/TJPlacement;
    .locals 3

    .prologue
    .line 27
    check-cast p3, Lcom/tapjoy/internal/gk$a;

    .line 2041
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p3, Lcom/tapjoy/internal/gk$a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2}, Lcom/tapjoy/TJPlacementManager;->createPlacement(Landroid/content/Context;Ljava/lang/String;ZLcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    .line 2042
    iget-object v1, p3, Lcom/tapjoy/internal/gk$a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/tapjoy/TJPlacement;->pushId:Ljava/lang/String;

    .line 27
    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lcom/tapjoy/internal/gk$a;

    .line 1048
    if-eqz p1, :cond_0

    .line 1049
    iget-object v0, p1, Lcom/tapjoy/internal/gk$a;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 1051
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_0
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method protected final a(Ljava/util/Observer;)Z
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->dismissContentShowing(Z)V

    .line 59
    :cond_0
    invoke-super {p0, p1}, Lcom/tapjoy/internal/ey;->a(Ljava/util/Observer;)Z

    move-result v0

    return v0
.end method

.method protected final synthetic b(Ljava/lang/Object;)Lcom/tapjoy/internal/ey$a;
    .locals 2

    .prologue
    .line 27
    check-cast p1, Lcom/tapjoy/internal/gk$a;

    .line 3030
    new-instance v0, Lcom/tapjoy/internal/ey$a;

    iget-object v1, p1, Lcom/tapjoy/internal/gk$a;->d:Lcom/tapjoy/internal/el;

    invoke-direct {v0, p0, p1, v1}, Lcom/tapjoy/internal/ey$a;-><init>(Lcom/tapjoy/internal/ey;Ljava/lang/Object;Lcom/tapjoy/internal/el;)V

    .line 27
    return-object v0
.end method
