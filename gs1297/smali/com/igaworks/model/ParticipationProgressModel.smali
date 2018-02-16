.class public Lcom/igaworks/model/ParticipationProgressModel;
.super Ljava/lang/Object;
.source "ParticipationProgressModel.java"


# instance fields
.field public ConversionKey:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "conversionKey"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/igaworks/model/ParticipationProgressModel;->ConversionKey:I

    .line 12
    return-void
.end method


# virtual methods
.method public getConversionKey()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/igaworks/model/ParticipationProgressModel;->ConversionKey:I

    return v0
.end method

.method public setConversionKey(I)V
    .locals 0
    .param p1, "conversionKey"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/igaworks/model/ParticipationProgressModel;->ConversionKey:I

    .line 20
    return-void
.end method
