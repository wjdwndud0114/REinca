.class public Lcom/tapjoy/InstallReferrerReceiver;
.super Lcom/tapjoy/internal/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/tapjoy/internal/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-static {p1, p2}, Lcom/tapjoy/internal/fz;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/InstallReferrerReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    .line 51
    const-string v2, "fiverocks:verify"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/tapjoy/InstallReferrerReceiver;->isOrderedBroadcast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tapjoy/InstallReferrerReceiver;->setResultCode(I)V

    .line 54
    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://play.google.com/store/apps/details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&referrer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 58
    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/tapjoy/InstallReferrerReceiver;->setResultData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
