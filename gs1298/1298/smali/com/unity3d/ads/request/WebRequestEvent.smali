.class public final enum Lcom/unity3d/ads/request/WebRequestEvent;
.super Ljava/lang/Enum;
.source "WebRequestEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/request/WebRequestEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/request/WebRequestEvent;

.field public static final enum COMPLETE:Lcom/unity3d/ads/request/WebRequestEvent;

.field public static final enum FAILED:Lcom/unity3d/ads/request/WebRequestEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/unity3d/ads/request/WebRequestEvent;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/request/WebRequestEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/request/WebRequestEvent;->COMPLETE:Lcom/unity3d/ads/request/WebRequestEvent;

    .line 5
    new-instance v0, Lcom/unity3d/ads/request/WebRequestEvent;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/request/WebRequestEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/request/WebRequestEvent;->FAILED:Lcom/unity3d/ads/request/WebRequestEvent;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/unity3d/ads/request/WebRequestEvent;

    sget-object v1, Lcom/unity3d/ads/request/WebRequestEvent;->COMPLETE:Lcom/unity3d/ads/request/WebRequestEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/ads/request/WebRequestEvent;->FAILED:Lcom/unity3d/ads/request/WebRequestEvent;

    aput-object v1, v0, v3

    sput-object v0, Lcom/unity3d/ads/request/WebRequestEvent;->$VALUES:[Lcom/unity3d/ads/request/WebRequestEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/request/WebRequestEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/unity3d/ads/request/WebRequestEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/request/WebRequestEvent;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/request/WebRequestEvent;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/unity3d/ads/request/WebRequestEvent;->$VALUES:[Lcom/unity3d/ads/request/WebRequestEvent;

    invoke-virtual {v0}, [Lcom/unity3d/ads/request/WebRequestEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/request/WebRequestEvent;

    return-object v0
.end method
