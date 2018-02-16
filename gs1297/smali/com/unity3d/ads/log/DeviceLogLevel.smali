.class public Lcom/unity3d/ads/log/DeviceLogLevel;
.super Ljava/lang/Object;
.source "DeviceLogLevel.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UnityAds"


# instance fields
.field private _receivingMethodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "receivingMethodName"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/log/DeviceLogLevel;->_receivingMethodName:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/unity3d/ads/log/DeviceLogLevel;->_receivingMethodName:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityAds"

    return-object v0
.end method

.method public getReceivingMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/unity3d/ads/log/DeviceLogLevel;->_receivingMethodName:Ljava/lang/String;

    return-object v0
.end method
