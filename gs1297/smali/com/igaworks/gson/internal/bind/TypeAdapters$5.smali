.class final Lcom/igaworks/gson/internal/bind/TypeAdapters$5;
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
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/igaworks/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Number;
    .locals 4
    .param p1, "in"    # Lcom/igaworks/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->peek()Lcom/igaworks/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/igaworks/gson/stream/JsonToken;->NULL:Lcom/igaworks/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextNull()V

    .line 177
    const/4 v2, 0x0

    .line 181
    :goto_0
    return-object v2

    .line 180
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextInt()I

    move-result v1

    .line 181
    .local v1, "intValue":I
    int-to-byte v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 182
    .end local v1    # "intValue":I
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/igaworks/gson/JsonSyntaxException;

    invoke-direct {v2, v0}, Lcom/igaworks/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/igaworks/gson/internal/bind/TypeAdapters$5;->read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 0
    .param p1, "out"    # Lcom/igaworks/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p1, p2}, Lcom/igaworks/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/igaworks/gson/stream/JsonWriter;

    .line 189
    return-void
.end method

.method public bridge synthetic write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/igaworks/gson/internal/bind/TypeAdapters$5;->write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
