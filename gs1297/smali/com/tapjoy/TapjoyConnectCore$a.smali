.class final Lcom/tapjoy/TapjoyConnectCore$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyConnectCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TapjoyConnectCore;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TapjoyConnectCore;)V
    .locals 0

    .prologue
    .line 1411
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectCore$a;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TapjoyConnectCore;B)V
    .locals 0

    .prologue
    .line 1411
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyConnectCore$a;-><init>(Lcom/tapjoy/TapjoyConnectCore;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x3c

    .line 1415
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore$a;->a:Lcom/tapjoy/TapjoyConnectCore;

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnectCore$a;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->b(Lcom/tapjoy/TapjoyConnectCore;)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/tapjoy/TapjoyConnectCore;->a(Lcom/tapjoy/TapjoyConnectCore;J)J

    .line 1417
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "elapsed_time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnectCore$a;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->b(Lcom/tapjoy/TapjoyConnectCore;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnectCore$a;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->b(Lcom/tapjoy/TapjoyConnectCore;)J

    move-result-wide v2

    div-long/2addr v2, v8

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnectCore$a;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->b(Lcom/tapjoy/TapjoyConnectCore;)J

    move-result-wide v2

    div-long/2addr v2, v8

    rem-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tjcPrefrences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1420
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1421
    const-string v1, "tapjoy_elapsed_time"

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnectCore$a;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->b(Lcom/tapjoy/TapjoyConnectCore;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1422
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1425
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore$a;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->b(Lcom/tapjoy/TapjoyConnectCore;)J

    move-result-wide v0

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1427
    const-string v0, "TapjoyConnect"

    const-string v1, "timer done..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1432
    const-string v0, "TapjoyConnect"

    const-string v1, "Calling PPA actionComplete..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore$a;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->actionComplete(Ljava/lang/String;)V

    .line 1437
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore$a;->cancel()Z

    .line 1439
    :cond_1
    return-void
.end method
