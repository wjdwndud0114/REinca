.class public final enum Lcom/unity3d/ads/adunit/AdUnitEvent;
.super Ljava/lang/Enum;
.source "AdUnitEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/adunit/AdUnitEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/adunit/AdUnitEvent;

.field public static final enum KEY_DOWN:Lcom/unity3d/ads/adunit/AdUnitEvent;

.field public static final enum ON_CREATE:Lcom/unity3d/ads/adunit/AdUnitEvent;

.field public static final enum ON_DESTROY:Lcom/unity3d/ads/adunit/AdUnitEvent;

.field public static final enum ON_PAUSE:Lcom/unity3d/ads/adunit/AdUnitEvent;

.field public static final enum ON_RESTORE:Lcom/unity3d/ads/adunit/AdUnitEvent;

.field public static final enum ON_RESUME:Lcom/unity3d/ads/adunit/AdUnitEvent;

.field public static final enum ON_START:Lcom/unity3d/ads/adunit/AdUnitEvent;

.field public static final enum ON_STOP:Lcom/unity3d/ads/adunit/AdUnitEvent;


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
    new-instance v0, Lcom/unity3d/ads/adunit/AdUnitEvent;

    const-string v1, "ON_START"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_START:Lcom/unity3d/ads/adunit/AdUnitEvent;

    .line 5
    new-instance v0, Lcom/unity3d/ads/adunit/AdUnitEvent;

    const-string v1, "ON_CREATE"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_CREATE:Lcom/unity3d/ads/adunit/AdUnitEvent;

    .line 6
    new-instance v0, Lcom/unity3d/ads/adunit/AdUnitEvent;

    const-string v1, "ON_RESUME"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_RESUME:Lcom/unity3d/ads/adunit/AdUnitEvent;

    .line 7
    new-instance v0, Lcom/unity3d/ads/adunit/AdUnitEvent;

    const-string v1, "ON_DESTROY"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_DESTROY:Lcom/unity3d/ads/adunit/AdUnitEvent;

    .line 8
    new-instance v0, Lcom/unity3d/ads/adunit/AdUnitEvent;

    const-string v1, "ON_PAUSE"

    invoke-direct {v0, v1, v7}, Lcom/unity3d/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_PAUSE:Lcom/unity3d/ads/adunit/AdUnitEvent;

    .line 9
    new-instance v0, Lcom/unity3d/ads/adunit/AdUnitEvent;

    const-string v1, "KEY_DOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/adunit/AdUnitEvent;->KEY_DOWN:Lcom/unity3d/ads/adunit/AdUnitEvent;

    .line 10
    new-instance v0, Lcom/unity3d/ads/adunit/AdUnitEvent;

    const-string v1, "ON_RESTORE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_RESTORE:Lcom/unity3d/ads/adunit/AdUnitEvent;

    .line 11
    new-instance v0, Lcom/unity3d/ads/adunit/AdUnitEvent;

    const-string v1, "ON_STOP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_STOP:Lcom/unity3d/ads/adunit/AdUnitEvent;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/unity3d/ads/adunit/AdUnitEvent;

    sget-object v1, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_START:Lcom/unity3d/ads/adunit/AdUnitEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_CREATE:Lcom/unity3d/ads/adunit/AdUnitEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_RESUME:Lcom/unity3d/ads/adunit/AdUnitEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_DESTROY:Lcom/unity3d/ads/adunit/AdUnitEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_PAUSE:Lcom/unity3d/ads/adunit/AdUnitEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitEvent;->KEY_DOWN:Lcom/unity3d/ads/adunit/AdUnitEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_RESTORE:Lcom/unity3d/ads/adunit/AdUnitEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitEvent;->ON_STOP:Lcom/unity3d/ads/adunit/AdUnitEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/ads/adunit/AdUnitEvent;->$VALUES:[Lcom/unity3d/ads/adunit/AdUnitEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/adunit/AdUnitEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/unity3d/ads/adunit/AdUnitEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/adunit/AdUnitEvent;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/adunit/AdUnitEvent;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitEvent;->$VALUES:[Lcom/unity3d/ads/adunit/AdUnitEvent;

    invoke-virtual {v0}, [Lcom/unity3d/ads/adunit/AdUnitEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/adunit/AdUnitEvent;

    return-object v0
.end method
