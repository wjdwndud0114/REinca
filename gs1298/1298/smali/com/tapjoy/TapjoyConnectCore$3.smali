.class final Lcom/tapjoy/TapjoyConnectCore$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectCore;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/mediation/TJMediationNetwork;

.field final synthetic b:Lcom/tapjoy/TapjoyConnectCore;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectCore;Lcom/tapjoy/mediation/TJMediationNetwork;)V
    .locals 0

    .prologue
    .line 2423
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectCore$3;->b:Lcom/tapjoy/TapjoyConnectCore;

    iput-object p2, p0, Lcom/tapjoy/TapjoyConnectCore$3;->a:Lcom/tapjoy/mediation/TJMediationNetwork;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2426
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore$3;->a:Lcom/tapjoy/mediation/TJMediationNetwork;

    if-eqz v0, :cond_0

    .line 2427
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore$3;->a:Lcom/tapjoy/mediation/TJMediationNetwork;

    invoke-interface {v0}, Lcom/tapjoy/mediation/TJMediationNetwork;->init()V

    .line 2431
    :goto_0
    return-void

    .line 2429
    :cond_0
    const-string v0, "TapjoyConnect"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "Failed to cast mediation connect flag into TJMediationNetwork type! Make sure to pass in an ArrayList<TJMediationNetwork> type as your mediation configs."

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_0
.end method
