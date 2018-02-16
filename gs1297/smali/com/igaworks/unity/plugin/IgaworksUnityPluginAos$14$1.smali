.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$14$1;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Lcom/igaworks/adpopcorn/interfaces/IAdPOPcornEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$14;


# direct methods
.method constructor <init>(Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$14;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$14$1;->this$1:Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$14;

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnClosedOfferWallPage()V
    .locals 3

    .prologue
    .line 494
    const-string v0, "ApUnityPlugin"

    const-string v1, "closed offerwall page"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v0, "IgaworksUnityPluginAOS"

    const-string v1, "OnClosedOfferwallPageForUnity"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    return-void
.end method
