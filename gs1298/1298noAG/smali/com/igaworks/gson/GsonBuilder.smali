.class public final Lcom/igaworks/gson/GsonBuilder;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# instance fields
.field private complexMapKeySerialization:Z

.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private escapeHtmlChars:Z

.field private excluder:Lcom/igaworks/gson/internal/Excluder;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private fieldNamingPolicy:Lcom/igaworks/gson/FieldNamingStrategy;

.field private generateNonExecutableJson:Z

.field private final hierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/igaworks/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field

.field private lenient:Z

.field private longSerializationPolicy:Lcom/igaworks/gson/LongSerializationPolicy;

.field private prettyPrinting:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private timeStyle:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lcom/igaworks/gson/internal/Excluder;->DEFAULT:Lcom/igaworks/gson/internal/Excluder;

    iput-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->excluder:Lcom/igaworks/gson/internal/Excluder;

    .line 80
    sget-object v0, Lcom/igaworks/gson/LongSerializationPolicy;->DEFAULT:Lcom/igaworks/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->longSerializationPolicy:Lcom/igaworks/gson/LongSerializationPolicy;

    .line 81
    sget-object v0, Lcom/igaworks/gson/FieldNamingPolicy;->IDENTITY:Lcom/igaworks/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->fieldNamingPolicy:Lcom/igaworks/gson/FieldNamingStrategy;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    .line 87
    iput-boolean v1, p0, Lcom/igaworks/gson/GsonBuilder;->serializeNulls:Z

    .line 89
    iput v2, p0, Lcom/igaworks/gson/GsonBuilder;->dateStyle:I

    .line 90
    iput v2, p0, Lcom/igaworks/gson/GsonBuilder;->timeStyle:I

    .line 91
    iput-boolean v1, p0, Lcom/igaworks/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 92
    iput-boolean v1, p0, Lcom/igaworks/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 94
    iput-boolean v1, p0, Lcom/igaworks/gson/GsonBuilder;->prettyPrinting:Z

    .line 95
    iput-boolean v1, p0, Lcom/igaworks/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 96
    iput-boolean v1, p0, Lcom/igaworks/gson/GsonBuilder;->lenient:Z

    .line 105
    return-void
.end method

.method private addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
    .locals 6
    .param p1, "datePattern"    # Ljava/lang/String;
    .param p2, "dateStyle"    # I
    .param p3, "timeStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/gson/TypeAdapterFactory;>;"
    const/4 v5, 0x2

    .line 581
    if-eqz p1, :cond_1

    const-string v3, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 582
    new-instance v0, Lcom/igaworks/gson/DefaultDateTypeAdapter;

    const-class v3, Ljava/util/Date;

    invoke-direct {v0, v3, p1}, Lcom/igaworks/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 583
    .local v0, "dateTypeAdapter":Lcom/igaworks/gson/DefaultDateTypeAdapter;
    new-instance v2, Lcom/igaworks/gson/DefaultDateTypeAdapter;

    const-class v3, Ljava/sql/Timestamp;

    invoke-direct {v2, v3, p1}, Lcom/igaworks/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 584
    .local v2, "timestampTypeAdapter":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<Ljava/sql/Timestamp;>;"
    new-instance v1, Lcom/igaworks/gson/DefaultDateTypeAdapter;

    const-class v3, Ljava/sql/Date;

    invoke-direct {v1, v3, p1}, Lcom/igaworks/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 593
    .local v1, "javaSqlDateTypeAdapter":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<Ljava/sql/Date;>;"
    :goto_0
    const-class v3, Ljava/util/Date;

    invoke-static {v3, v0}, Lcom/igaworks/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/igaworks/gson/TypeAdapter;)Lcom/igaworks/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    const-class v3, Ljava/sql/Timestamp;

    invoke-static {v3, v2}, Lcom/igaworks/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/igaworks/gson/TypeAdapter;)Lcom/igaworks/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    const-class v3, Ljava/sql/Date;

    invoke-static {v3, v1}, Lcom/igaworks/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/igaworks/gson/TypeAdapter;)Lcom/igaworks/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    .end local v0    # "dateTypeAdapter":Lcom/igaworks/gson/DefaultDateTypeAdapter;
    .end local v1    # "javaSqlDateTypeAdapter":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<Ljava/sql/Date;>;"
    .end local v2    # "timestampTypeAdapter":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<Ljava/sql/Timestamp;>;"
    :cond_0
    return-void

    .line 585
    :cond_1
    if-eq p2, v5, :cond_0

    if-eq p3, v5, :cond_0

    .line 586
    new-instance v0, Lcom/igaworks/gson/DefaultDateTypeAdapter;

    const-class v3, Ljava/util/Date;

    invoke-direct {v0, v3, p2, p3}, Lcom/igaworks/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    .line 587
    .restart local v0    # "dateTypeAdapter":Lcom/igaworks/gson/DefaultDateTypeAdapter;
    new-instance v2, Lcom/igaworks/gson/DefaultDateTypeAdapter;

    const-class v3, Ljava/sql/Timestamp;

    invoke-direct {v2, v3, p2, p3}, Lcom/igaworks/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    .line 588
    .restart local v2    # "timestampTypeAdapter":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<Ljava/sql/Timestamp;>;"
    new-instance v1, Lcom/igaworks/gson/DefaultDateTypeAdapter;

    const-class v3, Ljava/sql/Date;

    invoke-direct {v1, v3, p2, p3}, Lcom/igaworks/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    .restart local v1    # "javaSqlDateTypeAdapter":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<Ljava/sql/Date;>;"
    goto :goto_0
.end method


# virtual methods
.method public addDeserializationExclusionStrategy(Lcom/igaworks/gson/ExclusionStrategy;)Lcom/igaworks/gson/GsonBuilder;
    .locals 3
    .param p1, "strategy"    # Lcom/igaworks/gson/ExclusionStrategy;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->excluder:Lcom/igaworks/gson/internal/Excluder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/igaworks/gson/internal/Excluder;->withExclusionStrategy(Lcom/igaworks/gson/ExclusionStrategy;ZZ)Lcom/igaworks/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->excluder:Lcom/igaworks/gson/internal/Excluder;

    .line 351
    return-object p0
.end method

.method public addSerializationExclusionStrategy(Lcom/igaworks/gson/ExclusionStrategy;)Lcom/igaworks/gson/GsonBuilder;
    .locals 3
    .param p1, "strategy"    # Lcom/igaworks/gson/ExclusionStrategy;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->excluder:Lcom/igaworks/gson/internal/Excluder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/igaworks/gson/internal/Excluder;->withExclusionStrategy(Lcom/igaworks/gson/ExclusionStrategy;ZZ)Lcom/igaworks/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->excluder:Lcom/igaworks/gson/internal/Excluder;

    .line 334
    return-object p0
.end method

.method public create()Lcom/igaworks/gson/Gson;
    .locals 13

    .prologue
    .line 562
    new-instance v12, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/igaworks/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 563
    .local v12, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/gson/TypeAdapterFactory;>;"
    iget-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 564
    invoke-static {v12}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 565
    iget-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 566
    iget-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 567
    iget-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    iget v1, p0, Lcom/igaworks/gson/GsonBuilder;->dateStyle:I

    iget v2, p0, Lcom/igaworks/gson/GsonBuilder;->timeStyle:I

    invoke-direct {p0, v0, v1, v2, v12}, Lcom/igaworks/gson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V

    .line 569
    new-instance v0, Lcom/igaworks/gson/Gson;

    iget-object v1, p0, Lcom/igaworks/gson/GsonBuilder;->excluder:Lcom/igaworks/gson/internal/Excluder;

    iget-object v2, p0, Lcom/igaworks/gson/GsonBuilder;->fieldNamingPolicy:Lcom/igaworks/gson/FieldNamingStrategy;

    iget-object v3, p0, Lcom/igaworks/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/igaworks/gson/GsonBuilder;->serializeNulls:Z

    iget-boolean v5, p0, Lcom/igaworks/gson/GsonBuilder;->complexMapKeySerialization:Z

    iget-boolean v6, p0, Lcom/igaworks/gson/GsonBuilder;->generateNonExecutableJson:Z

    iget-boolean v7, p0, Lcom/igaworks/gson/GsonBuilder;->escapeHtmlChars:Z

    iget-boolean v8, p0, Lcom/igaworks/gson/GsonBuilder;->prettyPrinting:Z

    iget-boolean v9, p0, Lcom/igaworks/gson/GsonBuilder;->lenient:Z

    iget-boolean v10, p0, Lcom/igaworks/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    iget-object v11, p0, Lcom/igaworks/gson/GsonBuilder;->longSerializationPolicy:Lcom/igaworks/gson/LongSerializationPolicy;

    invoke-direct/range {v0 .. v12}, Lcom/igaworks/gson/Gson;-><init>(Lcom/igaworks/gson/internal/Excluder;Lcom/igaworks/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/igaworks/gson/LongSerializationPolicy;Ljava/util/List;)V

    return-object v0
.end method

.method public disableHtmlEscaping()Lcom/igaworks/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 387
    return-object p0
.end method

.method public disableInnerClassSerialization()Lcom/igaworks/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->excluder:Lcom/igaworks/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/igaworks/gson/internal/Excluder;->disableInnerClassSerialization()Lcom/igaworks/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->excluder:Lcom/igaworks/gson/internal/Excluder;

    .line 261
    return-object p0
.end method

.method public enableComplexMapKeySerialization()Lcom/igaworks/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 250
    return-object p0
.end method

.method public varargs excludeFieldsWithModifiers([I)Lcom/igaworks/gson/GsonBuilder;
    .locals 1
    .param p1, "modifiers"    # [I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->excluder:Lcom/igaworks/gson/internal/Excluder;

    invoke-virtual {v0, p1}, Lcom/igaworks/gson/internal/Excluder;->withModifiers([I)Lcom/igaworks/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->excluder:Lcom/igaworks/gson/internal/Excluder;

    .line 132
    return-object p0
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/igaworks/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->excluder:Lcom/igaworks/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/igaworks/gson/internal/Excluder;->excludeFieldsWithoutExposeAnnotation()Lcom/igaworks/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->excluder:Lcom/igaworks/gson/internal/Excluder;

    .line 157
    return-object p0
.end method

.method public generateNonExecutableJson()Lcom/igaworks/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 146
    return-object p0
.end method

.method public registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/igaworks/gson/GsonBuilder;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "typeAdapter"    # Ljava/lang/Object;

    .prologue
    .line 472
    instance-of v1, p2, Lcom/igaworks/gson/JsonSerializer;

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/igaworks/gson/JsonDeserializer;

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/igaworks/gson/InstanceCreator;

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/igaworks/gson/TypeAdapter;

    if-eqz v1, :cond_5

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/igaworks/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 476
    instance-of v1, p2, Lcom/igaworks/gson/InstanceCreator;

    if-eqz v1, :cond_1

    .line 477
    iget-object v2, p0, Lcom/igaworks/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    move-object v1, p2

    check-cast v1, Lcom/igaworks/gson/InstanceCreator;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_1
    instance-of v1, p2, Lcom/igaworks/gson/JsonSerializer;

    if-nez v1, :cond_2

    instance-of v1, p2, Lcom/igaworks/gson/JsonDeserializer;

    if-eqz v1, :cond_3

    .line 480
    :cond_2
    invoke-static {p1}, Lcom/igaworks/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/igaworks/gson/reflect/TypeToken;

    move-result-object v0

    .line 481
    .local v0, "typeToken":Lcom/igaworks/gson/reflect/TypeToken;, "Lcom/igaworks/gson/reflect/TypeToken<*>;"
    iget-object v1, p0, Lcom/igaworks/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->newFactoryWithMatchRawType(Lcom/igaworks/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/igaworks/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    .end local v0    # "typeToken":Lcom/igaworks/gson/reflect/TypeToken;, "Lcom/igaworks/gson/reflect/TypeToken<*>;"
    :cond_3
    instance-of v1, p2, Lcom/igaworks/gson/TypeAdapter;

    if-eqz v1, :cond_4

    .line 484
    iget-object v1, p0, Lcom/igaworks/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {p1}, Lcom/igaworks/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/igaworks/gson/reflect/TypeToken;

    move-result-object v2

    check-cast p2, Lcom/igaworks/gson/TypeAdapter;

    .end local p2    # "typeAdapter":Ljava/lang/Object;
    invoke-static {v2, p2}, Lcom/igaworks/gson/internal/bind/TypeAdapters;->newFactory(Lcom/igaworks/gson/reflect/TypeToken;Lcom/igaworks/gson/TypeAdapter;)Lcom/igaworks/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_4
    return-object p0

    .line 472
    .restart local p2    # "typeAdapter":Ljava/lang/Object;
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerTypeAdapterFactory(Lcom/igaworks/gson/TypeAdapterFactory;)Lcom/igaworks/gson/GsonBuilder;
    .locals 1
    .param p1, "factory"    # Lcom/igaworks/gson/TypeAdapterFactory;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    return-object p0
.end method

.method public registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/igaworks/gson/GsonBuilder;
    .locals 2
    .param p2, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/igaworks/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .line 518
    .local p1, "baseType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v0, p2, Lcom/igaworks/gson/JsonSerializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/igaworks/gson/JsonDeserializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/igaworks/gson/TypeAdapter;

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/igaworks/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 521
    instance-of v0, p2, Lcom/igaworks/gson/JsonDeserializer;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/igaworks/gson/JsonSerializer;

    if-eqz v0, :cond_2

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/igaworks/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_2
    instance-of v0, p2, Lcom/igaworks/gson/TypeAdapter;

    if-eqz v0, :cond_3

    .line 525
    iget-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->factories:Ljava/util/List;

    check-cast p2, Lcom/igaworks/gson/TypeAdapter;

    .end local p2    # "typeAdapter":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/igaworks/gson/internal/bind/TypeAdapters;->newTypeHierarchyFactory(Ljava/lang/Class;Lcom/igaworks/gson/TypeAdapter;)Lcom/igaworks/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_3
    return-object p0

    .line 518
    .restart local p2    # "typeAdapter":Ljava/lang/Object;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeNulls()Lcom/igaworks/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/gson/GsonBuilder;->serializeNulls:Z

    .line 169
    return-object p0
.end method

.method public serializeSpecialFloatingPointValues()Lcom/igaworks/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 552
    return-object p0
.end method

.method public setDateFormat(I)Lcom/igaworks/gson/GsonBuilder;
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 427
    iput p1, p0, Lcom/igaworks/gson/GsonBuilder;->dateStyle:I

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 429
    return-object p0
.end method

.method public setDateFormat(II)Lcom/igaworks/gson/GsonBuilder;
    .locals 1
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I

    .prologue
    .line 448
    iput p1, p0, Lcom/igaworks/gson/GsonBuilder;->dateStyle:I

    .line 449
    iput p2, p0, Lcom/igaworks/gson/GsonBuilder;->timeStyle:I

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 451
    return-object p0
.end method

.method public setDateFormat(Ljava/lang/String;)Lcom/igaworks/gson/GsonBuilder;
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/igaworks/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 409
    return-object p0
.end method

.method public varargs setExclusionStrategies([Lcom/igaworks/gson/ExclusionStrategy;)Lcom/igaworks/gson/GsonBuilder;
    .locals 5
    .param p1, "strategies"    # [Lcom/igaworks/gson/ExclusionStrategy;

    .prologue
    const/4 v4, 0x1

    .line 314
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 315
    .local v0, "strategy":Lcom/igaworks/gson/ExclusionStrategy;
    iget-object v3, p0, Lcom/igaworks/gson/GsonBuilder;->excluder:Lcom/igaworks/gson/internal/Excluder;

    invoke-virtual {v3, v0, v4, v4}, Lcom/igaworks/gson/internal/Excluder;->withExclusionStrategy(Lcom/igaworks/gson/ExclusionStrategy;ZZ)Lcom/igaworks/gson/internal/Excluder;

    move-result-object v3

    iput-object v3, p0, Lcom/igaworks/gson/GsonBuilder;->excluder:Lcom/igaworks/gson/internal/Excluder;

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v0    # "strategy":Lcom/igaworks/gson/ExclusionStrategy;
    :cond_0
    return-object p0
.end method

.method public setFieldNamingPolicy(Lcom/igaworks/gson/FieldNamingPolicy;)Lcom/igaworks/gson/GsonBuilder;
    .locals 0
    .param p1, "namingConvention"    # Lcom/igaworks/gson/FieldNamingPolicy;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/igaworks/gson/GsonBuilder;->fieldNamingPolicy:Lcom/igaworks/gson/FieldNamingStrategy;

    .line 287
    return-object p0
.end method

.method public setFieldNamingStrategy(Lcom/igaworks/gson/FieldNamingStrategy;)Lcom/igaworks/gson/GsonBuilder;
    .locals 0
    .param p1, "fieldNamingStrategy"    # Lcom/igaworks/gson/FieldNamingStrategy;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/igaworks/gson/GsonBuilder;->fieldNamingPolicy:Lcom/igaworks/gson/FieldNamingStrategy;

    .line 300
    return-object p0
.end method

.method public setLenient()Lcom/igaworks/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/gson/GsonBuilder;->lenient:Z

    .line 375
    return-object p0
.end method

.method public setLongSerializationPolicy(Lcom/igaworks/gson/LongSerializationPolicy;)Lcom/igaworks/gson/GsonBuilder;
    .locals 0
    .param p1, "serializationPolicy"    # Lcom/igaworks/gson/LongSerializationPolicy;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/igaworks/gson/GsonBuilder;->longSerializationPolicy:Lcom/igaworks/gson/LongSerializationPolicy;

    .line 274
    return-object p0
.end method

.method public setPrettyPrinting()Lcom/igaworks/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/gson/GsonBuilder;->prettyPrinting:Z

    .line 362
    return-object p0
.end method

.method public setVersion(D)Lcom/igaworks/gson/GsonBuilder;
    .locals 1
    .param p1, "ignoreVersionsAfter"    # D

    .prologue
    .line 115
    iget-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->excluder:Lcom/igaworks/gson/internal/Excluder;

    invoke-virtual {v0, p1, p2}, Lcom/igaworks/gson/internal/Excluder;->withVersion(D)Lcom/igaworks/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/gson/GsonBuilder;->excluder:Lcom/igaworks/gson/internal/Excluder;

    .line 116
    return-object p0
.end method
