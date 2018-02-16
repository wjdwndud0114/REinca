.class public final Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;
.super Lcom/igaworks/gson/TypeAdapter;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Adapter"
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
.field private final boundFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation
.end field

.field private final constructor:Lcom/igaworks/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igaworks/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/igaworks/gson/internal/ObjectConstructor;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/gson/internal/ObjectConstructor",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;, "Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter<TT;>;"
    .local p1, "constructor":Lcom/igaworks/gson/internal/ObjectConstructor;, "Lcom/igaworks/gson/internal/ObjectConstructor<TT;>;"
    .local p2, "boundFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;"
    invoke-direct {p0}, Lcom/igaworks/gson/TypeAdapter;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->constructor:Lcom/igaworks/gson/internal/ObjectConstructor;

    .line 201
    iput-object p2, p0, Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    .line 202
    return-void
.end method


# virtual methods
.method public read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 6
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
    .line 205
    .local p0, "this":Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;, "Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter<TT;>;"
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->peek()Lcom/igaworks/gson/stream/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/igaworks/gson/stream/JsonToken;->NULL:Lcom/igaworks/gson/stream/JsonToken;

    if-ne v4, v5, :cond_0

    .line 206
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextNull()V

    .line 207
    const/4 v2, 0x0

    .line 229
    :goto_0
    return-object v2

    .line 210
    :cond_0
    iget-object v4, p0, Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->constructor:Lcom/igaworks/gson/internal/ObjectConstructor;

    invoke-interface {v4}, Lcom/igaworks/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v2

    .line 213
    .local v2, "instance":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->beginObject()V

    .line 214
    :goto_1
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 215
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 217
    .local v1, "field":Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->deserialized:Z

    if-nez v4, :cond_2

    .line 218
    :cond_1
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->skipValue()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 223
    .end local v1    # "field":Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Lcom/igaworks/gson/JsonSyntaxException;

    invoke-direct {v4, v0}, Lcom/igaworks/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 220
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "field":Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v1, p1, v2}, Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->read(Lcom/igaworks/gson/stream/JsonReader;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 225
    .end local v1    # "field":Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v3    # "name":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 228
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_3
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->endObject()V

    goto :goto_0
.end method

.method public write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 4
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
    .line 233
    .local p0, "this":Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;, "Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    .line 234
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonWriter;->nullValue()Lcom/igaworks/gson/stream/JsonWriter;

    .line 250
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonWriter;->beginObject()Lcom/igaworks/gson/stream/JsonWriter;

    .line 240
    :try_start_0
    iget-object v2, p0, Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 241
    .local v0, "boundField":Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    invoke-virtual {v0, p2}, Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->writeField(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    iget-object v3, v0, Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/igaworks/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/igaworks/gson/stream/JsonWriter;

    .line 243
    invoke-virtual {v0, p1, p2}, Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 246
    .end local v0    # "boundField":Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 249
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonWriter;->endObject()Lcom/igaworks/gson/stream/JsonWriter;

    goto :goto_0
.end method
