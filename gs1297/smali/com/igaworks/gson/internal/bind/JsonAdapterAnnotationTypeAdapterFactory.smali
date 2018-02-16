.class public final Lcom/igaworks/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;
.super Ljava/lang/Object;
.source "JsonAdapterAnnotationTypeAdapterFactory.java"

# interfaces
.implements Lcom/igaworks/gson/TypeAdapterFactory;


# instance fields
.field private final constructorConstructor:Lcom/igaworks/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/igaworks/gson/internal/ConstructorConstructor;)V
    .locals 0
    .param p1, "constructorConstructor"    # Lcom/igaworks/gson/internal/ConstructorConstructor;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/igaworks/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcom/igaworks/gson/internal/ConstructorConstructor;

    .line 39
    return-void
.end method


# virtual methods
.method public create(Lcom/igaworks/gson/Gson;Lcom/igaworks/gson/reflect/TypeToken;)Lcom/igaworks/gson/TypeAdapter;
    .locals 3
    .param p1, "gson"    # Lcom/igaworks/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/gson/Gson;",
            "Lcom/igaworks/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/igaworks/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "targetType":Lcom/igaworks/gson/reflect/TypeToken;, "Lcom/igaworks/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/igaworks/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 45
    .local v1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v2, Lcom/igaworks/gson/annotations/JsonAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/annotations/JsonAdapter;

    .line 46
    .local v0, "annotation":Lcom/igaworks/gson/annotations/JsonAdapter;
    if-nez v0, :cond_0

    .line 47
    const/4 v2, 0x0

    .line 49
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/igaworks/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->constructorConstructor:Lcom/igaworks/gson/internal/ConstructorConstructor;

    invoke-virtual {p0, v2, p1, p2, v0}, Lcom/igaworks/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/igaworks/gson/internal/ConstructorConstructor;Lcom/igaworks/gson/Gson;Lcom/igaworks/gson/reflect/TypeToken;Lcom/igaworks/gson/annotations/JsonAdapter;)Lcom/igaworks/gson/TypeAdapter;

    move-result-object v2

    goto :goto_0
.end method

.method getTypeAdapter(Lcom/igaworks/gson/internal/ConstructorConstructor;Lcom/igaworks/gson/Gson;Lcom/igaworks/gson/reflect/TypeToken;Lcom/igaworks/gson/annotations/JsonAdapter;)Lcom/igaworks/gson/TypeAdapter;
    .locals 7
    .param p1, "constructorConstructor"    # Lcom/igaworks/gson/internal/ConstructorConstructor;
    .param p2, "gson"    # Lcom/igaworks/gson/Gson;
    .param p4, "annotation"    # Lcom/igaworks/gson/annotations/JsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/gson/internal/ConstructorConstructor;",
            "Lcom/igaworks/gson/Gson;",
            "Lcom/igaworks/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/igaworks/gson/annotations/JsonAdapter;",
            ")",
            "Lcom/igaworks/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p3, "type":Lcom/igaworks/gson/reflect/TypeToken;, "Lcom/igaworks/gson/reflect/TypeToken<*>;"
    const/4 v5, 0x0

    .line 55
    invoke-interface {p4}, Lcom/igaworks/gson/annotations/JsonAdapter;->value()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/igaworks/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/igaworks/gson/reflect/TypeToken;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/igaworks/gson/internal/ConstructorConstructor;->get(Lcom/igaworks/gson/reflect/TypeToken;)Lcom/igaworks/gson/internal/ObjectConstructor;

    move-result-object v3

    invoke-interface {v3}, Lcom/igaworks/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v6

    .line 58
    .local v6, "instance":Ljava/lang/Object;
    instance-of v3, v6, Lcom/igaworks/gson/TypeAdapter;

    if-eqz v3, :cond_1

    move-object v0, v6

    .line 59
    check-cast v0, Lcom/igaworks/gson/TypeAdapter;

    .line 77
    .end local v6    # "instance":Ljava/lang/Object;
    .local v0, "typeAdapter":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<*>;"
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {p4}, Lcom/igaworks/gson/annotations/JsonAdapter;->nullSafe()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/igaworks/gson/TypeAdapter;->nullSafe()Lcom/igaworks/gson/TypeAdapter;

    move-result-object v0

    .line 81
    :cond_0
    return-object v0

    .line 60
    .end local v0    # "typeAdapter":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<*>;"
    .restart local v6    # "instance":Ljava/lang/Object;
    :cond_1
    instance-of v3, v6, Lcom/igaworks/gson/TypeAdapterFactory;

    if-eqz v3, :cond_2

    .line 61
    check-cast v6, Lcom/igaworks/gson/TypeAdapterFactory;

    .end local v6    # "instance":Ljava/lang/Object;
    invoke-interface {v6, p2, p3}, Lcom/igaworks/gson/TypeAdapterFactory;->create(Lcom/igaworks/gson/Gson;Lcom/igaworks/gson/reflect/TypeToken;)Lcom/igaworks/gson/TypeAdapter;

    move-result-object v0

    .restart local v0    # "typeAdapter":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<*>;"
    goto :goto_0

    .line 62
    .end local v0    # "typeAdapter":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<*>;"
    .restart local v6    # "instance":Ljava/lang/Object;
    :cond_2
    instance-of v3, v6, Lcom/igaworks/gson/JsonSerializer;

    if-nez v3, :cond_3

    instance-of v3, v6, Lcom/igaworks/gson/JsonDeserializer;

    if-eqz v3, :cond_6

    .line 63
    :cond_3
    instance-of v3, v6, Lcom/igaworks/gson/JsonSerializer;

    if-eqz v3, :cond_4

    move-object v3, v6

    check-cast v3, Lcom/igaworks/gson/JsonSerializer;

    move-object v1, v3

    .line 66
    .local v1, "serializer":Lcom/igaworks/gson/JsonSerializer;, "Lcom/igaworks/gson/JsonSerializer<*>;"
    :goto_1
    instance-of v3, v6, Lcom/igaworks/gson/JsonDeserializer;

    if-eqz v3, :cond_5

    check-cast v6, Lcom/igaworks/gson/JsonDeserializer;

    .end local v6    # "instance":Ljava/lang/Object;
    move-object v2, v6

    .line 69
    .local v2, "deserializer":Lcom/igaworks/gson/JsonDeserializer;, "Lcom/igaworks/gson/JsonDeserializer<*>;"
    :goto_2
    new-instance v0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;-><init>(Lcom/igaworks/gson/JsonSerializer;Lcom/igaworks/gson/JsonDeserializer;Lcom/igaworks/gson/Gson;Lcom/igaworks/gson/reflect/TypeToken;Lcom/igaworks/gson/TypeAdapterFactory;)V

    .line 70
    .restart local v0    # "typeAdapter":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<*>;"
    goto :goto_0

    .end local v0    # "typeAdapter":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<*>;"
    .end local v1    # "serializer":Lcom/igaworks/gson/JsonSerializer;, "Lcom/igaworks/gson/JsonSerializer<*>;"
    .end local v2    # "deserializer":Lcom/igaworks/gson/JsonDeserializer;, "Lcom/igaworks/gson/JsonDeserializer<*>;"
    .restart local v6    # "instance":Ljava/lang/Object;
    :cond_4
    move-object v1, v5

    .line 63
    goto :goto_1

    .restart local v1    # "serializer":Lcom/igaworks/gson/JsonSerializer;, "Lcom/igaworks/gson/JsonSerializer<*>;"
    :cond_5
    move-object v2, v5

    .line 66
    goto :goto_2

    .line 71
    .end local v1    # "serializer":Lcom/igaworks/gson/JsonSerializer;, "Lcom/igaworks/gson/JsonSerializer<*>;"
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid attempt to bind an instance of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 72
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as a @JsonAdapter for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/igaworks/gson/reflect/TypeToken;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
