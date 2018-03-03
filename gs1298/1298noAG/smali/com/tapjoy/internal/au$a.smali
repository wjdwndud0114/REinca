.class public final Lcom/tapjoy/internal/au$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/ax;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/tapjoy/internal/av;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/av;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/tapjoy/internal/au$a;->a:Lcom/tapjoy/internal/av;

    .line 76
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Lcom/tapjoy/internal/au$a;->a:Lcom/tapjoy/internal/av;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/au$a;->a:Lcom/tapjoy/internal/av;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/tapjoy/internal/av;->a(Ljava/lang/Object;Z)Lcom/tapjoy/internal/at;

    move-result-object v2

    .line 97
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    if-eqz v2, :cond_0

    .line 99
    monitor-enter v2

    .line 100
    :try_start_1
    invoke-interface {v2}, Lcom/tapjoy/internal/at;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    :goto_0
    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 101
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 122
    iget-object v1, p0, Lcom/tapjoy/internal/au$a;->a:Lcom/tapjoy/internal/av;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/au$a;->a:Lcom/tapjoy/internal/av;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/tapjoy/internal/av;->a(Ljava/lang/Object;Z)Lcom/tapjoy/internal/at;

    move-result-object v2

    .line 124
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-enter v2

    .line 126
    :try_start_1
    invoke-interface {v2, p2}, Lcom/tapjoy/internal/at;->a(Ljava/lang/Object;)V

    .line 127
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 124
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 127
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
