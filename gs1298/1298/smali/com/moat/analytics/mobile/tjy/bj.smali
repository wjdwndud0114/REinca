.class Lcom/moat/analytics/mobile/tjy/bj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/tjy/WebAdTracker;


# instance fields
.field private final a:Lcom/moat/analytics/mobile/tjy/base/functional/a;

.field private final b:Lcom/moat/analytics/mobile/tjy/ap;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Lcom/moat/analytics/mobile/tjy/a;Lcom/moat/analytics/mobile/tjy/ap;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/moat/analytics/mobile/tjy/bj;->b:Lcom/moat/analytics/mobile/tjy/ap;

    invoke-interface {p3}, Lcom/moat/analytics/mobile/tjy/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MoatWebAdTracker"

    const-string v1, "In initialization method."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_2

    invoke-interface {p3}, Lcom/moat/analytics/mobile/tjy/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MoatWebAdTracker"

    const-string v1, "WebView is null. Will not track."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a()Lcom/moat/analytics/mobile/tjy/base/functional/a;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/tjy/bj;->a:Lcom/moat/analytics/mobile/tjy/base/functional/a;

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/moat/analytics/mobile/tjy/bi;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/moat/analytics/mobile/tjy/bi;-><init>(Landroid/view/View;Landroid/webkit/WebView;ZLcom/moat/analytics/mobile/tjy/a;Lcom/moat/analytics/mobile/tjy/ap;)V

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/tjy/base/functional/a;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/tjy/bj;->a:Lcom/moat/analytics/mobile/tjy/base/functional/a;

    goto :goto_0
.end method


# virtual methods
.method public track()Z
    .locals 4

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/bj;->b:Lcom/moat/analytics/mobile/tjy/ap;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/tjy/ap;->b()Z

    move-result v2

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    :try_start_0
    const-string v0, "MoatWebAdTracker"

    const-string v3, "In track method."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/bj;->a:Lcom/moat/analytics/mobile/tjy/base/functional/a;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->c()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v2, :cond_4

    const-string v0, "MoatWebAdTracker"

    const-string v3, "Internal tracker not available. Not tracking."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/moat/analytics/mobile/tjy/base/exception/b; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v2, :cond_1

    const-string v2, "MoatWebAdTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Attempt to start tracking ad was "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "successful."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/bj;->a:Lcom/moat/analytics/mobile/tjy/base/functional/a;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/tjy/bh;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/tjy/bh;->c()Z
    :try_end_1
    .catch Lcom/moat/analytics/mobile/tjy/base/exception/b; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_2
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/base/exception/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    const-string v0, "un"

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method
