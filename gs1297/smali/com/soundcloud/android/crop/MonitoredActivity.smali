.class abstract Lcom/soundcloud/android/crop/MonitoredActivity;
.super Lcom/inca/security/Proxy/AppGuardProxyActivity;
.source "MonitoredActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleAdapter;,
        Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;
    }
.end annotation


# instance fields
.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/MonitoredActivity;->listeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addLifeCycleListener(Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/soundcloud/android/crop/MonitoredActivity;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/MonitoredActivity;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object v1, p0, Lcom/soundcloud/android/crop/MonitoredActivity;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;

    .line 58
    .local v0, "listener":Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;
    invoke-interface {v0, p0}, Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;->onActivityCreated(Lcom/soundcloud/android/crop/MonitoredActivity;)V

    goto :goto_0

    .line 60
    .end local v0    # "listener":Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 64
    invoke-super {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onDestroy()V

    .line 65
    iget-object v1, p0, Lcom/soundcloud/android/crop/MonitoredActivity;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;

    .line 66
    .local v0, "listener":Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;
    invoke-interface {v0, p0}, Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;->onActivityDestroyed(Lcom/soundcloud/android/crop/MonitoredActivity;)V

    goto :goto_0

    .line 68
    .end local v0    # "listener":Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onStart()V

    .line 73
    iget-object v1, p0, Lcom/soundcloud/android/crop/MonitoredActivity;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;

    .line 74
    .local v0, "listener":Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;
    invoke-interface {v0, p0}, Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;->onActivityStarted(Lcom/soundcloud/android/crop/MonitoredActivity;)V

    goto :goto_0

    .line 76
    .end local v0    # "listener":Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Lcom/inca/security/Proxy/AppGuardProxyActivity;->onStop()V

    .line 81
    iget-object v1, p0, Lcom/soundcloud/android/crop/MonitoredActivity;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;

    .line 82
    .local v0, "listener":Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;
    invoke-interface {v0, p0}, Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;->onActivityStopped(Lcom/soundcloud/android/crop/MonitoredActivity;)V

    goto :goto_0

    .line 84
    .end local v0    # "listener":Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;
    :cond_0
    return-void
.end method

.method public removeLifeCycleListener(Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/soundcloud/android/crop/MonitoredActivity;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method
