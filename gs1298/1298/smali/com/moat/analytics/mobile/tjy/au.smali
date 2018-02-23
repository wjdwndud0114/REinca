.class Lcom/moat/analytics/mobile/tjy/au;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/tjy/ax;


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/tjy/as;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/tjy/as;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/tjy/au;->a:Lcom/moat/analytics/mobile/tjy/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/moat/analytics/mobile/tjy/ar;)V
    .locals 4

    invoke-static {}, Lcom/moat/analytics/mobile/tjy/as;->d()Lcom/moat/analytics/mobile/tjy/ar;

    move-result-object v0

    if-eq v0, p1, :cond_3

    invoke-static {}, Lcom/moat/analytics/mobile/tjy/as;->e()Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/moat/analytics/mobile/tjy/ar;->b:Lcom/moat/analytics/mobile/tjy/ar;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/moat/analytics/mobile/tjy/as;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MoatOnOff"

    const-string v2, "Moat enabled - Version 1.7.10"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/moat/analytics/mobile/tjy/as;->a(Lcom/moat/analytics/mobile/tjy/ar;)Lcom/moat/analytics/mobile/tjy/ar;

    invoke-static {}, Lcom/moat/analytics/mobile/tjy/as;->e()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/tjy/aq;

    sget-object v3, Lcom/moat/analytics/mobile/tjy/ar;->b:Lcom/moat/analytics/mobile/tjy/ar;

    if-ne p1, v3, :cond_1

    invoke-interface {v0}, Lcom/moat/analytics/mobile/tjy/aq;->a()V

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/moat/analytics/mobile/tjy/aq;->b()V

    goto :goto_1

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/au;->a:Lcom/moat/analytics/mobile/tjy/as;

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/as;->a(Lcom/moat/analytics/mobile/tjy/as;)V

    return-void
.end method
