.class public Lcom/igaworks/core/IgawUpdateLog;
.super Ljava/lang/Object;
.source "IgawUpdateLog.java"


# static fields
.field protected static COMMON_VERSION:Ljava/lang/String;

.field protected static VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string v0, "--"

    sput-object v0, Lcom/igaworks/core/IgawUpdateLog;->VERSION:Ljava/lang/String;

    .line 7
    const-string v0, "4.5.4a"

    sput-object v0, Lcom/igaworks/core/IgawUpdateLog;->COMMON_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommonVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/igaworks/core/IgawUpdateLog;->COMMON_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/igaworks/core/IgawUpdateLog;->VERSION:Ljava/lang/String;

    return-object v0
.end method
