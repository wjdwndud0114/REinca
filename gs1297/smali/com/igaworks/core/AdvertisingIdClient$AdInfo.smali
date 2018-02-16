.class public final Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/core/AdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdInfo"
.end annotation


# instance fields
.field private final advertisingId:Ljava/lang/String;

.field private final limitAdTrackingEnabled:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "advertisingId"    # Ljava/lang/String;
    .param p2, "limitAdTrackingEnabled"    # Z

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->advertisingId:Ljava/lang/String;

    .line 95
    iput-boolean p2, p0, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->limitAdTrackingEnabled:Z

    .line 97
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->advertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->limitAdTrackingEnabled:Z

    return v0
.end method
