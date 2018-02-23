.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$63;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->setBigTextClientPushEvent(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$alwaysIsShown:Z

.field private final synthetic val$bigContentTitle:Ljava/lang/String;

.field private final synthetic val$bigText:Ljava/lang/String;

.field private final synthetic val$contentText:Ljava/lang/String;

.field private final synthetic val$eventId:I

.field private final synthetic val$second:J

.field private final synthetic val$summaryText:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    .prologue
    .line 1
    iput-wide p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$63;->val$second:J

    iput-object p3, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$63;->val$contentText:Ljava/lang/String;

    iput-object p4, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$63;->val$bigContentTitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$63;->val$bigText:Ljava/lang/String;

    iput-object p6, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$63;->val$summaryText:Ljava/lang/String;

    iput p7, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$63;->val$eventId:I

    iput-boolean p8, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$63;->val$alwaysIsShown:Z

    .line 1619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1624
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$63;->val$second:J

    iget-object v4, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$63;->val$contentText:Ljava/lang/String;

    iget-object v5, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$63;->val$bigContentTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$63;->val$bigText:Ljava/lang/String;

    iget-object v7, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$63;->val$summaryText:Ljava/lang/String;

    iget v8, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$63;->val$eventId:I

    iget-boolean v9, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$63;->val$alwaysIsShown:Z

    invoke-static/range {v1 .. v9}, Lcom/igaworks/liveops/IgawLiveOps;->setBigTextClientPushEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1626
    return-void
.end method
