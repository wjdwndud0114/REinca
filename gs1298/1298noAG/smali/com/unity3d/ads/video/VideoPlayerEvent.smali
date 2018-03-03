.class public final enum Lcom/unity3d/ads/video/VideoPlayerEvent;
.super Ljava/lang/Enum;
.source "VideoPlayerEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/video/VideoPlayerEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/video/VideoPlayerEvent;

.field public static final enum COMPLETED:Lcom/unity3d/ads/video/VideoPlayerEvent;

.field public static final enum GENERIC_ERROR:Lcom/unity3d/ads/video/VideoPlayerEvent;

.field public static final enum ILLEGAL_STATE:Lcom/unity3d/ads/video/VideoPlayerEvent;

.field public static final enum INFO:Lcom/unity3d/ads/video/VideoPlayerEvent;

.field public static final enum PAUSE:Lcom/unity3d/ads/video/VideoPlayerEvent;

.field public static final enum PAUSE_ERROR:Lcom/unity3d/ads/video/VideoPlayerEvent;

.field public static final enum PLAY:Lcom/unity3d/ads/video/VideoPlayerEvent;

.field public static final enum PREPARED:Lcom/unity3d/ads/video/VideoPlayerEvent;

.field public static final enum PREPARE_ERROR:Lcom/unity3d/ads/video/VideoPlayerEvent;

.field public static final enum PREPARE_TIMEOUT:Lcom/unity3d/ads/video/VideoPlayerEvent;

.field public static final enum PROGRESS:Lcom/unity3d/ads/video/VideoPlayerEvent;

.field public static final enum SEEKTO:Lcom/unity3d/ads/video/VideoPlayerEvent;

.field public static final enum SEEKTO_ERROR:Lcom/unity3d/ads/video/VideoPlayerEvent;

.field public static final enum STOP:Lcom/unity3d/ads/video/VideoPlayerEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/unity3d/ads/video/VideoPlayerEvent;

    const-string v1, "GENERIC_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/video/VideoPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/video/VideoPlayerEvent;->GENERIC_ERROR:Lcom/unity3d/ads/video/VideoPlayerEvent;

    .line 5
    new-instance v0, Lcom/unity3d/ads/video/VideoPlayerEvent;

    const-string v1, "PROGRESS"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/ads/video/VideoPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/video/VideoPlayerEvent;->PROGRESS:Lcom/unity3d/ads/video/VideoPlayerEvent;

    .line 6
    new-instance v0, Lcom/unity3d/ads/video/VideoPlayerEvent;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/video/VideoPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/video/VideoPlayerEvent;->INFO:Lcom/unity3d/ads/video/VideoPlayerEvent;

    .line 7
    new-instance v0, Lcom/unity3d/ads/video/VideoPlayerEvent;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/ads/video/VideoPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/video/VideoPlayerEvent;->COMPLETED:Lcom/unity3d/ads/video/VideoPlayerEvent;

    .line 8
    new-instance v0, Lcom/unity3d/ads/video/VideoPlayerEvent;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v7}, Lcom/unity3d/ads/video/VideoPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/video/VideoPlayerEvent;->PREPARED:Lcom/unity3d/ads/video/VideoPlayerEvent;

    .line 9
    new-instance v0, Lcom/unity3d/ads/video/VideoPlayerEvent;

    const-string v1, "PREPARE_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/video/VideoPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/video/VideoPlayerEvent;->PREPARE_ERROR:Lcom/unity3d/ads/video/VideoPlayerEvent;

    .line 10
    new-instance v0, Lcom/unity3d/ads/video/VideoPlayerEvent;

    const-string v1, "PREPARE_TIMEOUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/video/VideoPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/video/VideoPlayerEvent;->PREPARE_TIMEOUT:Lcom/unity3d/ads/video/VideoPlayerEvent;

    .line 11
    new-instance v0, Lcom/unity3d/ads/video/VideoPlayerEvent;

    const-string v1, "PLAY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/video/VideoPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/video/VideoPlayerEvent;->PLAY:Lcom/unity3d/ads/video/VideoPlayerEvent;

    .line 12
    new-instance v0, Lcom/unity3d/ads/video/VideoPlayerEvent;

    const-string v1, "PAUSE_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/video/VideoPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/video/VideoPlayerEvent;->PAUSE_ERROR:Lcom/unity3d/ads/video/VideoPlayerEvent;

    .line 13
    new-instance v0, Lcom/unity3d/ads/video/VideoPlayerEvent;

    const-string v1, "PAUSE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/video/VideoPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/video/VideoPlayerEvent;->PAUSE:Lcom/unity3d/ads/video/VideoPlayerEvent;

    .line 14
    new-instance v0, Lcom/unity3d/ads/video/VideoPlayerEvent;

    const-string v1, "SEEKTO_ERROR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/video/VideoPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/video/VideoPlayerEvent;->SEEKTO_ERROR:Lcom/unity3d/ads/video/VideoPlayerEvent;

    .line 15
    new-instance v0, Lcom/unity3d/ads/video/VideoPlayerEvent;

    const-string v1, "SEEKTO"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/video/VideoPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/video/VideoPlayerEvent;->SEEKTO:Lcom/unity3d/ads/video/VideoPlayerEvent;

    .line 16
    new-instance v0, Lcom/unity3d/ads/video/VideoPlayerEvent;

    const-string v1, "STOP"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/video/VideoPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/video/VideoPlayerEvent;->STOP:Lcom/unity3d/ads/video/VideoPlayerEvent;

    .line 17
    new-instance v0, Lcom/unity3d/ads/video/VideoPlayerEvent;

    const-string v1, "ILLEGAL_STATE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/video/VideoPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/video/VideoPlayerEvent;->ILLEGAL_STATE:Lcom/unity3d/ads/video/VideoPlayerEvent;

    .line 3
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/unity3d/ads/video/VideoPlayerEvent;

    sget-object v1, Lcom/unity3d/ads/video/VideoPlayerEvent;->GENERIC_ERROR:Lcom/unity3d/ads/video/VideoPlayerEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/ads/video/VideoPlayerEvent;->PROGRESS:Lcom/unity3d/ads/video/VideoPlayerEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/ads/video/VideoPlayerEvent;->INFO:Lcom/unity3d/ads/video/VideoPlayerEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/ads/video/VideoPlayerEvent;->COMPLETED:Lcom/unity3d/ads/video/VideoPlayerEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unity3d/ads/video/VideoPlayerEvent;->PREPARED:Lcom/unity3d/ads/video/VideoPlayerEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/unity3d/ads/video/VideoPlayerEvent;->PREPARE_ERROR:Lcom/unity3d/ads/video/VideoPlayerEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/unity3d/ads/video/VideoPlayerEvent;->PREPARE_TIMEOUT:Lcom/unity3d/ads/video/VideoPlayerEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/unity3d/ads/video/VideoPlayerEvent;->PLAY:Lcom/unity3d/ads/video/VideoPlayerEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/unity3d/ads/video/VideoPlayerEvent;->PAUSE_ERROR:Lcom/unity3d/ads/video/VideoPlayerEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/unity3d/ads/video/VideoPlayerEvent;->PAUSE:Lcom/unity3d/ads/video/VideoPlayerEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/unity3d/ads/video/VideoPlayerEvent;->SEEKTO_ERROR:Lcom/unity3d/ads/video/VideoPlayerEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/unity3d/ads/video/VideoPlayerEvent;->SEEKTO:Lcom/unity3d/ads/video/VideoPlayerEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/unity3d/ads/video/VideoPlayerEvent;->STOP:Lcom/unity3d/ads/video/VideoPlayerEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/unity3d/ads/video/VideoPlayerEvent;->ILLEGAL_STATE:Lcom/unity3d/ads/video/VideoPlayerEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/ads/video/VideoPlayerEvent;->$VALUES:[Lcom/unity3d/ads/video/VideoPlayerEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/video/VideoPlayerEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/unity3d/ads/video/VideoPlayerEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/video/VideoPlayerEvent;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/video/VideoPlayerEvent;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/unity3d/ads/video/VideoPlayerEvent;->$VALUES:[Lcom/unity3d/ads/video/VideoPlayerEvent;

    invoke-virtual {v0}, [Lcom/unity3d/ads/video/VideoPlayerEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/video/VideoPlayerEvent;

    return-object v0
.end method
