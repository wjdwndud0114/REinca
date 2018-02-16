.class Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$10;
.super Ljava/lang/Object;
.source "IgaworksUnityPluginAos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos;->setSensorLandscapeEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$isEnable:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$10;->val$isEnable:Z

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 322
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/igaworks/unity/plugin/IgaworksUnityPluginAos$10;->val$isEnable:Z

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/IgawAdpopcorn;->setSensorLandscapeEnable(Landroid/content/Context;Z)V

    .line 323
    return-void
.end method
