.class public final Lcom/igaworks/gson/internal/bind/ObjectTypeAdapter;
.super Lcom/igaworks/gson/TypeAdapter;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/igaworks/gson/TypeAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;


# instance fields
.field private final gson:Lcom/igaworks/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/igaworks/gson/internal/bind/ObjectTypeAdapter$1;

    invoke-direct {v0}, Lcom/igaworks/gson/internal/bind/ObjectTypeAdapter$1;-><init>()V

    sput-object v0, Lcom/igaworks/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    return-void
.end method

.method constructor <init>(Lcom/igaworks/gson/Gson;)V
    .locals 0
    .param p1, "gson"    # Lcom/igaworks/gson/Gson;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/igaworks/gson/TypeAdapter;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/igaworks/gson/internal/bind/ObjectTypeAdapter;->gson:Lcom/igaworks/gson/Gson;

    .line 52
    return-void
.end method


# virtual methods
.method public read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 6
    .param p1, "in"    # Lcom/igaworks/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->peek()Lcom/igaworks/gson/stream/JsonToken;

    move-result-object v2

    .line 56
    .local v2, "token":Lcom/igaworks/gson/stream/JsonToken;
    sget-object v3, Lcom/igaworks/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$com$igaworks$gson$stream$JsonToken:[I

    invoke-virtual {v2}, Lcom/igaworks/gson/stream/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 89
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 58
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->beginArray()V

    .line 60
    :goto_0
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lcom/igaworks/gson/internal/bind/ObjectTypeAdapter;->read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->endArray()V

    .line 86
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_1
    return-object v0

    .line 67
    :pswitch_1
    new-instance v1, Lcom/igaworks/gson/internal/LinkedTreeMap;

    invoke-direct {v1}, Lcom/igaworks/gson/internal/LinkedTreeMap;-><init>()V

    .line 68
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->beginObject()V

    .line 69
    :goto_2
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/igaworks/gson/internal/bind/ObjectTypeAdapter;->read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 72
    :cond_1
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->endObject()V

    move-object v0, v1

    .line 73
    goto :goto_1

    .line 76
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_2
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 79
    :pswitch_3
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 82
    :pswitch_4
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 85
    :pswitch_5
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextNull()V

    .line 86
    const/4 v0, 0x0

    goto :goto_1

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3
    .param p1, "out"    # Lcom/igaworks/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    if-nez p2, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonWriter;->nullValue()Lcom/igaworks/gson/stream/JsonWriter;

    .line 108
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/igaworks/gson/internal/bind/ObjectTypeAdapter;->gson:Lcom/igaworks/gson/Gson;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/igaworks/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/igaworks/gson/TypeAdapter;

    move-result-object v0

    .line 101
    .local v0, "typeAdapter":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<Ljava/lang/Object;>;"
    instance-of v1, v0, Lcom/igaworks/gson/internal/bind/ObjectTypeAdapter;

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonWriter;->beginObject()Lcom/igaworks/gson/stream/JsonWriter;

    .line 103
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonWriter;->endObject()Lcom/igaworks/gson/stream/JsonWriter;

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/igaworks/gson/TypeAdapter;->write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0
.end method
