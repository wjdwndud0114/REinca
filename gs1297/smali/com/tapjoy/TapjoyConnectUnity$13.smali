.class final Lcom/tapjoy/TapjoyConnectUnity$13;
.super Ljava/lang/Object;
.source "TapjoyConnectUnity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyConnectUnity;->onActivityStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 411
    # getter for: Lcom/tapjoy/TapjoyConnectUnity;->activity:Landroid/app/Activity;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectUnity;->access$500()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/Tapjoy;->onActivityStop(Landroid/app/Activity;)V

    .line 412
    return-void
.end method
