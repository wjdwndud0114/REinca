.class Lcom/moat/analytics/mobile/tjy/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/tjy/a;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Ljava/lang/ref/WeakReference;

.field private c:Z

.field private final d:Lcom/moat/analytics/mobile/tjy/ap;

.field private e:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/moat/analytics/mobile/tjy/ap;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/moat/analytics/mobile/tjy/base/asserts/a;->a(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/moat/analytics/mobile/tjy/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "MoatActivityState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Listening to Activity: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/tjy/c;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/tjy/c;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/moat/analytics/mobile/tjy/c;->d:Lcom/moat/analytics/mobile/tjy/ap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/tjy/c;->c:Z

    return-void

    :cond_1
    const-string v0, "null"

    goto :goto_0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/tjy/c;)Lcom/moat/analytics/mobile/tjy/ap;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/c;->d:Lcom/moat/analytics/mobile/tjy/ap;

    return-object v0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/tjy/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/tjy/c;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/tjy/c;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/c;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic c(Lcom/moat/analytics/mobile/tjy/c;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/c;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/tjy/c;->e:Z

    return v0
.end method

.method public b()V
    .locals 2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/tjy/c;->c:Z

    if-nez v0, :cond_0

    new-instance v1, Lcom/moat/analytics/mobile/tjy/e;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/moat/analytics/mobile/tjy/e;-><init>(Lcom/moat/analytics/mobile/tjy/c;Lcom/moat/analytics/mobile/tjy/d;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public c()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method
