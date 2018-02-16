.class public Lcom/igaworks/commerce/model/CommerceV2EventItem;
.super Ljava/lang/Object;
.source "CommerceV2EventItem.java"


# instance fields
.field private eventJson:Ljava/lang/String;

.field private isDirty:I

.field private key:I

.field private retryCnt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "pJson"    # Ljava/lang/String;
    .param p3, "retryCnt"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/igaworks/commerce/model/CommerceV2EventItem;->key:I

    .line 25
    iput-object p2, p0, Lcom/igaworks/commerce/model/CommerceV2EventItem;->eventJson:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/igaworks/commerce/model/CommerceV2EventItem;->retryCnt:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/igaworks/commerce/model/CommerceV2EventItem;->isDirty:I

    .line 35
    return-void
.end method


# virtual methods
.method public getIsDirty()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/igaworks/commerce/model/CommerceV2EventItem;->isDirty:I

    return v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/igaworks/commerce/model/CommerceV2EventItem;->eventJson:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/igaworks/commerce/model/CommerceV2EventItem;->key:I

    return v0
.end method

.method public getRetryCnt()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/igaworks/commerce/model/CommerceV2EventItem;->retryCnt:I

    return v0
.end method

.method public setIsDirty(I)V
    .locals 0
    .param p1, "isDirty"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/igaworks/commerce/model/CommerceV2EventItem;->isDirty:I

    .line 18
    return-void
.end method

.method public setJson(Ljava/lang/String;)V
    .locals 0
    .param p1, "pJson"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/igaworks/commerce/model/CommerceV2EventItem;->eventJson:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setKey(I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/igaworks/commerce/model/CommerceV2EventItem;->key:I

    .line 65
    return-void
.end method

.method public setRetryCnt(I)V
    .locals 0
    .param p1, "retryCnt"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/igaworks/commerce/model/CommerceV2EventItem;->retryCnt:I

    .line 75
    return-void
.end method
