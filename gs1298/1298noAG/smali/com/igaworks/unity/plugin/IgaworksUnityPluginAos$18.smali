.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$18;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->didGiveRewardItem(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cv:Ljava/lang/String;

.field private final synthetic val$rewardkey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$18;->val$cv:Ljava/lang/String;

    iput-object p2, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$18;->val$rewardkey:Ljava/lang/String;

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 591
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$18;->val$cv:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$18;->val$rewardkey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/igaworks/adpopcorn/IgawAdpopcornExtension;->didGiveRewardItemForUnityPlugin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    return-void
.end method
