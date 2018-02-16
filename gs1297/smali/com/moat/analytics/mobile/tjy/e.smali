.class Lcom/moat/analytics/mobile/tjy/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/tjy/c;


# direct methods
.method private constructor <init>(Lcom/moat/analytics/mobile/tjy/c;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/tjy/e;->a:Lcom/moat/analytics/mobile/tjy/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/moat/analytics/mobile/tjy/c;Lcom/moat/analytics/mobile/tjy/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/tjy/e;-><init>(Lcom/moat/analytics/mobile/tjy/c;)V

    return-void
.end method

.method private a(Landroid/app/Activity;)Z
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/e;->a:Lcom/moat/analytics/mobile/tjy/c;

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/c;->c(Lcom/moat/analytics/mobile/tjy/c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/e;->a:Lcom/moat/analytics/mobile/tjy/c;

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/c;->a(Lcom/moat/analytics/mobile/tjy/c;)Lcom/moat/analytics/mobile/tjy/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/moat/analytics/mobile/tjy/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MoatActivityState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity destroyed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/tjy/e;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/e;->a:Lcom/moat/analytics/mobile/tjy/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/tjy/c;->a(Lcom/moat/analytics/mobile/tjy/c;Z)Z

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/e;->a:Lcom/moat/analytics/mobile/tjy/c;

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/c;->b(Lcom/moat/analytics/mobile/tjy/c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/base/exception/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/e;->a:Lcom/moat/analytics/mobile/tjy/c;

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/c;->a(Lcom/moat/analytics/mobile/tjy/c;)Lcom/moat/analytics/mobile/tjy/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/moat/analytics/mobile/tjy/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MoatActivityState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity paused: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/tjy/e;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/e;->a:Lcom/moat/analytics/mobile/tjy/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/tjy/c;->a(Lcom/moat/analytics/mobile/tjy/c;Z)Z

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/e;->a:Lcom/moat/analytics/mobile/tjy/c;

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/c;->a(Lcom/moat/analytics/mobile/tjy/c;)Lcom/moat/analytics/mobile/tjy/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/moat/analytics/mobile/tjy/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MoatActivityState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity resumed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/tjy/e;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/e;->a:Lcom/moat/analytics/mobile/tjy/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/tjy/c;->a(Lcom/moat/analytics/mobile/tjy/c;Z)Z

    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/e;->a:Lcom/moat/analytics/mobile/tjy/c;

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/c;->a(Lcom/moat/analytics/mobile/tjy/c;)Lcom/moat/analytics/mobile/tjy/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/moat/analytics/mobile/tjy/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MoatActivityState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity started: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/tjy/e;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/e;->a:Lcom/moat/analytics/mobile/tjy/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/tjy/c;->a(Lcom/moat/analytics/mobile/tjy/c;Z)Z

    :cond_1
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/e;->a:Lcom/moat/analytics/mobile/tjy/c;

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/c;->a(Lcom/moat/analytics/mobile/tjy/c;)Lcom/moat/analytics/mobile/tjy/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/moat/analytics/mobile/tjy/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MoatActivityState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity stopped: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/tjy/e;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/e;->a:Lcom/moat/analytics/mobile/tjy/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/tjy/c;->a(Lcom/moat/analytics/mobile/tjy/c;Z)Z

    :cond_1
    return-void
.end method
