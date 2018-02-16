.class public Lcom/igaworks/adbrix/core/ADBrixUpdateLog;
.super Lcom/igaworks/core/IgawUpdateLog;
.source "ADBrixUpdateLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/igaworks/core/IgawUpdateLog;-><init>()V

    return-void
.end method

.method public static updateVersion()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "4.4.9a"

    sput-object v0, Lcom/igaworks/core/IgawUpdateLog;->VERSION:Ljava/lang/String;

    .line 9
    return-void
.end method
