.class public Lcom/igaworks/adbrix/model/RetryCompleteConversion;
.super Ljava/lang/Object;
.source "RetryCompleteConversion.java"


# instance fields
.field private conversionKey:I

.field private retryCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "conversionKey"    # I
    .param p2, "retryCount"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/igaworks/adbrix/model/RetryCompleteConversion;->conversionKey:I

    .line 14
    iput p2, p0, Lcom/igaworks/adbrix/model/RetryCompleteConversion;->retryCount:I

    .line 15
    return-void
.end method


# virtual methods
.method public getConversionKey()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/igaworks/adbrix/model/RetryCompleteConversion;->conversionKey:I

    return v0
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/igaworks/adbrix/model/RetryCompleteConversion;->retryCount:I

    return v0
.end method

.method public setConversionKey(I)V
    .locals 0
    .param p1, "conversionKey"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/igaworks/adbrix/model/RetryCompleteConversion;->conversionKey:I

    .line 23
    return-void
.end method

.method public setRetryCount(I)V
    .locals 0
    .param p1, "retryCount"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/igaworks/adbrix/model/RetryCompleteConversion;->retryCount:I

    .line 31
    return-void
.end method
