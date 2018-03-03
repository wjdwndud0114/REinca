.class abstract Lcom/tapjoy/internal/ey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ey$a;
    }
.end annotation


# instance fields
.field volatile b:Lcom/tapjoy/internal/ey$a;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Lcom/tapjoy/TJPlacementListener;Ljava/lang/Object;)Lcom/tapjoy/TJPlacement;
.end method

.method protected abstract a(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isFullScreenViewOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/util/Observer;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isFullScreenViewOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    sget-object v1, Lcom/tapjoy/internal/et;->e:Lcom/tapjoy/internal/et$a;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/et$a;->addObserver(Ljava/util/Observer;)V

    .line 87
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isFullScreenViewOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    sget-object v1, Lcom/tapjoy/internal/et;->e:Lcom/tapjoy/internal/et$a;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/et$a;->deleteObserver(Ljava/util/Observer;)V

    .line 93
    :cond_2
    invoke-static {}, Lcom/tapjoy/internal/fz;->a()Lcom/tapjoy/internal/fz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/fz;->d()Z

    move-result v1

    if-nez v1, :cond_3

    .line 94
    sget-object v1, Lcom/tapjoy/internal/et;->c:Lcom/tapjoy/internal/et$a;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/et$a;->addObserver(Ljava/util/Observer;)V

    .line 95
    invoke-static {}, Lcom/tapjoy/internal/fz;->a()Lcom/tapjoy/internal/fz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/fz;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    sget-object v0, Lcom/tapjoy/internal/et;->c:Lcom/tapjoy/internal/et$a;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/et$a;->deleteObserver(Ljava/util/Observer;)V

    .line 100
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b(Ljava/lang/Object;)Lcom/tapjoy/internal/ey$a;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/tapjoy/internal/ey$a;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/ey$a;-><init>(Lcom/tapjoy/internal/ey;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/tapjoy/internal/ey;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 45
    :cond_1
    const/4 v1, 0x0

    .line 46
    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v2, p0, Lcom/tapjoy/internal/ey;->b:Lcom/tapjoy/internal/ey$a;

    if-nez v2, :cond_2

    .line 48
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/ey;->b(Ljava/lang/Object;)Lcom/tapjoy/internal/ey$a;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/ey;->b:Lcom/tapjoy/internal/ey$a;

    .line 50
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v1}, Lcom/tapjoy/internal/ey$a;->a()V

    .line 53
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
