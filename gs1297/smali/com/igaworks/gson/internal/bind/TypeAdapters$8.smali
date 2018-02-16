.class final Lcom/igaworks/gson/internal/bind/TypeAdapters$8;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 238
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
    .line 238
    invoke-virtual {p0, p1}, Lcom/igaworks/gson/internal/bind/TypeAdapters$8;->read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 3
    .param p1, "in"    # Lcom/igaworks/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    :try_start_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextInt()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/igaworks/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/igaworks/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1, p2}, Lcom/igaworks/gson/internal/bind/TypeAdapters$8;->write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method public write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 2
    .param p1, "out"    # Lcom/igaworks/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/igaworks/gson/stream/JsonWriter;->value(J)Lcom/igaworks/gson/stream/JsonWriter;

    .line 248
    return-void
.end method
