.class public Lcom/inca/security/Proxy/AppGuardProxyManager$2;
.super Ljava/lang/Thread;
.source "sb"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inca/security/Proxy/AppGuardProxyManager;->onTrimWindows(ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic IiIiIiiIii:Lcom/inca/security/Proxy/AppGuardProxyManager;


# direct methods
.method public constructor <init>(Lcom/inca/security/Proxy/AppGuardProxyManager;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/Proxy/AppGuardProxyManager;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/inca/security/Proxy/AppGuardProxyManager$2;->IiIiIiiIii:Lcom/inca/security/Proxy/AppGuardProxyManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 35
    :cond_0
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    iget-object v1, p0, Lcom/inca/security/Proxy/AppGuardProxyManager$2;->IiIiIiiIii:Lcom/inca/security/Proxy/AppGuardProxyManager;

    invoke-static {v1}, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiiiIIIIii(Lcom/inca/security/Proxy/AppGuardProxyManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/inca/security/Proxy/AppGuardProxyManager$2;->IiIiIiiIii:Lcom/inca/security/Proxy/AppGuardProxyManager;

    invoke-static {v1}, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiiiIIIIii(Lcom/inca/security/Proxy/AppGuardProxyManager;)Ljava/util/Queue;

    move-result-object v2

    monitor-enter v2

    move-object v0, p0

    .line 52
    .end local p0    # "this":Lcom/inca/security/Proxy/AppGuardProxyManager$2;
    .local v0, "this":Lcom/inca/security/Proxy/AppGuardProxyManager$2;
    :goto_0
    :try_start_1
    iget-object v1, v0, Lcom/inca/security/Proxy/AppGuardProxyManager$2;->IiIiIiiIii:Lcom/inca/security/Proxy/AppGuardProxyManager;

    invoke-static {v1}, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiiiIIIIii(Lcom/inca/security/Proxy/AppGuardProxyManager;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/inca/security/Proxy/AppGuardProxyManager$2;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v3, p0, Lcom/inca/security/Proxy/AppGuardProxyManager$2;->IiIiIiiIii:Lcom/inca/security/Proxy/AppGuardProxyManager;

    iget-object v1, p0, Lcom/inca/security/Proxy/AppGuardProxyManager$2;->IiIiIiiIii:Lcom/inca/security/Proxy/AppGuardProxyManager;

    invoke-static {v1}, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiiiIIIIii(Lcom/inca/security/Proxy/AppGuardProxyManager;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;

    invoke-static {v3, v1}, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiiiIIIIii(Lcom/inca/security/Proxy/AppGuardProxyManager;Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;)Ljava/lang/Object;

    move-object v0, p0

    goto :goto_0

    .line 148
    :cond_1
    monitor-exit v2

    .end local v0    # "this":Lcom/inca/security/Proxy/AppGuardProxyManager$2;
    :goto_1
    return-void

    .restart local v0    # "this":Lcom/inca/security/Proxy/AppGuardProxyManager$2;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 38
    .end local v0    # "this":Lcom/inca/security/Proxy/AppGuardProxyManager$2;
    .restart local p0    # "this":Lcom/inca/security/Proxy/AppGuardProxyManager$2;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
