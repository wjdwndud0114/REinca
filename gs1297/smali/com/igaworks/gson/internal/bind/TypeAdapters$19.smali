.class final Lcom/igaworks/gson/internal/bind/TypeAdapters$19;
.super Lcom/igaworks/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/igaworks/gson/TypeAdapter",
        "<",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/igaworks/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-virtual {p0, p1}, Lcom/igaworks/gson/internal/bind/TypeAdapters$19;->read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "in"    # Lcom/igaworks/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->peek()Lcom/igaworks/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/igaworks/gson/stream/JsonToken;->NULL:Lcom/igaworks/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 451
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextNull()V

    .line 452
    const/4 v0, 0x0

    .line 454
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/igaworks/gson/internal/bind/TypeAdapters$19;->write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "out"    # Lcom/igaworks/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/igaworks/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/igaworks/gson/stream/JsonWriter;

    .line 459
    return-void

    .line 458
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
