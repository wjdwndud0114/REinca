.class public Lcom/moat/analytics/mobile/tjy/MoatAdEvent;
.super Ljava/lang/Object;


# static fields
.field public static final EVENT_AD_VOLUME:Ljava/lang/String; = "adVolume"

.field public static final EVENT_PLAY_HEAD:Ljava/lang/String; = "playhead"

.field public static final EVENT_TS:Ljava/lang/String; = "aTimeStamp"

.field public static final EVENT_TYPE:Ljava/lang/String; = "type"

.field public static final TIME_UNAVAILABLE:Ljava/lang/Integer;

.field public static final VOLUME_UNAVAILABLE:Ljava/lang/Double;


# instance fields
.field private a:Ljava/lang/Long;

.field public adPlayhead:Ljava/lang/Integer;

.field public adVolume:Ljava/lang/Double;

.field public eventType:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/moat/analytics/mobile/tjy/MoatAdEvent;->TIME_UNAVAILABLE:Ljava/lang/Integer;

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/moat/analytics/mobile/tjy/MoatAdEvent;->VOLUME_UNAVAILABLE:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>(Lcom/moat/analytics/mobile/tjy/MoatAdEventType;)V
    .locals 2

    sget-object v0, Lcom/moat/analytics/mobile/tjy/MoatAdEvent;->TIME_UNAVAILABLE:Ljava/lang/Integer;

    sget-object v1, Lcom/moat/analytics/mobile/tjy/MoatAdEvent;->VOLUME_UNAVAILABLE:Ljava/lang/Double;

    invoke-direct {p0, p1, v0, v1}, Lcom/moat/analytics/mobile/tjy/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/tjy/MoatAdEventType;Ljava/lang/Integer;Ljava/lang/Double;)V

    return-void
.end method

.method public constructor <init>(Lcom/moat/analytics/mobile/tjy/MoatAdEventType;Ljava/lang/Integer;)V
    .locals 1

    sget-object v0, Lcom/moat/analytics/mobile/tjy/MoatAdEvent;->VOLUME_UNAVAILABLE:Ljava/lang/Double;

    invoke-direct {p0, p1, p2, v0}, Lcom/moat/analytics/mobile/tjy/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/tjy/MoatAdEventType;Ljava/lang/Integer;Ljava/lang/Double;)V

    return-void
.end method

.method public constructor <init>(Lcom/moat/analytics/mobile/tjy/MoatAdEventType;Ljava/lang/Integer;Ljava/lang/Double;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/tjy/MoatAdEvent;->a:Ljava/lang/Long;

    iput-object p1, p0, Lcom/moat/analytics/mobile/tjy/MoatAdEvent;->eventType:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    iput-object p3, p0, Lcom/moat/analytics/mobile/tjy/MoatAdEvent;->adVolume:Ljava/lang/Double;

    iput-object p2, p0, Lcom/moat/analytics/mobile/tjy/MoatAdEvent;->adPlayhead:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getTimeStamp()J
    .locals 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/MoatAdEvent;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "adVolume"

    iget-object v2, p0, Lcom/moat/analytics/mobile/tjy/MoatAdEvent;->adVolume:Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "playhead"

    iget-object v2, p0, Lcom/moat/analytics/mobile/tjy/MoatAdEvent;->adPlayhead:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aTimeStamp"

    iget-object v2, p0, Lcom/moat/analytics/mobile/tjy/MoatAdEvent;->a:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    iget-object v2, p0, Lcom/moat/analytics/mobile/tjy/MoatAdEvent;->eventType:Lcom/moat/analytics/mobile/tjy/MoatAdEventType;

    invoke-virtual {v2}, Lcom/moat/analytics/mobile/tjy/MoatAdEventType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
