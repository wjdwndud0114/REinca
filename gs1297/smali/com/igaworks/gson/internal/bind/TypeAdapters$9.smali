.class final Lcom/igaworks/gson/internal/bind/TypeAdapters$9;
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
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 253
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
    .line 253
    invoke-virtual {p0, p1}, Lcom/igaworks/gson/internal/bind/TypeAdapters$9;->read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 2
    .param p1, "in"    # Lcom/igaworks/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

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
    .line 253
    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1, p2}, Lcom/igaworks/gson/internal/bind/TypeAdapters$9;->write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1
    .param p1, "out"    # Lcom/igaworks/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/igaworks/gson/stream/JsonWriter;->value(Z)Lcom/igaworks/gson/stream/JsonWriter;

    .line 259
    return-void
.end method
