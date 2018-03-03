.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$68;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->setStackingNotificationOption(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$ContentText:Ljava/lang/String;

.field private final synthetic val$ContentTitle:Ljava/lang/String;

.field private final synthetic val$bigContentSummaryText:Ljava/lang/String;

.field private final synthetic val$bigContentTitle:Ljava/lang/String;

.field private final synthetic val$useStacking:Z

.field private final synthetic val$useTitleForStacking:Z


# direct methods
.method constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$68;->val$useStacking:Z

    iput-boolean p2, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$68;->val$useTitleForStacking:Z

    iput-object p3, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$68;->val$ContentTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$68;->val$ContentText:Ljava/lang/String;

    iput-object p5, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$68;->val$bigContentTitle:Ljava/lang/String;

    iput-object p6, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$68;->val$bigContentSummaryText:Ljava/lang/String;

    .line 1706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1711
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$68;->val$useStacking:Z

    iget-boolean v2, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$68;->val$useTitleForStacking:Z

    iget-object v3, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$68;->val$ContentTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$68;->val$ContentText:Ljava/lang/String;

    iget-object v5, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$68;->val$bigContentTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$68;->val$bigContentSummaryText:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/igaworks/liveops/IgawLiveOps;->setStackingNotificationOption(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    return-void
.end method
