.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$62;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->setNormalClientPushEvent(JLjava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$alwaysIsShown:Z

.field private final synthetic val$contentText:Ljava/lang/String;

.field private final synthetic val$eventId:I

.field private final synthetic val$second:J


# direct methods
.method constructor <init>(JLjava/lang/String;IZ)V
    .locals 1

    .prologue
    .line 1
    iput-wide p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$62;->val$second:J

    iput-object p3, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$62;->val$contentText:Ljava/lang/String;

    iput p4, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$62;->val$eventId:I

    iput-boolean p5, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$62;->val$alwaysIsShown:Z

    .line 1603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1608
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$62;->val$second:J

    iget-object v4, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$62;->val$contentText:Ljava/lang/String;

    iget v5, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$62;->val$eventId:I

    iget-boolean v6, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$62;->val$alwaysIsShown:Z

    invoke-static/range {v1 .. v6}, Lcom/igaworks/liveops/IgawLiveOps;->setNormalClientPushEvent(Landroid/content/Context;JLjava/lang/String;IZ)V

    .line 1610
    return-void
.end method
