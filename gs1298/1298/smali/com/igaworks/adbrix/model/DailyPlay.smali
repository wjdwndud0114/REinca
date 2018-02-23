.class public Lcom/igaworks/adbrix/model/DailyPlay;
.super Ljava/lang/Object;
.source "DailyPlay.java"


# instance fields
.field private CampaignKey:I

.field private ConversionKey:I

.field private ParentConversionKey:I

.field private PlayTime:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "campaignKey"    # I
    .param p2, "playTime"    # I
    .param p3, "conversionKey"    # I
    .param p4, "parentConversionKey"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/igaworks/adbrix/model/DailyPlay;->CampaignKey:I

    .line 37
    iput p2, p0, Lcom/igaworks/adbrix/model/DailyPlay;->PlayTime:I

    .line 38
    iput p3, p0, Lcom/igaworks/adbrix/model/DailyPlay;->ConversionKey:I

    .line 39
    iput p4, p0, Lcom/igaworks/adbrix/model/DailyPlay;->ParentConversionKey:I

    .line 40
    return-void
.end method


# virtual methods
.method public getCampaignKey()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/igaworks/adbrix/model/DailyPlay;->CampaignKey:I

    return v0
.end method

.method public getConversionKey()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/igaworks/adbrix/model/DailyPlay;->ConversionKey:I

    return v0
.end method

.method public getParentConversionKey()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/igaworks/adbrix/model/DailyPlay;->ParentConversionKey:I

    return v0
.end method

.method public getPlayTime()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/igaworks/adbrix/model/DailyPlay;->PlayTime:I

    return v0
.end method

.method public setCampaignKey(I)V
    .locals 0
    .param p1, "campaignKey"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/igaworks/adbrix/model/DailyPlay;->CampaignKey:I

    .line 14
    return-void
.end method

.method public setConversionKey(I)V
    .locals 0
    .param p1, "conversionKey"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/igaworks/adbrix/model/DailyPlay;->ConversionKey:I

    .line 26
    return-void
.end method

.method public setParentConversionKey(I)V
    .locals 0
    .param p1, "parentConversionKey"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/igaworks/adbrix/model/DailyPlay;->ParentConversionKey:I

    .line 32
    return-void
.end method

.method public setPlayTime(I)V
    .locals 0
    .param p1, "playTime"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/igaworks/adbrix/model/DailyPlay;->PlayTime:I

    .line 20
    return-void
.end method
