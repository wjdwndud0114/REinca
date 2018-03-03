.class public final enum Lcom/unity3d/ads/adunit/AdUnitError;
.super Ljava/lang/Enum;
.source "AdUnitError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/adunit/AdUnitError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/adunit/AdUnitError;

.field public static final enum ACTIVITY_ID:Lcom/unity3d/ads/adunit/AdUnitError;

.field public static final enum ADUNIT_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

.field public static final enum CORRUPTED_KEYEVENTLIST:Lcom/unity3d/ads/adunit/AdUnitError;

.field public static final enum CORRUPTED_VIEWLIST:Lcom/unity3d/ads/adunit/AdUnitError;

.field public static final enum GENERIC:Lcom/unity3d/ads/adunit/AdUnitError;

.field public static final enum ORIENTATION:Lcom/unity3d/ads/adunit/AdUnitError;

.field public static final enum SCREENVISIBILITY:Lcom/unity3d/ads/adunit/AdUnitError;

.field public static final enum SYSTEM_UI_VISIBILITY:Lcom/unity3d/ads/adunit/AdUnitError;

.field public static final enum UNKNOWN_VIEW:Lcom/unity3d/ads/adunit/AdUnitError;


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
    new-instance v0, Lcom/unity3d/ads/adunit/AdUnitError;

    const-string v1, "ADUNIT_NULL"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    .line 5
    new-instance v0, Lcom/unity3d/ads/adunit/AdUnitError;

    const-string v1, "ACTIVITY_ID"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ACTIVITY_ID:Lcom/unity3d/ads/adunit/AdUnitError;

    .line 6
    new-instance v0, Lcom/unity3d/ads/adunit/AdUnitError;

    const-string v1, "GENERIC"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->GENERIC:Lcom/unity3d/ads/adunit/AdUnitError;

    .line 7
    new-instance v0, Lcom/unity3d/ads/adunit/AdUnitError;

    const-string v1, "ORIENTATION"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ORIENTATION:Lcom/unity3d/ads/adunit/AdUnitError;

    .line 8
    new-instance v0, Lcom/unity3d/ads/adunit/AdUnitError;

    const-string v1, "SCREENVISIBILITY"

    invoke-direct {v0, v1, v7}, Lcom/unity3d/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->SCREENVISIBILITY:Lcom/unity3d/ads/adunit/AdUnitError;

    .line 9
    new-instance v0, Lcom/unity3d/ads/adunit/AdUnitError;

    const-string v1, "CORRUPTED_VIEWLIST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->CORRUPTED_VIEWLIST:Lcom/unity3d/ads/adunit/AdUnitError;

    .line 10
    new-instance v0, Lcom/unity3d/ads/adunit/AdUnitError;

    const-string v1, "CORRUPTED_KEYEVENTLIST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->CORRUPTED_KEYEVENTLIST:Lcom/unity3d/ads/adunit/AdUnitError;

    .line 11
    new-instance v0, Lcom/unity3d/ads/adunit/AdUnitError;

    const-string v1, "SYSTEM_UI_VISIBILITY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->SYSTEM_UI_VISIBILITY:Lcom/unity3d/ads/adunit/AdUnitError;

    .line 12
    new-instance v0, Lcom/unity3d/ads/adunit/AdUnitError;

    const-string v1, "UNKNOWN_VIEW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->UNKNOWN_VIEW:Lcom/unity3d/ads/adunit/AdUnitError;

    .line 3
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/unity3d/ads/adunit/AdUnitError;

    sget-object v1, Lcom/unity3d/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/ads/adunit/AdUnitError;->ACTIVITY_ID:Lcom/unity3d/ads/adunit/AdUnitError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/ads/adunit/AdUnitError;->GENERIC:Lcom/unity3d/ads/adunit/AdUnitError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/ads/adunit/AdUnitError;->ORIENTATION:Lcom/unity3d/ads/adunit/AdUnitError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unity3d/ads/adunit/AdUnitError;->SCREENVISIBILITY:Lcom/unity3d/ads/adunit/AdUnitError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitError;->CORRUPTED_VIEWLIST:Lcom/unity3d/ads/adunit/AdUnitError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitError;->CORRUPTED_KEYEVENTLIST:Lcom/unity3d/ads/adunit/AdUnitError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitError;->SYSTEM_UI_VISIBILITY:Lcom/unity3d/ads/adunit/AdUnitError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/unity3d/ads/adunit/AdUnitError;->UNKNOWN_VIEW:Lcom/unity3d/ads/adunit/AdUnitError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->$VALUES:[Lcom/unity3d/ads/adunit/AdUnitError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/adunit/AdUnitError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/unity3d/ads/adunit/AdUnitError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/adunit/AdUnitError;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/adunit/AdUnitError;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->$VALUES:[Lcom/unity3d/ads/adunit/AdUnitError;

    invoke-virtual {v0}, [Lcom/unity3d/ads/adunit/AdUnitError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/adunit/AdUnitError;

    return-object v0
.end method
