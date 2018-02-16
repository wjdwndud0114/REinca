.class final Lcom/igaworks/gson/internal/bind/TypeAdapters$21;
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
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 483
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
    .line 483
    invoke-virtual {p0, p1}, Lcom/igaworks/gson/internal/bind/TypeAdapters$21;->read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/net/URL;
    .locals 4
    .param p1, "in"    # Lcom/igaworks/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 486
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->peek()Lcom/igaworks/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/igaworks/gson/stream/JsonToken;->NULL:Lcom/igaworks/gson/stream/JsonToken;

    if-ne v2, v3, :cond_1

    .line 487
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextNull()V

    .line 491
    :cond_0
    :goto_0
    return-object v1

    .line 490
    :cond_1
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "nextString":Ljava/lang/String;
    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

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
    .line 483
    check-cast p2, Ljava/net/URL;

    invoke-virtual {p0, p1, p2}, Lcom/igaworks/gson/internal/bind/TypeAdapters$21;->write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/net/URL;)V

    return-void
.end method

.method public write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/net/URL;)V
    .locals 1
    .param p1, "out"    # Lcom/igaworks/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/igaworks/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/igaworks/gson/stream/JsonWriter;

    .line 496
    return-void

    .line 495
    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
