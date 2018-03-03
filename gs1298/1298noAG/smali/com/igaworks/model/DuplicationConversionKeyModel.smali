.class public Lcom/igaworks/model/DuplicationConversionKeyModel;
.super Ljava/lang/Object;
.source "DuplicationConversionKeyModel.java"


# instance fields
.field private completeTime:J

.field private conversion:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "completeTime"    # J
    .param p3, "conversion"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lcom/igaworks/model/DuplicationConversionKeyModel;->completeTime:J

    .line 8
    iput-object p3, p0, Lcom/igaworks/model/DuplicationConversionKeyModel;->conversion:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public getCompleteTime()J
    .locals 2

    .prologue
    .line 12
    iget-wide v0, p0, Lcom/igaworks/model/DuplicationConversionKeyModel;->completeTime:J

    return-wide v0
.end method

.method public getConversion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/igaworks/model/DuplicationConversionKeyModel;->conversion:Ljava/lang/String;

    return-object v0
.end method

.method public setCompleteTime(J)V
    .locals 1
    .param p1, "completeTime"    # J

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/igaworks/model/DuplicationConversionKeyModel;->completeTime:J

    .line 16
    return-void
.end method

.method public setConversion(Ljava/lang/String;)V
    .locals 0
    .param p1, "conversion"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/igaworks/model/DuplicationConversionKeyModel;->conversion:Ljava/lang/String;

    .line 22
    return-void
.end method
