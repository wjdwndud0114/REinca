.class final Lcom/igaworks/gson/Gson$5;
.super Lcom/igaworks/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/gson/Gson;->atomicLongArrayAdapter(Lcom/igaworks/gson/TypeAdapter;)Lcom/igaworks/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/igaworks/gson/TypeAdapter",
        "<",
        "Ljava/util/concurrent/atomic/AtomicLongArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$longAdapter:Lcom/igaworks/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/igaworks/gson/TypeAdapter;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/igaworks/gson/Gson$5;->val$longAdapter:Lcom/igaworks/gson/TypeAdapter;

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
    .line 365
    invoke-virtual {p0, p1}, Lcom/igaworks/gson/Gson$5;->read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicLongArray;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicLongArray;
    .locals 8
    .param p1, "in"    # Lcom/igaworks/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->beginArray()V

    .line 376
    :goto_0
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 377
    iget-object v6, p0, Lcom/igaworks/gson/Gson$5;->val$longAdapter:Lcom/igaworks/gson/TypeAdapter;

    invoke-virtual {v6, p1}, Lcom/igaworks/gson/TypeAdapter;->read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 378
    .local v4, "value":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 380
    .end local v4    # "value":J
    :cond_0
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->endArray()V

    .line 381
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 382
    .local v2, "length":I
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    .line 383
    .local v0, "array":Ljava/util/concurrent/atomic/AtomicLongArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 384
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v1, v6, v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 386
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
    .line 365
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {p0, p1, p2}, Lcom/igaworks/gson/Gson$5;->write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicLongArray;)V

    return-void
.end method

.method public write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicLongArray;)V
    .locals 6
    .param p1, "out"    # Lcom/igaworks/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/util/concurrent/atomic/AtomicLongArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonWriter;->beginArray()Lcom/igaworks/gson/stream/JsonWriter;

    .line 368
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 369
    iget-object v2, p0, Lcom/igaworks/gson/Gson$5;->val$longAdapter:Lcom/igaworks/gson/TypeAdapter;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/igaworks/gson/TypeAdapter;->write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonWriter;->endArray()Lcom/igaworks/gson/stream/JsonWriter;

    .line 372
    return-void
.end method
