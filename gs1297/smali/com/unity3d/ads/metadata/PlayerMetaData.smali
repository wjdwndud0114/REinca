.class public Lcom/unity3d/ads/metadata/PlayerMetaData;
.super Lcom/unity3d/ads/metadata/MetaData;
.source "PlayerMetaData.java"


# static fields
.field public static final KEY_SERVER_ID:Ljava/lang/String; = "server_id"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/unity3d/ads/metadata/MetaData;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v0, "player"

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/metadata/PlayerMetaData;->setCategory(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public setServerId(Ljava/lang/String;)V
    .locals 1
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 14
    const-string v0, "server_id"

    invoke-virtual {p0, v0, p1}, Lcom/unity3d/ads/metadata/PlayerMetaData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    return-void
.end method
