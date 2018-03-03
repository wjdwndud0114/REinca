.class public Lcom/tapjoy/TapjoyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-static {p1}, Lcom/tapjoy/internal/gb;->b(Landroid/content/Context;)Lcom/tapjoy/internal/gb;

    .line 1164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1165
    const-string v1, "com.tapjoy.PUSH_CLICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1166
    const-string v0, "com.tapjoy.PUSH_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "com.tapjoy.PUSH_PAYLOAD"

    .line 1167
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "com.tapjoy.PUSH_PLACEMENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1252
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 33
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2, v2}, Lcom/tapjoy/TapjoyReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 36
    :cond_1
    return-void

    .line 1256
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1278
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1280
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1282
    invoke-virtual {v0, v6, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 1283
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_7

    :cond_3
    move-object v0, v2

    .line 1257
    :goto_1
    if-eqz v0, :cond_8

    .line 1258
    if-eqz v4, :cond_4

    .line 1259
    const-string v1, "com.tapjoy.PUSH_PAYLOAD"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1261
    :cond_4
    invoke-static {p1}, Lcom/tapjoy/internal/fz;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fz;

    move-result-object v1

    .line 1319
    iget-object v4, v1, Lcom/tapjoy/internal/fz;->f:Lcom/tapjoy/internal/gc;

    invoke-virtual {v4, v3}, Lcom/tapjoy/internal/gc;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1320
    iget-object v1, v1, Lcom/tapjoy/internal/fz;->g:Lcom/tapjoy/internal/fy;

    .line 2222
    sget-object v4, Lcom/tapjoy/internal/eb;->APP:Lcom/tapjoy/internal/eb;

    const-string v6, "push_click"

    invoke-virtual {v1, v4, v6}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/eb;Ljava/lang/String;)Lcom/tapjoy/internal/dy$a;

    move-result-object v4

    .line 2223
    new-instance v6, Lcom/tapjoy/internal/ef;

    invoke-direct {v6, v2, v2, v3}, Lcom/tapjoy/internal/ef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v4, Lcom/tapjoy/internal/dy$a;->s:Lcom/tapjoy/internal/ef;

    .line 2224
    invoke-virtual {v1, v4}, Lcom/tapjoy/internal/fy;->a(Lcom/tapjoy/internal/dy$a;)V

    .line 1322
    :cond_5
    if-eqz v5, :cond_6

    .line 1323
    invoke-static {v3, v5}, Lcom/tapjoy/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    :cond_6
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1287
    :cond_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1288
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1289
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    .line 1290
    goto :goto_1

    .line 1265
    :cond_8
    const-string v0, "No intent that can be used to launch the main activity."

    invoke-static {v0}, Lcom/tapjoy/internal/fw;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
