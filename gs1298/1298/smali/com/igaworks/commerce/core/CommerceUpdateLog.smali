.class public Lcom/igaworks/commerce/core/CommerceUpdateLog;
.super Ljava/lang/Object;
.source "CommerceUpdateLog.java"


# static fields
.field public static final COMMERCE_VERSION:Ljava/lang/String; = "1.2.5"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateVersion()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "IGAW_QA"

    const-string v1, "commerce version : 1.2.5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method
