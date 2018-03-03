.class public Lcom/igaworks/adbrix/json/ScheduleTypeAdapter;
.super Lcom/igaworks/gson/TypeAdapter;
.source "ScheduleTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/igaworks/gson/TypeAdapter",
        "<",
        "Lcom/igaworks/adbrix/model/Schedule;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/igaworks/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/igaworks/gson/stream/JsonReader;)Lcom/igaworks/adbrix/model/Schedule;
    .locals 3
    .param p1, "reader"    # Lcom/igaworks/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->peek()Lcom/igaworks/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/igaworks/gson/stream/JsonToken;->NULL:Lcom/igaworks/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextNull()V

    .line 21
    :cond_0
    return-object v2
.end method

.method public bridge synthetic read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/json/ScheduleTypeAdapter;->read(Lcom/igaworks/gson/stream/JsonReader;)Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/igaworks/gson/stream/JsonWriter;Lcom/igaworks/adbrix/model/Schedule;)V
    .locals 0
    .param p1, "arg0"    # Lcom/igaworks/gson/stream/JsonWriter;
    .param p2, "arg1"    # Lcom/igaworks/adbrix/model/Schedule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
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
    .line 11
    check-cast p2, Lcom/igaworks/adbrix/model/Schedule;

    invoke-virtual {p0, p1, p2}, Lcom/igaworks/adbrix/json/ScheduleTypeAdapter;->write(Lcom/igaworks/gson/stream/JsonWriter;Lcom/igaworks/adbrix/model/Schedule;)V

    return-void
.end method
