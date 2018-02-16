.class final Lcom/igaworks/gson/stream/JsonReader$1;
.super Lcom/igaworks/gson/internal/JsonReaderInternalAccess;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/gson/stream/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1594
    invoke-direct {p0}, Lcom/igaworks/gson/internal/JsonReaderInternalAccess;-><init>()V

    return-void
.end method


# virtual methods
.method public promoteNameToValue(Lcom/igaworks/gson/stream/JsonReader;)V
    .locals 4
    .param p1, "reader"    # Lcom/igaworks/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1596
    instance-of v1, p1, Lcom/igaworks/gson/internal/bind/JsonTreeReader;

    if-eqz v1, :cond_0

    .line 1597
    check-cast p1, Lcom/igaworks/gson/internal/bind/JsonTreeReader;

    .end local p1    # "reader":Lcom/igaworks/gson/stream/JsonReader;
    invoke-virtual {p1}, Lcom/igaworks/gson/internal/bind/JsonTreeReader;->promoteNameToValue()V

    .line 1614
    :goto_0
    return-void

    .line 1600
    .restart local p1    # "reader":Lcom/igaworks/gson/stream/JsonReader;
    :cond_0
    iget v0, p1, Lcom/igaworks/gson/stream/JsonReader;->peeked:I

    .line 1601
    .local v0, "p":I
    if-nez v0, :cond_1

    .line 1602
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 1604
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1605
    const/16 v1, 0x9

    iput v1, p1, Lcom/igaworks/gson/stream/JsonReader;->peeked:I

    goto :goto_0

    .line 1606
    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 1607
    const/16 v1, 0x8

    iput v1, p1, Lcom/igaworks/gson/stream/JsonReader;->peeked:I

    goto :goto_0

    .line 1608
    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 1609
    const/16 v1, 0xa

    iput v1, p1, Lcom/igaworks/gson/stream/JsonReader;->peeked:I

    goto :goto_0

    .line 1611
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1612
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->peek()Lcom/igaworks/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
