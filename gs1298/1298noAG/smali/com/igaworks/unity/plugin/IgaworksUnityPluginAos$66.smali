.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$66;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->setNotificationIconStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$largeIcon:Ljava/lang/String;

.field private final synthetic val$parseColor:I

.field private final synthetic val$smallIcon:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$66;->val$smallIcon:Ljava/lang/String;

    iput-object p2, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$66;->val$largeIcon:Ljava/lang/String;

    iput p3, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$66;->val$parseColor:I

    .line 1686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1691
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$66;->val$smallIcon:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$66;->val$largeIcon:Ljava/lang/String;

    iget v3, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$66;->val$parseColor:I

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/liveops/IgawLiveOps;->setNotificationIconStyle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1692
    return-void
.end method
