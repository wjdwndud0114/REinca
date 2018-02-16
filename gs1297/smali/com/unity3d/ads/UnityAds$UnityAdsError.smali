.class public final enum Lcom/unity3d/ads/UnityAds$UnityAdsError;
.super Ljava/lang/Enum;
.source "UnityAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/UnityAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnityAdsError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/UnityAds$UnityAdsError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum AD_BLOCKER_DETECTED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum DEVICE_ID_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum FILE_IO_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum INITIALIZE_FAILED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum INIT_SANITY_CHECK_FAIL:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum NOT_INITIALIZED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum SHOW_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum VIDEO_PLAYER_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "NOT_INITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->NOT_INITIALIZED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 75
    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "INITIALIZE_FAILED"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INITIALIZE_FAILED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 76
    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "INVALID_ARGUMENT"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 77
    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "VIDEO_PLAYER_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->VIDEO_PLAYER_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 78
    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "INIT_SANITY_CHECK_FAIL"

    invoke-direct {v0, v1, v7}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INIT_SANITY_CHECK_FAIL:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 79
    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "AD_BLOCKER_DETECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->AD_BLOCKER_DETECTED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 80
    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "FILE_IO_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->FILE_IO_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 81
    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "DEVICE_ID_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->DEVICE_ID_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 82
    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "SHOW_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->SHOW_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 83
    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "INTERNAL_ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 73
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/unity3d/ads/UnityAds$UnityAdsError;

    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsError;->NOT_INITIALIZED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INITIALIZE_FAILED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsError;->VIDEO_PLAYER_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INIT_SANITY_CHECK_FAIL:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/unity3d/ads/UnityAds$UnityAdsError;->AD_BLOCKER_DETECTED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/unity3d/ads/UnityAds$UnityAdsError;->FILE_IO_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/unity3d/ads/UnityAds$UnityAdsError;->DEVICE_ID_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/unity3d/ads/UnityAds$UnityAdsError;->SHOW_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->$VALUES:[Lcom/unity3d/ads/UnityAds$UnityAdsError;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$UnityAdsError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    const-class v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/UnityAds$UnityAdsError;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->$VALUES:[Lcom/unity3d/ads/UnityAds$UnityAdsError;

    invoke-virtual {v0}, [Lcom/unity3d/ads/UnityAds$UnityAdsError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/UnityAds$UnityAdsError;

    return-object v0
.end method
