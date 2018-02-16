.class final Lcom/igaworks/gson/internal/bind/TypeAdapters$EnumTypeAdapter;
.super Lcom/igaworks/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EnumTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Lcom/igaworks/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final constantToName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nameToConstant:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/igaworks/gson/internal/bind/TypeAdapters$EnumTypeAdapter;, "Lcom/igaworks/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    .local p1, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v7, 0x0

    .line 776
    invoke-direct {p0}, Lcom/igaworks/gson/TypeAdapter;-><init>()V

    .line 773
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/igaworks/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->nameToConstant:Ljava/util/Map;

    .line 774
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/igaworks/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->constantToName:Ljava/util/Map;

    .line 778
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Enum;

    array-length v9, v5

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v2, v5, v8

    .line 779
    .local v2, "constant":Ljava/lang/Enum;, "TT;"
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 780
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const-class v10, Lcom/igaworks/gson/annotations/SerializedName;

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/igaworks/gson/annotations/SerializedName;

    .line 781
    .local v1, "annotation":Lcom/igaworks/gson/annotations/SerializedName;
    if-eqz v1, :cond_0

    .line 782
    invoke-interface {v1}, Lcom/igaworks/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v4

    .line 783
    invoke-interface {v1}, Lcom/igaworks/gson/annotations/SerializedName;->alternate()[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    move v6, v7

    :goto_1
    if-ge v6, v11, :cond_0

    aget-object v0, v10, v6

    .line 784
    .local v0, "alternate":Ljava/lang/String;
    iget-object v12, p0, Lcom/igaworks/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->nameToConstant:Ljava/util/Map;

    invoke-interface {v12, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 787
    .end local v0    # "alternate":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/igaworks/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->nameToConstant:Ljava/util/Map;

    invoke-interface {v6, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    iget-object v6, p0, Lcom/igaworks/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->constantToName:Ljava/util/Map;

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_0

    .line 790
    .end local v1    # "annotation":Lcom/igaworks/gson/annotations/SerializedName;
    .end local v2    # "constant":Ljava/lang/Enum;, "TT;"
    .end local v4    # "name":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 791
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 793
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :cond_1
    return-void
.end method


# virtual methods
.method public read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Enum;
    .locals 2
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
    .line 795
    .local p0, "this":Lcom/igaworks/gson/internal/bind/TypeAdapters$EnumTypeAdapter;, "Lcom/igaworks/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->peek()Lcom/igaworks/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/igaworks/gson/stream/JsonToken;->NULL:Lcom/igaworks/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 796
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextNull()V

    .line 797
    const/4 v0, 0x0

    .line 799
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/igaworks/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->nameToConstant:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    goto :goto_0
.end method

.method public bridge synthetic read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 772
    .local p0, "this":Lcom/igaworks/gson/internal/bind/TypeAdapters$EnumTypeAdapter;, "Lcom/igaworks/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/igaworks/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Enum;)V
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
    .line 803
    .local p0, "this":Lcom/igaworks/gson/internal/bind/TypeAdapters$EnumTypeAdapter;, "Lcom/igaworks/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Enum;, "TT;"
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/igaworks/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/igaworks/gson/stream/JsonWriter;

    .line 804
    return-void

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/igaworks/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->constantToName:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

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
    .line 772
    .local p0, "this":Lcom/igaworks/gson/internal/bind/TypeAdapters$EnumTypeAdapter;, "Lcom/igaworks/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/igaworks/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Enum;)V

    return-void
.end method
