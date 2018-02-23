.class public final enum Lcom/unity3d/ads/UnityAds$PlacementState;
.super Ljava/lang/Enum;
.source "UnityAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/UnityAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlacementState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/UnityAds$PlacementState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/UnityAds$PlacementState;

.field public static final enum DISABLED:Lcom/unity3d/ads/UnityAds$PlacementState;

.field public static final enum NOT_AVAILABLE:Lcom/unity3d/ads/UnityAds$PlacementState;

.field public static final enum NO_FILL:Lcom/unity3d/ads/UnityAds$PlacementState;

.field public static final enum READY:Lcom/unity3d/ads/UnityAds$PlacementState;

.field public static final enum WAITING:Lcom/unity3d/ads/UnityAds$PlacementState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/unity3d/ads/UnityAds$PlacementState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/UnityAds$PlacementState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->READY:Lcom/unity3d/ads/UnityAds$PlacementState;

    .line 55
    new-instance v0, Lcom/unity3d/ads/UnityAds$PlacementState;

    const-string v1, "NOT_AVAILABLE"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/UnityAds$PlacementState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->NOT_AVAILABLE:Lcom/unity3d/ads/UnityAds$PlacementState;

    .line 60
    new-instance v0, Lcom/unity3d/ads/UnityAds$PlacementState;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/ads/UnityAds$PlacementState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->DISABLED:Lcom/unity3d/ads/UnityAds$PlacementState;

    .line 65
    new-instance v0, Lcom/unity3d/ads/UnityAds$PlacementState;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/UnityAds$PlacementState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->WAITING:Lcom/unity3d/ads/UnityAds$PlacementState;

    .line 70
    new-instance v0, Lcom/unity3d/ads/UnityAds$PlacementState;

    const-string v1, "NO_FILL"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/ads/UnityAds$PlacementState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->NO_FILL:Lcom/unity3d/ads/UnityAds$PlacementState;

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/unity3d/ads/UnityAds$PlacementState;

    sget-object v1, Lcom/unity3d/ads/UnityAds$PlacementState;->READY:Lcom/unity3d/ads/UnityAds$PlacementState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/ads/UnityAds$PlacementState;->NOT_AVAILABLE:Lcom/unity3d/ads/UnityAds$PlacementState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/ads/UnityAds$PlacementState;->DISABLED:Lcom/unity3d/ads/UnityAds$PlacementState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/ads/UnityAds$PlacementState;->WAITING:Lcom/unity3d/ads/UnityAds$PlacementState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/ads/UnityAds$PlacementState;->NO_FILL:Lcom/unity3d/ads/UnityAds$PlacementState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->$VALUES:[Lcom/unity3d/ads/UnityAds$PlacementState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/unity3d/ads/UnityAds$PlacementState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/UnityAds$PlacementState;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/UnityAds$PlacementState;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->$VALUES:[Lcom/unity3d/ads/UnityAds$PlacementState;

    invoke-virtual {v0}, [Lcom/unity3d/ads/UnityAds$PlacementState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/UnityAds$PlacementState;

    return-object v0
.end method
