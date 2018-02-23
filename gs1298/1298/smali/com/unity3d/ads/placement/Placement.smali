.class public Lcom/unity3d/ads/placement/Placement;
.super Ljava/lang/Object;
.source "Placement.java"


# static fields
.field private static _defaultPlacement:Ljava/lang/String;

.field private static _placementReadyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/UnityAds$PlacementState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static currentState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;
    .locals 1
    .param p0, "placement"    # Ljava/lang/String;

    .prologue
    .line 54
    sget-object v0, Lcom/unity3d/ads/placement/Placement;->_placementReadyMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/placement/Placement;->_placementReadyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    sget-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->NOT_AVAILABLE:Lcom/unity3d/ads/UnityAds$PlacementState;

    .line 58
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/unity3d/ads/placement/Placement;->_placementReadyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/UnityAds$PlacementState;

    goto :goto_0
.end method

.method public static getDefaultPlacement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/unity3d/ads/placement/Placement;->_defaultPlacement:Ljava/lang/String;

    return-object v0
.end method

.method public static getPlacementState()Lcom/unity3d/ads/UnityAds$PlacementState;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/unity3d/ads/placement/Placement;->_defaultPlacement:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 37
    sget-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->NOT_AVAILABLE:Lcom/unity3d/ads/UnityAds$PlacementState;

    .line 40
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unity3d/ads/placement/Placement;->_defaultPlacement:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/ads/placement/Placement;->getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;
    .locals 1
    .param p0, "placement"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/unity3d/ads/placement/Placement;->currentState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v0

    return-object v0
.end method

.method public static isReady()Z
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/unity3d/ads/placement/Placement;->getPlacementState()Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/UnityAds$PlacementState;->READY:Lcom/unity3d/ads/UnityAds$PlacementState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isReady(Ljava/lang/String;)Z
    .locals 2
    .param p0, "placement"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/unity3d/ads/placement/Placement;->getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/UnityAds$PlacementState;->READY:Lcom/unity3d/ads/UnityAds$PlacementState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/unity3d/ads/placement/Placement;->_placementReadyMap:Ljava/util/HashMap;

    .line 46
    sput-object v0, Lcom/unity3d/ads/placement/Placement;->_defaultPlacement:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static setDefaultPlacement(Ljava/lang/String;)V
    .locals 0
    .param p0, "placement"    # Ljava/lang/String;

    .prologue
    .line 12
    sput-object p0, Lcom/unity3d/ads/placement/Placement;->_defaultPlacement:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static setPlacementState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "placement"    # Ljava/lang/String;
    .param p1, "placementState"    # Ljava/lang/String;

    .prologue
    .line 16
    sget-object v0, Lcom/unity3d/ads/placement/Placement;->_placementReadyMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unity3d/ads/placement/Placement;->_placementReadyMap:Ljava/util/HashMap;

    .line 20
    :cond_0
    sget-object v0, Lcom/unity3d/ads/placement/Placement;->_placementReadyMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/unity3d/ads/UnityAds$PlacementState;->valueOf(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void
.end method
