.class public Lcom/inca/security/AppGuard/AppGuardClientUnityBridge$2;
.super Landroid/os/Handler;
.source "sc"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic IiIiIiiIii:Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;


# direct methods
.method public constructor <init>(Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;Landroid/os/Looper;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;
    .param p2, "arg1"    # Landroid/os/Looper;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/inca/security/AppGuard/AppGuardClientUnityBridge$2;->IiIiIiiIii:Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    if-lez v0, :cond_0

    .line 120
    const-string v0, "\u0002\u001b3,6\n1\u000f\u0016\u0005*\u001f:&\"\u0005\"\u000c&\u0019" #AppGuardUnityManager

    invoke-static {v0}, Lcom/inca/security/ib;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%Z\u001c]%X+@#[$w+X&V+W!" #onViolationCallback #onViolationCallback

    invoke-static {v1}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    return-void
.end method
