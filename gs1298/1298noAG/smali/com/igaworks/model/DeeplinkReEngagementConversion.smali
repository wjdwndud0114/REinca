.class public Lcom/igaworks/model/DeeplinkReEngagementConversion;
.super Ljava/lang/Object;
.source "DeeplinkReEngagementConversion.java"


# instance fields
.field private conversionKey:I

.field private deeplink_info:Ljava/lang/String;

.field private isDirty:I

.field private key:I

.field private retryCnt:I


# direct methods
.method public constructor <init>(IILjava/lang/String;II)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "conversionKey"    # I
    .param p3, "deeplink_info"    # Ljava/lang/String;
    .param p4, "retryCnt"    # I
    .param p5, "isDirty"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/igaworks/model/DeeplinkReEngagementConversion;->key:I

    .line 13
    iput p1, p0, Lcom/igaworks/model/DeeplinkReEngagementConversion;->key:I

    .line 14
    iput p2, p0, Lcom/igaworks/model/DeeplinkReEngagementConversion;->conversionKey:I

    .line 15
    iput-object p3, p0, Lcom/igaworks/model/DeeplinkReEngagementConversion;->deeplink_info:Ljava/lang/String;

    .line 16
    iput p4, p0, Lcom/igaworks/model/DeeplinkReEngagementConversion;->retryCnt:I

    .line 17
    iput p5, p0, Lcom/igaworks/model/DeeplinkReEngagementConversion;->isDirty:I

    .line 18
    return-void
.end method


# virtual methods
.method public getConversionKey()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/igaworks/model/DeeplinkReEngagementConversion;->conversionKey:I

    return v0
.end method

.method public getDeeplink_info()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/igaworks/model/DeeplinkReEngagementConversion;->deeplink_info:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDirty()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/igaworks/model/DeeplinkReEngagementConversion;->isDirty:I

    return v0
.end method

.method public getKey()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/igaworks/model/DeeplinkReEngagementConversion;->key:I

    return v0
.end method

.method public getRetryCnt()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/igaworks/model/DeeplinkReEngagementConversion;->retryCnt:I

    return v0
.end method

.method public setConversionKey(I)V
    .locals 0
    .param p1, "conversionKey"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/igaworks/model/DeeplinkReEngagementConversion;->conversionKey:I

    .line 35
    return-void
.end method

.method public setDeeplink_info(Ljava/lang/String;)V
    .locals 0
    .param p1, "deeplink_info"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/igaworks/model/DeeplinkReEngagementConversion;->deeplink_info:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setIsDirty(I)V
    .locals 0
    .param p1, "isDirty"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/igaworks/model/DeeplinkReEngagementConversion;->isDirty:I

    .line 53
    return-void
.end method

.method public setKey(I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/igaworks/model/DeeplinkReEngagementConversion;->key:I

    .line 29
    return-void
.end method

.method public setRetryCnt(I)V
    .locals 0
    .param p1, "retryCnt"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/igaworks/model/DeeplinkReEngagementConversion;->retryCnt:I

    .line 47
    return-void
.end method
