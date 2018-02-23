.class final Lcom/tapjoy/TJAdUnitActivity$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitActivity;->handleClose(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJAdUnitActivity;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitActivity;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitActivity$1;->a:Lcom/tapjoy/TJAdUnitActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity$1;->a:Lcom/tapjoy/TJAdUnitActivity;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitActivity;->a(Lcom/tapjoy/TJAdUnitActivity;)Lcom/tapjoy/TJAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getCloseRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const-string v0, "TJAdUnitActivity"

    const-string v1, "Did not receive callback from content. Closing ad."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity$1;->a:Lcom/tapjoy/TJAdUnitActivity;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitActivity;->finish()V

    .line 253
    :cond_0
    return-void
.end method
