.class public final enum Lcom/moat/analytics/mobile/tjy/MoatAdEventType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

.field public static final enum AD_EVT_ENTER_FULLSCREEN:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

.field public static final enum AD_EVT_EXIT_FULLSCREEN:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

.field public static final enum AD_EVT_FIRST_QUARTILE:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

.field public static final enum AD_EVT_MID_POINT:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

.field public static final enum AD_EVT_PAUSED:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

.field public static final enum AD_EVT_PLAYING:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

.field public static final enum AD_EVT_SKIPPED:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

.field public static final enum AD_EVT_START:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

.field public static final enum AD_EVT_STOPPED:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

.field public static final enum AD_EVT_THIRD_QUARTILE:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

.field public static final enum AD_EVT_VOLUME_CHANGE:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

.field private static final synthetic b:[Lcom/moat/analytics/mobile/tjy/MoatAdEventType;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    const-string v1, "AD_EVT_FIRST_QUARTILE"

    const-string v2, "AdVideoFirstQuartile"

    invoke-direct {v0, v1, v4, v2}, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_FIRST_QUARTILE:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    new-instance v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    const-string v1, "AD_EVT_MID_POINT"

    const-string v2, "AdVideoMidpoint"

    invoke-direct {v0, v1, v5, v2}, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_MID_POINT:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    new-instance v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    const-string v1, "AD_EVT_THIRD_QUARTILE"

    const-string v2, "AdVideoThirdQuartile"

    invoke-direct {v0, v1, v6, v2}, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_THIRD_QUARTILE:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    new-instance v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    const-string v1, "AD_EVT_COMPLETE"

    const-string v2, "AdVideoComplete"

    invoke-direct {v0, v1, v7, v2}, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    new-instance v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    const-string v1, "AD_EVT_PAUSED"

    const-string v2, "AdPaused"

    invoke-direct {v0, v1, v8, v2}, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_PAUSED:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    new-instance v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    const-string v1, "AD_EVT_PLAYING"

    const/4 v2, 0x5

    const-string v3, "AdPlaying"

    invoke-direct {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_PLAYING:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    new-instance v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    const-string v1, "AD_EVT_START"

    const/4 v2, 0x6

    const-string v3, "AdVideoStart"

    invoke-direct {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_START:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    new-instance v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    const-string v1, "AD_EVT_STOPPED"

    const/4 v2, 0x7

    const-string v3, "AdStopped"

    invoke-direct {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    new-instance v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    const-string v1, "AD_EVT_SKIPPED"

    const/16 v2, 0x8

    const-string v3, "AdSkipped"

    invoke-direct {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_SKIPPED:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    new-instance v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    const-string v1, "AD_EVT_VOLUME_CHANGE"

    const/16 v2, 0x9

    const-string v3, "AdVolumeChange"

    invoke-direct {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_VOLUME_CHANGE:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    new-instance v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    const-string v1, "AD_EVT_ENTER_FULLSCREEN"

    const/16 v2, 0xa

    const-string v3, "fullScreen"

    invoke-direct {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_ENTER_FULLSCREEN:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    new-instance v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    const-string v1, "AD_EVT_EXIT_FULLSCREEN"

    const/16 v2, 0xb

    const-string v3, "exitFullscreen"

    invoke-direct {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_EXIT_FULLSCREEN:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    sget-object v1, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_FIRST_QUARTILE:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_MID_POINT:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_THIRD_QUARTILE:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_PAUSED:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_PLAYING:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_START:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_SKIPPED:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_VOLUME_CHANGE:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_ENTER_FULLSCREEN:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->AD_EVT_EXIT_FULLSCREEN:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->b:[Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->a:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/moat/analytics/mobile/tjy/MoatAdEventType;
    .locals 5

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->values()[Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moat/analytics/mobile/tjy/MoatAdEventType;
    .locals 1

    const-class v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    return-object v0
.end method

.method public static values()[Lcom/moat/analytics/mobile/tjy/MoatAdEventType;
    .locals 1

    sget-object v0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->b:[Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    invoke-virtual {v0}, [Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->a:Ljava/lang/String;

    return-object v0
.end method
