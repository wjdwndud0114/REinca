.class public Lcom/inca/security/Proxy/AppGuardProxyManager$3;
.super Ljava/lang/Thread;
.source "sb"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inca/security/Proxy/AppGuardProxyManager;->IiiiIIIIii(Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;)Ljava/lang/Object;
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
    .line 286
    iput-object p1, p0, Lcom/inca/security/Proxy/AppGuardProxyManager$3;->IiIiIiiIii:Lcom/inca/security/Proxy/AppGuardProxyManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 232
    const/4 v2, 0x0

    .line 342
    :goto_0
    :try_start_0
    const-string v1, "com.inca.security.AppGuard.AppGuardClientInternal"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 277
    const-string v1, "Z\u0003a\u0015@\u0015G3\\\u001dC\u001cV\u0004V\u0014"

    invoke-static {v1}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 357
    iget-object v1, p0, Lcom/inca/security/Proxy/AppGuardProxyManager$3;->IiIiIiiIii:Lcom/inca/security/Proxy/AppGuardProxyManager;

    invoke-static {v1}, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiiiIIIIii(Lcom/inca/security/Proxy/AppGuardProxyManager;)Ljava/lang/Object;

    move-result-object v4

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 404
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 467
    :goto_1
    if-eqz v1, :cond_1

    .line 384
    iget-object v1, p0, Lcom/inca/security/Proxy/AppGuardProxyManager$3;->IiIiIiiIii:Lcom/inca/security/Proxy/AppGuardProxyManager;

    invoke-static {v1}, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiiiIIIIii(Lcom/inca/security/Proxy/AppGuardProxyManager;)Ljava/util/Queue;

    move-result-object v2

    monitor-enter v2

    move-object v0, p0

    .line 476
    .end local p0    # "this":Lcom/inca/security/Proxy/AppGuardProxyManager$3;
    .local v0, "this":Lcom/inca/security/Proxy/AppGuardProxyManager$3;
    :goto_2
    :try_start_2
    iget-object v1, v0, Lcom/inca/security/Proxy/AppGuardProxyManager$3;->IiIiIiiIii:Lcom/inca/security/Proxy/AppGuardProxyManager;

    invoke-static {v1}, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiiiIIIIii(Lcom/inca/security/Proxy/AppGuardProxyManager;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/inca/security/Proxy/AppGuardProxyManager$3;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    iget-object v3, p0, Lcom/inca/security/Proxy/AppGuardProxyManager$3;->IiIiIiiIii:Lcom/inca/security/Proxy/AppGuardProxyManager;

    iget-object v1, p0, Lcom/inca/security/Proxy/AppGuardProxyManager$3;->IiIiIiiIii:Lcom/inca/security/Proxy/AppGuardProxyManager;

    invoke-static {v1}, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiiiIIIIii(Lcom/inca/security/Proxy/AppGuardProxyManager;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;

    invoke-static {v3, v1}, Lcom/inca/security/Proxy/AppGuardProxyManager;->IiiiIIIIii(Lcom/inca/security/Proxy/AppGuardProxyManager;Lcom/inca/security/Proxy/AppGuardProxyManager$ProxyAPIParam;)Ljava/lang/Object;

    move-object v0, p0

    goto :goto_2

    .line 328
    :cond_0
    monitor-exit v2

    .line 457
    .end local v0    # "this":Lcom/inca/security/Proxy/AppGuardProxyManager$3;
    :goto_3
    return-void

    .line 328
    .restart local v0    # "this":Lcom/inca/security/Proxy/AppGuardProxyManager$3;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 253
    .end local v0    # "this":Lcom/inca/security/Proxy/AppGuardProxyManager$3;
    .restart local p0    # "this":Lcom/inca/security/Proxy/AppGuardProxyManager$3;
    :catch_0
    move-exception v1

    goto :goto_3

    .line 302
    :catch_1
    move-exception v1

    move v1, v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_0
.end method
