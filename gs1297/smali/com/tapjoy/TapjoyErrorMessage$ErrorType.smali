.class public final enum Lcom/tapjoy/TapjoyErrorMessage$ErrorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyErrorMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation


# static fields
.field public static final enum INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

.field public static final enum INTERNAL_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

.field public static final enum NETWORK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

.field public static final enum SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

.field public static final enum SERVER_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

.field private static final synthetic a:[Lcom/tapjoy/TapjoyErrorMessage$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTERNAL_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    .line 9
    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v1, "SDK_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    .line 10
    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SERVER_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    .line 11
    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v1, "INTEGRATION_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    .line 12
    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->NETWORK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTERNAL_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SERVER_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->NETWORK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->a:[Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/TapjoyErrorMessage$ErrorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/tapjoy/TapjoyErrorMessage$ErrorType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->a:[Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {v0}, [Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    return-object v0
.end method
