.class final Lcom/tnkfactory/ad/unity/TnkUnityPlugin$2;
.super Ljava/lang/Object;
.source "TnkUnityPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->initInstance(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private appId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$2;->appId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$2;->appId:Ljava/lang/String;

    .line 43
    return-object p0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$2;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/TnkSession;->initInstance(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    return-void
.end method
