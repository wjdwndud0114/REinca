.class public final enum Lcom/unity3d/ads/video/VideoPlayerError;
.super Ljava/lang/Enum;
.source "VideoPlayerError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/video/VideoPlayerError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/video/VideoPlayerError;

.field public static final enum API_LEVEL_ERROR:Lcom/unity3d/ads/video/VideoPlayerError;

.field public static final enum PREPARE:Lcom/unity3d/ads/video/VideoPlayerError;

.field public static final enum VIDEOVIEW_NULL:Lcom/unity3d/ads/video/VideoPlayerError;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/unity3d/ads/video/VideoPlayerError;

    const-string v1, "VIDEOVIEW_NULL"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/video/VideoPlayerError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/ads/video/VideoPlayerError;

    .line 5
    new-instance v0, Lcom/unity3d/ads/video/VideoPlayerError;

    const-string v1, "PREPARE"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/video/VideoPlayerError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/video/VideoPlayerError;->PREPARE:Lcom/unity3d/ads/video/VideoPlayerError;

    .line 6
    new-instance v0, Lcom/unity3d/ads/video/VideoPlayerError;

    const-string v1, "API_LEVEL_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/ads/video/VideoPlayerError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/video/VideoPlayerError;->API_LEVEL_ERROR:Lcom/unity3d/ads/video/VideoPlayerError;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/unity3d/ads/video/VideoPlayerError;

    sget-object v1, Lcom/unity3d/ads/video/VideoPlayerError;->VIDEOVIEW_NULL:Lcom/unity3d/ads/video/VideoPlayerError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/ads/video/VideoPlayerError;->PREPARE:Lcom/unity3d/ads/video/VideoPlayerError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/ads/video/VideoPlayerError;->API_LEVEL_ERROR:Lcom/unity3d/ads/video/VideoPlayerError;

    aput-object v1, v0, v4

    sput-object v0, Lcom/unity3d/ads/video/VideoPlayerError;->$VALUES:[Lcom/unity3d/ads/video/VideoPlayerError;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/video/VideoPlayerError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/unity3d/ads/video/VideoPlayerError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/video/VideoPlayerError;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/video/VideoPlayerError;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/unity3d/ads/video/VideoPlayerError;->$VALUES:[Lcom/unity3d/ads/video/VideoPlayerError;

    invoke-virtual {v0}, [Lcom/unity3d/ads/video/VideoPlayerError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/video/VideoPlayerError;

    return-object v0
.end method
