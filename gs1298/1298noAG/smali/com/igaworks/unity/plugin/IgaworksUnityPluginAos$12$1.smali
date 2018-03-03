.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$12$1;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Lcom/igaworks/adpopcorn/interfaces/IAPLoadVideoAdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$12;


# direct methods
.method constructor <init>(Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$12;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$12$1;->this$1:Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$12;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnLoadVideoAdFailure(Lcom/igaworks/adpopcorn/cores/common/APVideoError;)V
    .locals 3
    .param p1, "apError"    # Lcom/igaworks/adpopcorn/cores/common/APVideoError;

    .prologue
    .line 347
    const-string v0, "IGAW_QA_3RD"

    const-string v1, "OnLoadVideoAdFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v0, "IgaworksUnityPluginAOS"

    const-string v1, "OnLoadVideoAdFailureForUnity"

    invoke-virtual {p1}, Lcom/igaworks/adpopcorn/cores/common/APVideoError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public OnLoadVideoAdSuccess()V
    .locals 3

    .prologue
    .line 354
    const-string v0, "IGAW_QA_3RD"

    const-string v1, "OnLoadVideoAdSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string v0, "IgaworksUnityPluginAOS"

    const-string v1, "OnLoadVideoAdSuccessForUnity"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method
