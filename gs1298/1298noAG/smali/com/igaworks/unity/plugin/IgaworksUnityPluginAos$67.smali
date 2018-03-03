.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$67;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->setNotificationOption(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$priority:I

.field private final synthetic val$visibility:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$67;->val$priority:I

    iput p2, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$67;->val$visibility:I

    .line 1696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1701
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$67;->val$priority:I

    iget v2, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$67;->val$visibility:I

    invoke-static {v0, v1, v2}, Lcom/igaworks/liveops/IgawLiveOps;->setNotificationOption(Landroid/content/Context;II)V

    .line 1702
    return-void
.end method
