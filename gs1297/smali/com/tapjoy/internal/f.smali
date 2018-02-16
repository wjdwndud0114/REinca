.class public final Lcom/tapjoy/internal/f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    const-string v0, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "referrer"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 67
    const/4 v1, 0x0

    .line 69
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 70
    invoke-static {v1, p2}, Lcom/tapjoy/internal/bl;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    .line 77
    :catch_0
    move-exception v2

    invoke-static {v1}, Lcom/tapjoy/internal/dc;->a(Ljava/io/Closeable;)V

    .line 78
    const-string v1, "install_referrer"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 79
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    invoke-static {p2}, Lcom/tapjoy/internal/f;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    const-string v1, "install_referrer"

    invoke-static {p1, v1, v0}, Lcom/tapjoy/internal/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    :cond_0
    return-void
.end method
