.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$61;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->cancelClientPushEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$eventId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$61;->val$eventId:I

    .line 1591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1595
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$61;->val$eventId:I

    invoke-static {v0, v1}, Lcom/igaworks/liveops/IgawLiveOps;->cancelClientPushEvent(Landroid/content/Context;I)V

    .line 1596
    return-void
.end method
