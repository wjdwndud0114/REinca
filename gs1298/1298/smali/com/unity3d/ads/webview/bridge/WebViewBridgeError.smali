.class public final enum Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;
.super Ljava/lang/Enum;
.source "WebViewBridgeError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

.field public static final enum CLASS_NOT_EXPOSED:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

.field public static final enum CLASS_NOT_FOUND:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

.field public static final enum DATA_GET_PARAMETER_VALUE_FAILED:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

.field public static final enum DATA_JSON_PARSE_FAILED:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

.field public static final enum DATA_PARAMETER_NULL:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

.field public static final enum GETALLOWEDMETHODS_INVOCATION_FAILED:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

.field public static final enum GETALLOWEDMETHODS_NOT_FOUND:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

.field public static final enum INVOCATION_FAILED:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

.field public static final enum METHOD_NOT_FOUND:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

.field public static final enum METHOD_UNALLOWED:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;


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
    new-instance v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    const-string v1, "CLASS_NOT_FOUND"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->CLASS_NOT_FOUND:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    .line 5
    new-instance v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    const-string v1, "CLASS_NOT_EXPOSED"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->CLASS_NOT_EXPOSED:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    .line 6
    new-instance v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    const-string v1, "GETALLOWEDMETHODS_NOT_FOUND"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->GETALLOWEDMETHODS_NOT_FOUND:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    .line 7
    new-instance v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    const-string v1, "GETALLOWEDMETHODS_INVOCATION_FAILED"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->GETALLOWEDMETHODS_INVOCATION_FAILED:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    .line 8
    new-instance v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    const-string v1, "METHOD_NOT_FOUND"

    invoke-direct {v0, v1, v7}, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->METHOD_NOT_FOUND:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    .line 9
    new-instance v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    const-string v1, "METHOD_UNALLOWED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->METHOD_UNALLOWED:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    .line 10
    new-instance v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    const-string v1, "DATA_JSON_PARSE_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->DATA_JSON_PARSE_FAILED:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    .line 11
    new-instance v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    const-string v1, "DATA_GET_PARAMETER_VALUE_FAILED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->DATA_GET_PARAMETER_VALUE_FAILED:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    .line 12
    new-instance v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    const-string v1, "DATA_PARAMETER_NULL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->DATA_PARAMETER_NULL:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    .line 13
    new-instance v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    const-string v1, "INVOCATION_FAILED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->INVOCATION_FAILED:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    .line 3
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    sget-object v1, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->CLASS_NOT_FOUND:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->CLASS_NOT_EXPOSED:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->GETALLOWEDMETHODS_NOT_FOUND:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->GETALLOWEDMETHODS_INVOCATION_FAILED:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->METHOD_NOT_FOUND:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->METHOD_UNALLOWED:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->DATA_JSON_PARSE_FAILED:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->DATA_GET_PARAMETER_VALUE_FAILED:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->DATA_PARAMETER_NULL:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->INVOCATION_FAILED:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->$VALUES:[Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->$VALUES:[Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    invoke-virtual {v0}, [Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    return-object v0
.end method
