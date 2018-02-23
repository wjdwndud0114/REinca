.class public Lcom/tapjoy/mraid/controller/Network;
.super Lcom/tapjoy/mraid/controller/Abstract;
.source "SourceFile"


# instance fields
.field private c:Landroid/net/ConnectivityManager;

.field private d:I

.field private e:Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;

.field private f:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V
    .locals 1
    .param p1, "adView"    # Lcom/tapjoy/mraid/view/MraidView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/mraid/controller/Abstract;-><init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V

    .line 32
    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/Network;->c:Landroid/net/ConnectivityManager;

    .line 33
    return-void
.end method


# virtual methods
.method public getNetwork()Ljava/lang/String;
    .locals 4

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Network;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    :goto_0
    const-string v1, "unknown"

    .line 54
    if-nez v0, :cond_0

    .line 55
    const-string v0, "offline"

    .line 73
    :goto_1
    const-string v1, "MRAID Network"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getNetwork: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-object v0

    .line 50
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 58
    :cond_0
    sget-object v2, Lcom/tapjoy/mraid/controller/Network$1;->a:[I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 66
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 67
    if-nez v0, :cond_1

    .line 68
    const-string v0, "cell"

    goto :goto_1

    .line 60
    :pswitch_0
    const-string v0, "unknown"

    goto :goto_1

    .line 63
    :pswitch_1
    const-string v0, "offline"

    goto :goto_1

    .line 69
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 70
    const-string v0, "wifi"

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConnectionChanged()V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidview.fireChangeEvent({ network: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/mraid/controller/Network;->getNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    const-string v1, "MRAID Network"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Network;->a:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public startNetworkListener()V
    .locals 3

    .prologue
    .line 81
    iget v0, p0, Lcom/tapjoy/mraid/controller/Network;->d:I

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;-><init>(Lcom/tapjoy/mraid/controller/Network;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/Network;->e:Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/mraid/controller/Network;->f:Landroid/content/IntentFilter;

    .line 84
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Network;->f:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    :cond_0
    iget v0, p0, Lcom/tapjoy/mraid/controller/Network;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/mraid/controller/Network;->d:I

    .line 87
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Network;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Network;->e:Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;

    iget-object v2, p0, Lcom/tapjoy/mraid/controller/Network;->f:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    return-void
.end method

.method public stopAllListeners()V
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/mraid/controller/Network;->d:I

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Network;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Network;->e:Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopNetworkListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    iget v0, p0, Lcom/tapjoy/mraid/controller/Network;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tapjoy/mraid/controller/Network;->d:I

    .line 95
    iget v0, p0, Lcom/tapjoy/mraid/controller/Network;->d:I

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/tapjoy/mraid/controller/Network;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/mraid/controller/Network;->e:Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    iput-object v2, p0, Lcom/tapjoy/mraid/controller/Network;->e:Lcom/tapjoy/mraid/util/NetworkBroadcastReceiver;

    .line 98
    iput-object v2, p0, Lcom/tapjoy/mraid/controller/Network;->f:Landroid/content/IntentFilter;

    .line 100
    :cond_0
    return-void
.end method
