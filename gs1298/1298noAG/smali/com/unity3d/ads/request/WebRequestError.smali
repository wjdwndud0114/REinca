.class public final enum Lcom/unity3d/ads/request/WebRequestError;
.super Ljava/lang/Enum;
.source "WebRequestError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/request/WebRequestError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/request/WebRequestError;

.field public static final enum MAPPING_HEADERS_FAILED:Lcom/unity3d/ads/request/WebRequestError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/unity3d/ads/request/WebRequestError;

    const-string v1, "MAPPING_HEADERS_FAILED"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/request/WebRequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/request/WebRequestError;->MAPPING_HEADERS_FAILED:Lcom/unity3d/ads/request/WebRequestError;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/unity3d/ads/request/WebRequestError;

    sget-object v1, Lcom/unity3d/ads/request/WebRequestError;->MAPPING_HEADERS_FAILED:Lcom/unity3d/ads/request/WebRequestError;

    aput-object v1, v0, v2

    sput-object v0, Lcom/unity3d/ads/request/WebRequestError;->$VALUES:[Lcom/unity3d/ads/request/WebRequestError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/request/WebRequestError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/unity3d/ads/request/WebRequestError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/request/WebRequestError;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/request/WebRequestError;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/unity3d/ads/request/WebRequestError;->$VALUES:[Lcom/unity3d/ads/request/WebRequestError;

    invoke-virtual {v0}, [Lcom/unity3d/ads/request/WebRequestError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/request/WebRequestError;

    return-object v0
.end method
