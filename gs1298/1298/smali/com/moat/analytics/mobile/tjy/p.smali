.class Lcom/moat/analytics/mobile/tjy/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/tjy/n;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/tjy/n;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/tjy/p;->a:Lcom/moat/analytics/mobile/tjy/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    const/4 v4, -0x1

    if-eqz p1, :cond_0

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/p;->a:Lcom/moat/analytics/mobile/tjy/n;

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/n;->b(Lcom/moat/analytics/mobile/tjy/n;)Lcom/moat/analytics/mobile/tjy/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/moat/analytics/mobile/tjy/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "MoatJavaScriptBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Received value is:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_5

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/p;->a:Lcom/moat/analytics/mobile/tjy/n;

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/n;->c(Lcom/moat/analytics/mobile/tjy/n;)I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/p;->a:Lcom/moat/analytics/mobile/tjy/n;

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/n;->c(Lcom/moat/analytics/mobile/tjy/n;)I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/p;->a:Lcom/moat/analytics/mobile/tjy/n;

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/n;->d(Lcom/moat/analytics/mobile/tjy/n;)V

    :cond_3
    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/p;->a:Lcom/moat/analytics/mobile/tjy/n;

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/n;->e(Lcom/moat/analytics/mobile/tjy/n;)I

    :cond_4
    :goto_1
    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "(String)"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/p;->a:Lcom/moat/analytics/mobile/tjy/n;

    invoke-static {v0, v4}, Lcom/moat/analytics/mobile/tjy/n;->a(Lcom/moat/analytics/mobile/tjy/n;I)I

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/p;->a:Lcom/moat/analytics/mobile/tjy/n;

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/n;->a(Lcom/moat/analytics/mobile/tjy/n;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/p;->a:Lcom/moat/analytics/mobile/tjy/n;

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/n;->b(Lcom/moat/analytics/mobile/tjy/n;)Lcom/moat/analytics/mobile/tjy/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/moat/analytics/mobile/tjy/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "MoatJavaScriptBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received unusual value from Javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/tjy/p;->a(Ljava/lang/String;)V

    return-void
.end method
