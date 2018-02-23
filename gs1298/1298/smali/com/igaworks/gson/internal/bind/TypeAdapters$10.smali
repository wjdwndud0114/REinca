.class final Lcom/igaworks/gson/internal/bind/TypeAdapters$10;
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
        "Ljava/util/concurrent/atomic/AtomicIntegerArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 264
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
    .line 264
    invoke-virtual {p0, p1}, Lcom/igaworks/gson/internal/bind/TypeAdapters$10;->read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicIntegerArray;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicIntegerArray;
    .locals 7
    .param p1, "in"    # Lcom/igaworks/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->beginArray()V

    .line 268
    :goto_0
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 270
    :try_start_0
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextInt()I

    move-result v3

    .line 271
    .local v3, "integer":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    .end local v3    # "integer":I
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lcom/igaworks/gson/JsonSyntaxException;

    invoke-direct {v6, v1}, Lcom/igaworks/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 276
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->endArray()V

    .line 277
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 278
    .local v4, "length":I
    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    .line 279
    .local v0, "array":Ljava/util/concurrent/atomic/AtomicIntegerArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 280
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v2, v6}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 282
    :cond_1
    return-object v0
.end method

.method public bridge synthetic write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {p0, p1, p2}, Lcom/igaworks/gson/internal/bind/TypeAdapters$10;->write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicIntegerArray;)V

    return-void
.end method

.method public write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicIntegerArray;)V
    .locals 4
    .param p1, "out"    # Lcom/igaworks/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/util/concurrent/atomic/AtomicIntegerArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonWriter;->beginArray()Lcom/igaworks/gson/stream/JsonWriter;

    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 287
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/igaworks/gson/stream/JsonWriter;->value(J)Lcom/igaworks/gson/stream/JsonWriter;

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonWriter;->endArray()Lcom/igaworks/gson/stream/JsonWriter;

    .line 290
    return-void
.end method
