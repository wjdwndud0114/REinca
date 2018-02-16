.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateComplete;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateComplete"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V

    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return-object v0
.end method
