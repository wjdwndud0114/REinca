.class Lcom/igaworks/gson/Gson$FutureTypeAdapter;
.super Lcom/igaworks/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FutureTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/igaworks/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/igaworks/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igaworks/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 955
    .local p0, "this":Lcom/igaworks/gson/Gson$FutureTypeAdapter;, "Lcom/igaworks/gson/Gson$FutureTypeAdapter<TT;>;"
    invoke-direct {p0}, Lcom/igaworks/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Lcom/igaworks/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 966
    .local p0, "this":Lcom/igaworks/gson/Gson$FutureTypeAdapter;, "Lcom/igaworks/gson/Gson$FutureTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/igaworks/gson/Gson$FutureTypeAdapter;->delegate:Lcom/igaworks/gson/TypeAdapter;

    if-nez v0, :cond_0

    .line 967
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/igaworks/gson/Gson$FutureTypeAdapter;->delegate:Lcom/igaworks/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/igaworks/gson/TypeAdapter;->read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setDelegate(Lcom/igaworks/gson/TypeAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/gson/TypeAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 959
    .local p0, "this":Lcom/igaworks/gson/Gson$FutureTypeAdapter;, "Lcom/igaworks/gson/Gson$FutureTypeAdapter<TT;>;"
    .local p1, "typeAdapter":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/igaworks/gson/Gson$FutureTypeAdapter;->delegate:Lcom/igaworks/gson/TypeAdapter;

    if-eqz v0, :cond_0

    .line 960
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 962
    :cond_0
    iput-object p1, p0, Lcom/igaworks/gson/Gson$FutureTypeAdapter;->delegate:Lcom/igaworks/gson/TypeAdapter;

    .line 963
    return-void
.end method

.method public write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .param p1, "out"    # Lcom/igaworks/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 973
    .local p0, "this":Lcom/igaworks/gson/Gson$FutureTypeAdapter;, "Lcom/igaworks/gson/Gson$FutureTypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/igaworks/gson/Gson$FutureTypeAdapter;->delegate:Lcom/igaworks/gson/TypeAdapter;

    if-nez v0, :cond_0

    .line 974
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/igaworks/gson/Gson$FutureTypeAdapter;->delegate:Lcom/igaworks/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/igaworks/gson/TypeAdapter;->write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 977
    return-void
.end method
