.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$75$1;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Lcom/igaworks/interfaces/HttpCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$75;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$75;


# direct methods
.method constructor <init>(Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$75;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$75$1;->this$1:Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$75;

    .line 1858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 1862
    const-string v0, "Unity"

    const-string v1, "call onOpenNanooFanPageForUnity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    const-string v0, "IgaworksUnityPluginAOS"

    const-string v1, "onOpenNanooFanPageForUnity"

    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "result":Ljava/lang/String;
    :cond_0
    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    return-void
.end method
