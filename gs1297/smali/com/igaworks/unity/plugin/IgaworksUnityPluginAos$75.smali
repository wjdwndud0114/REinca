.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$75;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->openNanooFanPage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$openAutomatically:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$75;->val$openAutomatically:Z

    .line 1853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1858
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$75;->val$openAutomatically:Z

    new-instance v2, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$75$1;

    invoke-direct {v2, p0}, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$75$1;-><init>(Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$75;)V

    invoke-static {v0, v1, v2}, Lcom/igaworks/nanoo/IgawNanoo;->openFanPage(Landroid/app/Activity;ZLcom/igaworks/interfaces/HttpCallbackListener;)V

    .line 1867
    return-void
.end method
