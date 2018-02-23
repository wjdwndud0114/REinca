.class public Lcom/unity3d/ads/metadata/MediationMetaData;
.super Lcom/unity3d/ads/metadata/MetaData;
.source "MediationMetaData.java"


# static fields
.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_ORDINAL:Ljava/lang/String; = "ordinal"

.field public static final KEY_VERSION:Ljava/lang/String; = "version"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/unity3d/ads/metadata/MetaData;-><init>(Landroid/content/Context;)V

    .line 12
    const-string v0, "mediation"

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/metadata/MediationMetaData;->setCategory(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "mediationNetworkName"    # Ljava/lang/String;

    .prologue
    .line 20
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/unity3d/ads/metadata/MediationMetaData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public setOrdinal(I)V
    .locals 2
    .param p1, "ordinal"    # I

    .prologue
    .line 16
    const-string v0, "ordinal"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/metadata/MediationMetaData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "mediationSdkVersion"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v0, "version"

    invoke-virtual {p0, v0, p1}, Lcom/unity3d/ads/metadata/MediationMetaData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    return-void
.end method
