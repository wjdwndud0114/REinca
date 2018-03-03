.class public Lcom/igaworks/dao/tracking/TrackingActivityModel;
.super Ljava/lang/Object;
.source "TrackingActivityModel.java"


# instance fields
.field private id:I

.field private isDirty:I

.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/igaworks/dao/tracking/TrackingActivityModel;->id:I

    .line 13
    iput-object p2, p0, Lcom/igaworks/dao/tracking/TrackingActivityModel;->key:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/igaworks/dao/tracking/TrackingActivityModel;->value:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/igaworks/dao/tracking/TrackingActivityModel;->isDirty:I

    .line 16
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "isDirty"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/igaworks/dao/tracking/TrackingActivityModel;->id:I

    .line 25
    iput-object p2, p0, Lcom/igaworks/dao/tracking/TrackingActivityModel;->key:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/igaworks/dao/tracking/TrackingActivityModel;->value:Ljava/lang/String;

    .line 27
    iput p4, p0, Lcom/igaworks/dao/tracking/TrackingActivityModel;->isDirty:I

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/igaworks/dao/tracking/TrackingActivityModel;->id:I

    .line 19
    iput-object p1, p0, Lcom/igaworks/dao/tracking/TrackingActivityModel;->key:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/igaworks/dao/tracking/TrackingActivityModel;->value:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/igaworks/dao/tracking/TrackingActivityModel;->isDirty:I

    .line 22
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/igaworks/dao/tracking/TrackingActivityModel;->id:I

    return v0
.end method

.method public getIsDirty()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/igaworks/dao/tracking/TrackingActivityModel;->isDirty:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivityModel;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivityModel;->value:Ljava/lang/String;

    return-object v0
.end method
