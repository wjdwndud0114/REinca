.class Lcom/igaworks/gson/internal/bind/TypeAdapters$26$1;
.super Lcom/igaworks/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/gson/internal/bind/TypeAdapters$26;->create(Lcom/igaworks/gson/Gson;Lcom/igaworks/gson/reflect/TypeToken;)Lcom/igaworks/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/igaworks/gson/TypeAdapter",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/gson/internal/bind/TypeAdapters$26;

.field final synthetic val$dateTypeAdapter:Lcom/igaworks/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/igaworks/gson/internal/bind/TypeAdapters$26;Lcom/igaworks/gson/TypeAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/gson/internal/bind/TypeAdapters$26;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/igaworks/gson/internal/bind/TypeAdapters$26$1;->this$0:Lcom/igaworks/gson/internal/bind/TypeAdapters$26;

    iput-object p2, p0, Lcom/igaworks/gson/internal/bind/TypeAdapters$26$1;->val$dateTypeAdapter:Lcom/igaworks/gson/TypeAdapter;

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
    .line 579
    invoke-virtual {p0, p1}, Lcom/igaworks/gson/internal/bind/TypeAdapters$26$1;->read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/sql/Timestamp;
    .locals 4
    .param p1, "in"    # Lcom/igaworks/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    iget-object v1, p0, Lcom/igaworks/gson/internal/bind/TypeAdapters$26$1;->val$dateTypeAdapter:Lcom/igaworks/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/igaworks/gson/TypeAdapter;->read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 582
    .local v0, "date":Ljava/util/Date;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

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
    .line 579
    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lcom/igaworks/gson/internal/bind/TypeAdapters$26$1;->write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V
    .locals 1
    .param p1, "out"    # Lcom/igaworks/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, Lcom/igaworks/gson/internal/bind/TypeAdapters$26$1;->val$dateTypeAdapter:Lcom/igaworks/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/igaworks/gson/TypeAdapter;->write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 587
    return-void
.end method
