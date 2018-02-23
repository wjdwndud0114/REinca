.class public Lcom/inca/security/AppGuard/AppGuardClientUnityBridge$1;
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
    .line 181
    iput-object p1, p0, Lcom/inca/security/AppGuard/AppGuardClientUnityBridge$1;->IiIiIiiIii:Lcom/inca/security/AppGuard/AppGuardClientUnityBridge;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 96
    const-string v0, "\u0011x O%i\"l\u0005f9|)E1f1o5z" #AppGuardUnityManager

    invoke-static {v0}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "g>[bI%|8\\\"q\u0013i<d2i3c" #onS2AuthTryCallback

    invoke-static {v0}, Lcom/inca/security/pb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/inca/security/va;->iIiIIiIIIi([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void
.end method
