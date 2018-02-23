.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$58;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->setTargetingData(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$userData:J

.field private final synthetic val$userGroup:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$58;->val$userGroup:Ljava/lang/String;

    iput-wide p2, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$58;->val$userData:J

    .line 1546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1551
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$58;->val$userGroup:Ljava/lang/String;

    iget-wide v2, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$58;->val$userData:J

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/liveops/IgawLiveOps;->setTargetingData(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1553
    return-void
.end method
