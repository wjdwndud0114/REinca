.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$47;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->showAD(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$47;->val$name:Ljava/lang/String;

    .line 1235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$47;->val$name:Ljava/lang/String;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v2, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$47$1;

    invoke-direct {v2, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$47$1;-><init>(Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$47;)V

    invoke-static {v0, v1, v2}, Lcom/igaworks/promotion/IgawPromotion;->showAD(Ljava/lang/String;Landroid/app/Activity;Lcom/igaworks/adbrix/interfaces/PromotionActionListener;)V

    .line 1266
    return-void
.end method
