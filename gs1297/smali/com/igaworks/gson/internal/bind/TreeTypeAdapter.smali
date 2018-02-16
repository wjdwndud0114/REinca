.class public final Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;
.super Lcom/igaworks/gson/TypeAdapter;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;,
        Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;
    }
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
.field private final context:Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igaworks/gson/internal/bind/TreeTypeAdapter",
            "<TT;>.GsonContextImpl;"
        }
    .end annotation
.end field

.field private delegate:Lcom/igaworks/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igaworks/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lcom/igaworks/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igaworks/gson/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field final gson:Lcom/igaworks/gson/Gson;

.field private final serializer:Lcom/igaworks/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igaworks/gson/JsonSerializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lcom/igaworks/gson/TypeAdapterFactory;

.field private final typeToken:Lcom/igaworks/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igaworks/gson/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/igaworks/gson/JsonSerializer;Lcom/igaworks/gson/JsonDeserializer;Lcom/igaworks/gson/Gson;Lcom/igaworks/gson/reflect/TypeToken;Lcom/igaworks/gson/TypeAdapterFactory;)V
    .locals 2
    .param p3, "gson"    # Lcom/igaworks/gson/Gson;
    .param p5, "skipPast"    # Lcom/igaworks/gson/TypeAdapterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/gson/JsonSerializer",
            "<TT;>;",
            "Lcom/igaworks/gson/JsonDeserializer",
            "<TT;>;",
            "Lcom/igaworks/gson/Gson;",
            "Lcom/igaworks/gson/reflect/TypeToken",
            "<TT;>;",
            "Lcom/igaworks/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;, "Lcom/igaworks/gson/internal/bind/TreeTypeAdapter<TT;>;"
    .local p1, "serializer":Lcom/igaworks/gson/JsonSerializer;, "Lcom/igaworks/gson/JsonSerializer<TT;>;"
    .local p2, "deserializer":Lcom/igaworks/gson/JsonDeserializer;, "Lcom/igaworks/gson/JsonDeserializer<TT;>;"
    .local p4, "typeToken":Lcom/igaworks/gson/reflect/TypeToken;, "Lcom/igaworks/gson/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lcom/igaworks/gson/TypeAdapter;-><init>()V

    .line 47
    new-instance v0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;-><init>(Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$1;)V

    iput-object v0, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->context:Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    .line 54
    iput-object p1, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->serializer:Lcom/igaworks/gson/JsonSerializer;

    .line 55
    iput-object p2, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->deserializer:Lcom/igaworks/gson/JsonDeserializer;

    .line 56
    iput-object p3, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/igaworks/gson/Gson;

    .line 57
    iput-object p4, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/igaworks/gson/reflect/TypeToken;

    .line 58
    iput-object p5, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->skipPast:Lcom/igaworks/gson/TypeAdapterFactory;

    .line 59
    return-void
.end method

.method private delegate()Lcom/igaworks/gson/TypeAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/igaworks/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;, "Lcom/igaworks/gson/internal/bind/TreeTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->delegate:Lcom/igaworks/gson/TypeAdapter;

    .line 87
    .local v0, "d":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_0

    .end local v0    # "d":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "d":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<TT;>;"
    :cond_0
    iget-object v1, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/igaworks/gson/Gson;

    iget-object v2, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->skipPast:Lcom/igaworks/gson/TypeAdapterFactory;

    iget-object v3, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/igaworks/gson/reflect/TypeToken;

    .line 89
    invoke-virtual {v1, v2, v3}, Lcom/igaworks/gson/Gson;->getDelegateAdapter(Lcom/igaworks/gson/TypeAdapterFactory;Lcom/igaworks/gson/reflect/TypeToken;)Lcom/igaworks/gson/TypeAdapter;

    move-result-object v0

    .end local v0    # "d":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<TT;>;"
    iput-object v0, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->delegate:Lcom/igaworks/gson/TypeAdapter;

    goto :goto_0
.end method

.method public static newFactory(Lcom/igaworks/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/igaworks/gson/TypeAdapterFactory;
    .locals 3
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/igaworks/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "exactType":Lcom/igaworks/gson/reflect/TypeToken;, "Lcom/igaworks/gson/reflect/TypeToken<*>;"
    new-instance v0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/igaworks/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lcom/igaworks/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/igaworks/gson/TypeAdapterFactory;
    .locals 3
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/igaworks/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "exactType":Lcom/igaworks/gson/reflect/TypeToken;, "Lcom/igaworks/gson/reflect/TypeToken<*>;"
    invoke-virtual {p0}, Lcom/igaworks/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0}, Lcom/igaworks/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 107
    .local v0, "matchRawType":Z
    :goto_0
    new-instance v1, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/igaworks/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v1

    .line 106
    .end local v0    # "matchRawType":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/igaworks/gson/TypeAdapterFactory;
    .locals 3
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/igaworks/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "hierarchyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/igaworks/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 4
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
    .line 62
    .local p0, "this":Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;, "Lcom/igaworks/gson/internal/bind/TreeTypeAdapter<TT;>;"
    iget-object v1, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->deserializer:Lcom/igaworks/gson/JsonDeserializer;

    if-nez v1, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->delegate()Lcom/igaworks/gson/TypeAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/igaworks/gson/TypeAdapter;->read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    :goto_0
    return-object v1

    .line 65
    :cond_0
    invoke-static {p1}, Lcom/igaworks/gson/internal/Streams;->parse(Lcom/igaworks/gson/stream/JsonReader;)Lcom/igaworks/gson/JsonElement;

    move-result-object v0

    .line 66
    .local v0, "value":Lcom/igaworks/gson/JsonElement;
    invoke-virtual {v0}, Lcom/igaworks/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    const/4 v1, 0x0

    goto :goto_0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->deserializer:Lcom/igaworks/gson/JsonDeserializer;

    iget-object v2, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/igaworks/gson/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/igaworks/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->context:Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v1, v0, v2, v3}, Lcom/igaworks/gson/JsonDeserializer;->deserialize(Lcom/igaworks/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/igaworks/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v1

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
    .line 73
    .local p0, "this":Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;, "Lcom/igaworks/gson/internal/bind/TreeTypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->serializer:Lcom/igaworks/gson/JsonSerializer;

    if-nez v1, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->delegate()Lcom/igaworks/gson/TypeAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/igaworks/gson/TypeAdapter;->write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 83
    :goto_0
    return-void

    .line 77
    :cond_0
    if-nez p2, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonWriter;->nullValue()Lcom/igaworks/gson/stream/JsonWriter;

    goto :goto_0

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->serializer:Lcom/igaworks/gson/JsonSerializer;

    iget-object v2, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/igaworks/gson/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/igaworks/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->context:Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v1, p2, v2, v3}, Lcom/igaworks/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/igaworks/gson/JsonSerializationContext;)Lcom/igaworks/gson/JsonElement;

    move-result-object v0

    .line 82
    .local v0, "tree":Lcom/igaworks/gson/JsonElement;
    invoke-static {v0, p1}, Lcom/igaworks/gson/internal/Streams;->write(Lcom/igaworks/gson/JsonElement;Lcom/igaworks/gson/stream/JsonWriter;)V

    goto :goto_0
.end method
