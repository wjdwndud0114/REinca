.class final Lcom/tnkfactory/ad/unity/TnkUnityPlugin$30;
.super Ljava/lang/Object;
.source "TnkUnityPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->popupMoreApps(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private title:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 636
    iput-object p1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$30;->title:Ljava/lang/String;

    .line 637
    return-object p0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 642
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$30;->title:Ljava/lang/String;

    new-instance v2, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;

    invoke-direct {v2}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$UnityTnkAdListener;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/tnkfactory/ad/TnkSession;->popupMoreApps(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;)V

    .line 643
    return-void
.end method
