.class final Lcom/tapjoy/FiveRocksIntegration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/fo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/FiveRocksIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private e(Ljava/lang/String;)Lcom/tapjoy/internal/fm;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/tapjoy/FiveRocksIntegration$1$1;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/FiveRocksIntegration$1$1;-><init>(Lcom/tapjoy/FiveRocksIntegration$1;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/tapjoy/internal/fl;)V
    .locals 1

    .prologue
    .line 75
    if-eqz p2, :cond_0

    .line 77
    invoke-direct {p0, p1}, Lcom/tapjoy/FiveRocksIntegration$1;->e(Ljava/lang/String;)Lcom/tapjoy/internal/fm;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/fm;)V

    .line 79
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fl;)V
    .locals 2

    .prologue
    .line 84
    if-eqz p3, :cond_0

    .line 86
    invoke-direct {p0, p1}, Lcom/tapjoy/FiveRocksIntegration$1;->e(Ljava/lang/String;)Lcom/tapjoy/internal/fm;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/fm;)V

    .line 90
    :cond_0
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()Lcom/tapjoy/internal/be;

    move-result-object v1

    monitor-enter v1

    .line 91
    :try_start_0
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()Lcom/tapjoy/internal/be;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/be;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacement;

    .line 92
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    invoke-static {p2}, Lcom/tapjoy/TapjoyConnectCore;->viewDidClose(Ljava/lang/String;)V

    .line 5063
    iget-object v1, v0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 95
    if-eqz v1, :cond_1

    .line 6063
    iget-object v1, v0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 96
    invoke-interface {v1, v0}, Lcom/tapjoy/TJPlacementListener;->onContentDismiss(Lcom/tapjoy/TJPlacement;)V

    .line 99
    :cond_1
    return-void

    .line 92
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()Lcom/tapjoy/internal/be;

    move-result-object v1

    monitor-enter v1

    .line 49
    :try_start_0
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()Lcom/tapjoy/internal/be;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/be;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacement;

    .line 50
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz v0, :cond_0

    .line 1063
    iget-object v1, v0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 51
    if-eqz v1, :cond_0

    .line 2063
    iget-object v1, v0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 52
    invoke-interface {v1, v0}, Lcom/tapjoy/TJPlacementListener;->onContentReady(Lcom/tapjoy/TJPlacement;)V

    .line 54
    :cond_0
    return-void

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()Lcom/tapjoy/internal/be;

    move-result-object v1

    monitor-enter v1

    .line 60
    :try_start_0
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()Lcom/tapjoy/internal/be;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/be;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacement;

    .line 61
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    if-eqz v0, :cond_0

    .line 3063
    iget-object v1, v0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 62
    if-eqz v1, :cond_0

    .line 4063
    iget-object v1, v0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 63
    invoke-interface {v1, v0}, Lcom/tapjoy/TJPlacementListener;->onContentShow(Lcom/tapjoy/TJPlacement;)V

    .line 65
    :cond_0
    return-void

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method
