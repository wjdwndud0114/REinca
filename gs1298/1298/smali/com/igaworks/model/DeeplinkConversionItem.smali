.class public Lcom/igaworks/model/DeeplinkConversionItem;
.super Ljava/lang/Object;
.source "DeeplinkConversionItem.java"


# instance fields
.field private commerceClickID:Ljava/lang/String;

.field private conversionKey:I

.field private isDirty:I

.field private key:I

.field private linkParams:Ljava/lang/String;

.field private retryCnt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "key"    # I
    .param p2, "conversionKey"    # I
    .param p3, "commerceClickID"    # Ljava/lang/String;
    .param p4, "linkParams"    # Ljava/lang/String;
    .param p5, "retryCnt"    # I
    .param p6, "isDirty"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/igaworks/model/DeeplinkConversionItem;->key:I

    .line 20
    iput p2, p0, Lcom/igaworks/model/DeeplinkConversionItem;->conversionKey:I

    .line 21
    iput-object p3, p0, Lcom/igaworks/model/DeeplinkConversionItem;->commerceClickID:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/igaworks/model/DeeplinkConversionItem;->linkParams:Ljava/lang/String;

    .line 23
    iput p5, p0, Lcom/igaworks/model/DeeplinkConversionItem;->retryCnt:I

    .line 24
    iput p6, p0, Lcom/igaworks/model/DeeplinkConversionItem;->isDirty:I

    .line 25
    return-void
.end method


# virtual methods
.method public getCommerceClickID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/igaworks/model/DeeplinkConversionItem;->commerceClickID:Ljava/lang/String;

    return-object v0
.end method

.method public getConversionKey()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/igaworks/model/DeeplinkConversionItem;->conversionKey:I

    return v0
.end method

.method public getIsDirty()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/igaworks/model/DeeplinkConversionItem;->isDirty:I

    return v0
.end method

.method public getKey()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/igaworks/model/DeeplinkConversionItem;->key:I

    return v0
.end method

.method public getLinkParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/igaworks/model/DeeplinkConversionItem;->linkParams:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryCnt()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/igaworks/model/DeeplinkConversionItem;->retryCnt:I

    return v0
.end method

.method public setCommerceClickID(Ljava/lang/String;)V
    .locals 0
    .param p1, "commerceClickID"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/igaworks/model/DeeplinkConversionItem;->commerceClickID:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setConversionKey(I)V
    .locals 0
    .param p1, "conversionKey"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/igaworks/model/DeeplinkConversionItem;->conversionKey:I

    .line 48
    return-void
.end method

.method public setKey(I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/igaworks/model/DeeplinkConversionItem;->key:I

    .line 41
    return-void
.end method

.method public setLinkParams(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkParams"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/igaworks/model/DeeplinkConversionItem;->linkParams:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setRetryCnt(I)V
    .locals 0
    .param p1, "retryCnt"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/igaworks/model/DeeplinkConversionItem;->retryCnt:I

    .line 33
    return-void
.end method
