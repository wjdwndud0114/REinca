.class public final Lcom/igaworks/gson/Gson;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/gson/Gson$FutureTypeAdapter;
    }
.end annotation


# static fields
.field static final DEFAULT_COMPLEX_MAP_KEYS:Z = false

.field static final DEFAULT_ESCAPE_HTML:Z = true

.field static final DEFAULT_JSON_NON_EXECUTABLE:Z = false

.field static final DEFAULT_LENIENT:Z = false

.field static final DEFAULT_PRETTY_PRINT:Z = false

.field static final DEFAULT_SERIALIZE_NULLS:Z = false

.field static final DEFAULT_SPECIALIZE_FLOAT_VALUES:Z = false

.field private static final JSON_NON_EXECUTABLE_PREFIX:Ljava/lang/String; = ")]}\'\n"

.field private static final NULL_KEY_SURROGATE:Lcom/igaworks/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igaworks/gson/reflect/TypeToken",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final calls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/igaworks/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/igaworks/gson/Gson$FutureTypeAdapter",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final constructorConstructor:Lcom/igaworks/gson/internal/ConstructorConstructor;

.field private final excluder:Lcom/igaworks/gson/internal/Excluder;

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

.field private final fieldNamingStrategy:Lcom/igaworks/gson/FieldNamingStrategy;

.field private final generateNonExecutableJson:Z

.field private final htmlSafe:Z

.field private final jsonAdapterFactory:Lcom/igaworks/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field private final lenient:Z

.field private final prettyPrinting:Z

.field private final serializeNulls:Z

.field private final typeTokenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/igaworks/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/igaworks/gson/TypeAdapter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/igaworks/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/igaworks/gson/reflect/TypeToken;

    move-result-object v0

    sput-object v0, Lcom/igaworks/gson/Gson;->NULL_KEY_SURROGATE:Lcom/igaworks/gson/reflect/TypeToken;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 174
    sget-object v1, Lcom/igaworks/gson/internal/Excluder;->DEFAULT:Lcom/igaworks/gson/internal/Excluder;

    sget-object v2, Lcom/igaworks/gson/FieldNamingPolicy;->IDENTITY:Lcom/igaworks/gson/FieldNamingPolicy;

    .line 175
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v11, Lcom/igaworks/gson/LongSerializationPolicy;->DEFAULT:Lcom/igaworks/gson/LongSerializationPolicy;

    .line 178
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    move v10, v4

    .line 174
    invoke-direct/range {v0 .. v12}, Lcom/igaworks/gson/Gson;-><init>(Lcom/igaworks/gson/internal/Excluder;Lcom/igaworks/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/igaworks/gson/LongSerializationPolicy;Ljava/util/List;)V

    .line 179
    return-void
.end method

.method constructor <init>(Lcom/igaworks/gson/internal/Excluder;Lcom/igaworks/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/igaworks/gson/LongSerializationPolicy;Ljava/util/List;)V
    .locals 6
    .param p1, "excluder"    # Lcom/igaworks/gson/internal/Excluder;
    .param p2, "fieldNamingStrategy"    # Lcom/igaworks/gson/FieldNamingStrategy;
    .param p4, "serializeNulls"    # Z
    .param p5, "complexMapKeySerialization"    # Z
    .param p6, "generateNonExecutableGson"    # Z
    .param p7, "htmlSafe"    # Z
    .param p8, "prettyPrinting"    # Z
    .param p9, "lenient"    # Z
    .param p10, "serializeSpecialFloatingPointValues"    # Z
    .param p11, "longSerializationPolicy"    # Lcom/igaworks/gson/LongSerializationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/gson/internal/Excluder;",
            "Lcom/igaworks/gson/FieldNamingStrategy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/igaworks/gson/InstanceCreator",
            "<*>;>;ZZZZZZZ",
            "Lcom/igaworks/gson/LongSerializationPolicy;",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p3, "instanceCreators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/igaworks/gson/InstanceCreator<*>;>;"
    .local p12, "typeAdapterFactories":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/gson/TypeAdapterFactory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v3, Ljava/lang/ThreadLocal;

    invoke-direct {v3}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v3, p0, Lcom/igaworks/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    .line 125
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/igaworks/gson/Gson;->typeTokenCache:Ljava/util/Map;

    .line 187
    new-instance v3, Lcom/igaworks/gson/internal/ConstructorConstructor;

    invoke-direct {v3, p3}, Lcom/igaworks/gson/internal/ConstructorConstructor;-><init>(Ljava/util/Map;)V

    iput-object v3, p0, Lcom/igaworks/gson/Gson;->constructorConstructor:Lcom/igaworks/gson/internal/ConstructorConstructor;

    .line 188
    iput-object p1, p0, Lcom/igaworks/gson/Gson;->excluder:Lcom/igaworks/gson/internal/Excluder;

    .line 189
    iput-object p2, p0, Lcom/igaworks/gson/Gson;->fieldNamingStrategy:Lcom/igaworks/gson/FieldNamingStrategy;

    .line 190
    iput-boolean p4, p0, Lcom/igaworks/gson/Gson;->serializeNulls:Z

    .line 191
    iput-boolean p6, p0, Lcom/igaworks/gson/Gson;->generateNonExecutableJson:Z

    .line 192
    iput-boolean p7, p0, Lcom/igaworks/gson/Gson;->htmlSafe:Z

    .line 193
    iput-boolean p8, p0, Lcom/igaworks/gson/Gson;->prettyPrinting:Z

    .line 194
    iput-boolean p9, p0, Lcom/igaworks/gson/Gson;->lenient:Z

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v1, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/gson/TypeAdapterFactory;>;"
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v3, Lcom/igaworks/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    move-object/from16 v0, p12

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->STRING_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-static/range {p11 .. p11}, Lcom/igaworks/gson/Gson;->longAdapter(Lcom/igaworks/gson/LongSerializationPolicy;)Lcom/igaworks/gson/TypeAdapter;

    move-result-object v2

    .line 215
    .local v2, "longAdapter":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<Ljava/lang/Number;>;"
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Long;

    invoke-static {v3, v4, v2}, Lcom/igaworks/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/igaworks/gson/TypeAdapter;)Lcom/igaworks/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Double;

    .line 217
    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/igaworks/gson/Gson;->doubleAdapter(Z)Lcom/igaworks/gson/TypeAdapter;

    move-result-object v5

    .line 216
    invoke-static {v3, v4, v5}, Lcom/igaworks/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/igaworks/gson/TypeAdapter;)Lcom/igaworks/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    .line 219
    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/igaworks/gson/Gson;->floatAdapter(Z)Lcom/igaworks/gson/TypeAdapter;

    move-result-object v5

    .line 218
    invoke-static {v3, v4, v5}, Lcom/igaworks/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/igaworks/gson/TypeAdapter;)Lcom/igaworks/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->NUMBER_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->ATOMIC_BOOLEAN_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v2}, Lcom/igaworks/gson/Gson;->atomicLongAdapter(Lcom/igaworks/gson/TypeAdapter;)Lcom/igaworks/gson/TypeAdapter;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/igaworks/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/igaworks/gson/TypeAdapter;)Lcom/igaworks/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    const-class v3, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v2}, Lcom/igaworks/gson/Gson;->atomicLongArrayAdapter(Lcom/igaworks/gson/TypeAdapter;)Lcom/igaworks/gson/TypeAdapter;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/igaworks/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/igaworks/gson/TypeAdapter;)Lcom/igaworks/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_ARRAY_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    const-class v3, Ljava/math/BigDecimal;

    sget-object v4, Lcom/igaworks/gson/internal/bind/TypeAdapters;->BIG_DECIMAL:Lcom/igaworks/gson/TypeAdapter;

    invoke-static {v3, v4}, Lcom/igaworks/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/igaworks/gson/TypeAdapter;)Lcom/igaworks/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    const-class v3, Ljava/math/BigInteger;

    sget-object v4, Lcom/igaworks/gson/internal/bind/TypeAdapters;->BIG_INTEGER:Lcom/igaworks/gson/TypeAdapter;

    invoke-static {v3, v4}, Lcom/igaworks/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/igaworks/gson/TypeAdapter;)Lcom/igaworks/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->URL_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->URI_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->UUID_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->CURRENCY_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v3, Lcom/igaworks/gson/internal/bind/DateTypeAdapter;->FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v3, Lcom/igaworks/gson/internal/bind/TimeTypeAdapter;->FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v3, Lcom/igaworks/gson/internal/bind/SqlDateTypeAdapter;->FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->TIMESTAMP_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v3, Lcom/igaworks/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v3, Lcom/igaworks/gson/internal/bind/CollectionTypeAdapterFactory;

    iget-object v4, p0, Lcom/igaworks/gson/Gson;->constructorConstructor:Lcom/igaworks/gson/internal/ConstructorConstructor;

    invoke-direct {v3, v4}, Lcom/igaworks/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lcom/igaworks/gson/internal/ConstructorConstructor;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v3, Lcom/igaworks/gson/internal/bind/MapTypeAdapterFactory;

    iget-object v4, p0, Lcom/igaworks/gson/Gson;->constructorConstructor:Lcom/igaworks/gson/internal/ConstructorConstructor;

    invoke-direct {v3, v4, p5}, Lcom/igaworks/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lcom/igaworks/gson/internal/ConstructorConstructor;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v3, Lcom/igaworks/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iget-object v4, p0, Lcom/igaworks/gson/Gson;->constructorConstructor:Lcom/igaworks/gson/internal/ConstructorConstructor;

    invoke-direct {v3, v4}, Lcom/igaworks/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;-><init>(Lcom/igaworks/gson/internal/ConstructorConstructor;)V

    iput-object v3, p0, Lcom/igaworks/gson/Gson;->jsonAdapterFactory:Lcom/igaworks/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 250
    iget-object v3, p0, Lcom/igaworks/gson/Gson;->jsonAdapterFactory:Lcom/igaworks/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v3, Lcom/igaworks/gson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcom/igaworks/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v3, Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iget-object v4, p0, Lcom/igaworks/gson/Gson;->constructorConstructor:Lcom/igaworks/gson/internal/ConstructorConstructor;

    iget-object v5, p0, Lcom/igaworks/gson/Gson;->jsonAdapterFactory:Lcom/igaworks/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-direct {v3, v4, p2, p1, v5}, Lcom/igaworks/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lcom/igaworks/gson/internal/ConstructorConstructor;Lcom/igaworks/gson/FieldNamingStrategy;Lcom/igaworks/gson/internal/Excluder;Lcom/igaworks/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/igaworks/gson/Gson;->factories:Ljava/util/List;

    .line 256
    return-void
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lcom/igaworks/gson/stream/JsonReader;)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "reader"    # Lcom/igaworks/gson/stream/JsonReader;

    .prologue
    .line 859
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->peek()Lcom/igaworks/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/igaworks/gson/stream/JsonToken;->END_DOCUMENT:Lcom/igaworks/gson/stream/JsonToken;

    if-eq v1, v2, :cond_0

    .line 860
    new-instance v1, Lcom/igaworks/gson/JsonIOException;

    const-string v2, "JSON document was not fully consumed."

    invoke-direct {v1, v2}, Lcom/igaworks/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/igaworks/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Lcom/igaworks/gson/stream/MalformedJsonException;
    new-instance v1, Lcom/igaworks/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/igaworks/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 864
    .end local v0    # "e":Lcom/igaworks/gson/stream/MalformedJsonException;
    :catch_1
    move-exception v0

    .line 865
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/igaworks/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/igaworks/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 867
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method private static atomicLongAdapter(Lcom/igaworks/gson/TypeAdapter;)Lcom/igaworks/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/igaworks/gson/TypeAdapter",
            "<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "longAdapter":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<Ljava/lang/Number;>;"
    new-instance v0, Lcom/igaworks/gson/Gson$4;

    invoke-direct {v0, p0}, Lcom/igaworks/gson/Gson$4;-><init>(Lcom/igaworks/gson/TypeAdapter;)V

    .line 361
    invoke-virtual {v0}, Lcom/igaworks/gson/Gson$4;->nullSafe()Lcom/igaworks/gson/TypeAdapter;

    move-result-object v0

    .line 353
    return-object v0
.end method

.method private static atomicLongArrayAdapter(Lcom/igaworks/gson/TypeAdapter;)Lcom/igaworks/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/igaworks/gson/TypeAdapter",
            "<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "longAdapter":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<Ljava/lang/Number;>;"
    new-instance v0, Lcom/igaworks/gson/Gson$5;

    invoke-direct {v0, p0}, Lcom/igaworks/gson/Gson$5;-><init>(Lcom/igaworks/gson/TypeAdapter;)V

    .line 388
    invoke-virtual {v0}, Lcom/igaworks/gson/Gson$5;->nullSafe()Lcom/igaworks/gson/TypeAdapter;

    move-result-object v0

    .line 365
    return-object v0
.end method

.method static checkValidFloatingPoint(D)V
    .locals 4
    .param p0, "value"    # D

    .prologue
    .line 323
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_1
    return-void
.end method

.method private doubleAdapter(Z)Lcom/igaworks/gson/TypeAdapter;
    .locals 1
    .param p1, "serializeSpecialFloatingPointValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/igaworks/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    if-eqz p1, :cond_0

    .line 276
    sget-object v0, Lcom/igaworks/gson/internal/bind/TypeAdapters;->DOUBLE:Lcom/igaworks/gson/TypeAdapter;

    .line 278
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/igaworks/gson/Gson$1;

    invoke-direct {v0, p0}, Lcom/igaworks/gson/Gson$1;-><init>(Lcom/igaworks/gson/Gson;)V

    goto :goto_0
.end method

.method private floatAdapter(Z)Lcom/igaworks/gson/TypeAdapter;
    .locals 1
    .param p1, "serializeSpecialFloatingPointValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/igaworks/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    if-eqz p1, :cond_0

    .line 300
    sget-object v0, Lcom/igaworks/gson/internal/bind/TypeAdapters;->FLOAT:Lcom/igaworks/gson/TypeAdapter;

    .line 302
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/igaworks/gson/Gson$2;

    invoke-direct {v0, p0}, Lcom/igaworks/gson/Gson$2;-><init>(Lcom/igaworks/gson/Gson;)V

    goto :goto_0
.end method

.method private static longAdapter(Lcom/igaworks/gson/LongSerializationPolicy;)Lcom/igaworks/gson/TypeAdapter;
    .locals 1
    .param p0, "longSerializationPolicy"    # Lcom/igaworks/gson/LongSerializationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/gson/LongSerializationPolicy;",
            ")",
            "Lcom/igaworks/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    sget-object v0, Lcom/igaworks/gson/LongSerializationPolicy;->DEFAULT:Lcom/igaworks/gson/LongSerializationPolicy;

    if-ne p0, v0, :cond_0

    .line 332
    sget-object v0, Lcom/igaworks/gson/internal/bind/TypeAdapters;->LONG:Lcom/igaworks/gson/TypeAdapter;

    .line 334
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/igaworks/gson/Gson$3;

    invoke-direct {v0}, Lcom/igaworks/gson/Gson$3;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public excluder()Lcom/igaworks/gson/internal/Excluder;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/igaworks/gson/Gson;->excluder:Lcom/igaworks/gson/internal/Excluder;

    return-object v0
.end method

.method public fieldNamingStrategy()Lcom/igaworks/gson/FieldNamingStrategy;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/igaworks/gson/Gson;->fieldNamingStrategy:Lcom/igaworks/gson/FieldNamingStrategy;

    return-object v0
.end method

.method public fromJson(Lcom/igaworks/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Lcom/igaworks/gson/JsonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/gson/JsonElement;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/igaworks/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 925
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/igaworks/gson/Gson;->fromJson(Lcom/igaworks/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 926
    .local v0, "object":Ljava/lang/Object;
    invoke-static {p2}, Lcom/igaworks/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fromJson(Lcom/igaworks/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p1, "json"    # Lcom/igaworks/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/igaworks/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 949
    if-nez p1, :cond_0

    .line 950
    const/4 v0, 0x0

    .line 952
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/igaworks/gson/internal/bind/JsonTreeReader;

    invoke-direct {v0, p1}, Lcom/igaworks/gson/internal/bind/JsonTreeReader;-><init>(Lcom/igaworks/gson/JsonElement;)V

    invoke-virtual {p0, v0, p2}, Lcom/igaworks/gson/Gson;->fromJson(Lcom/igaworks/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public fromJson(Lcom/igaworks/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 7
    .param p1, "reader"    # Lcom/igaworks/gson/stream/JsonReader;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/gson/stream/JsonReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/igaworks/gson/JsonIOException;,
            Lcom/igaworks/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 879
    const/4 v1, 0x1

    .line 880
    .local v1, "isEmpty":Z
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->isLenient()Z

    move-result v3

    .line 881
    .local v3, "oldLenient":Z
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcom/igaworks/gson/stream/JsonReader;->setLenient(Z)V

    .line 883
    :try_start_0
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->peek()Lcom/igaworks/gson/stream/JsonToken;

    .line 884
    const/4 v1, 0x0

    .line 885
    invoke-static {p2}, Lcom/igaworks/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/igaworks/gson/reflect/TypeToken;

    move-result-object v5

    .line 886
    .local v5, "typeToken":Lcom/igaworks/gson/reflect/TypeToken;, "Lcom/igaworks/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p0, v5}, Lcom/igaworks/gson/Gson;->getAdapter(Lcom/igaworks/gson/reflect/TypeToken;)Lcom/igaworks/gson/TypeAdapter;

    move-result-object v4

    .line 887
    .local v4, "typeAdapter":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<TT;>;"
    invoke-virtual {v4, p1}, Lcom/igaworks/gson/TypeAdapter;->read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 904
    .local v2, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v3}, Lcom/igaworks/gson/stream/JsonReader;->setLenient(Z)V

    .line 895
    .end local v2    # "object":Ljava/lang/Object;, "TT;"
    .end local v4    # "typeAdapter":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<TT;>;"
    .end local v5    # "typeToken":Lcom/igaworks/gson/reflect/TypeToken;, "Lcom/igaworks/gson/reflect/TypeToken<TT;>;"
    :goto_0
    return-object v2

    .line 889
    :catch_0
    move-exception v0

    .line 894
    .local v0, "e":Ljava/io/EOFException;
    if-eqz v1, :cond_0

    .line 895
    const/4 v2, 0x0

    .line 904
    invoke-virtual {p1, v3}, Lcom/igaworks/gson/stream/JsonReader;->setLenient(Z)V

    goto :goto_0

    .line 897
    :cond_0
    :try_start_1
    new-instance v6, Lcom/igaworks/gson/JsonSyntaxException;

    invoke-direct {v6, v0}, Lcom/igaworks/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 904
    .end local v0    # "e":Ljava/io/EOFException;
    :catchall_0
    move-exception v6

    invoke-virtual {p1, v3}, Lcom/igaworks/gson/stream/JsonReader;->setLenient(Z)V

    throw v6

    .line 898
    :catch_1
    move-exception v0

    .line 899
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    new-instance v6, Lcom/igaworks/gson/JsonSyntaxException;

    invoke-direct {v6, v0}, Lcom/igaworks/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 900
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 902
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lcom/igaworks/gson/JsonSyntaxException;

    invoke-direct {v6, v0}, Lcom/igaworks/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "json"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/igaworks/gson/JsonSyntaxException;,
            Lcom/igaworks/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 824
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/igaworks/gson/Gson;->newJsonReader(Ljava/io/Reader;)Lcom/igaworks/gson/stream/JsonReader;

    move-result-object v0

    .line 825
    .local v0, "jsonReader":Lcom/igaworks/gson/stream/JsonReader;
    invoke-virtual {p0, v0, p2}, Lcom/igaworks/gson/Gson;->fromJson(Lcom/igaworks/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 826
    .local v1, "object":Ljava/lang/Object;
    invoke-static {v1, v0}, Lcom/igaworks/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/igaworks/gson/stream/JsonReader;)V

    .line 827
    invoke-static {p2}, Lcom/igaworks/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Ljava/io/Reader;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/igaworks/gson/JsonIOException;,
            Lcom/igaworks/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 851
    invoke-virtual {p0, p1}, Lcom/igaworks/gson/Gson;->newJsonReader(Ljava/io/Reader;)Lcom/igaworks/gson/stream/JsonReader;

    move-result-object v0

    .line 852
    .local v0, "jsonReader":Lcom/igaworks/gson/stream/JsonReader;
    invoke-virtual {p0, v0, p2}, Lcom/igaworks/gson/Gson;->fromJson(Lcom/igaworks/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 853
    .local v1, "object":Ljava/lang/Object;, "TT;"
    invoke-static {v1, v0}, Lcom/igaworks/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/igaworks/gson/stream/JsonReader;)V

    .line 854
    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/igaworks/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 773
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/igaworks/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 774
    .local v0, "object":Ljava/lang/Object;
    invoke-static {p2}, Lcom/igaworks/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/igaworks/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 797
    if-nez p1, :cond_0

    .line 798
    const/4 v1, 0x0

    .line 802
    :goto_0
    return-object v1

    .line 800
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 801
    .local v0, "reader":Ljava/io/StringReader;
    invoke-virtual {p0, v0, p2}, Lcom/igaworks/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 802
    .local v1, "target":Ljava/lang/Object;, "TT;"
    goto :goto_0
.end method

.method public getAdapter(Lcom/igaworks/gson/reflect/TypeToken;)Lcom/igaworks/gson/TypeAdapter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/igaworks/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, "type":Lcom/igaworks/gson/reflect/TypeToken;, "Lcom/igaworks/gson/reflect/TypeToken<TT;>;"
    iget-object v8, p0, Lcom/igaworks/gson/Gson;->typeTokenCache:Ljava/util/Map;

    if-nez p1, :cond_0

    sget-object v7, Lcom/igaworks/gson/Gson;->NULL_KEY_SURROGATE:Lcom/igaworks/gson/reflect/TypeToken;

    :goto_0
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/gson/TypeAdapter;

    .line 400
    .local v0, "cached":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<*>;"
    if-eqz v0, :cond_1

    .line 427
    .end local v0    # "cached":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<*>;"
    :goto_1
    return-object v0

    :cond_0
    move-object v7, p1

    .line 399
    goto :goto_0

    .line 404
    .restart local v0    # "cached":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<*>;"
    :cond_1
    iget-object v7, p0, Lcom/igaworks/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 405
    .local v6, "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/igaworks/gson/reflect/TypeToken<*>;Lcom/igaworks/gson/Gson$FutureTypeAdapter<*>;>;"
    const/4 v5, 0x0

    .line 406
    .local v5, "requiresThreadLocalCleanup":Z
    if-nez v6, :cond_2

    .line 407
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/igaworks/gson/reflect/TypeToken<*>;Lcom/igaworks/gson/Gson$FutureTypeAdapter<*>;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 408
    .restart local v6    # "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/igaworks/gson/reflect/TypeToken<*>;Lcom/igaworks/gson/Gson$FutureTypeAdapter<*>;>;"
    iget-object v7, p0, Lcom/igaworks/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 409
    const/4 v5, 0x1

    .line 413
    :cond_2
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/igaworks/gson/Gson$FutureTypeAdapter;

    .line 414
    .local v4, "ongoingCall":Lcom/igaworks/gson/Gson$FutureTypeAdapter;, "Lcom/igaworks/gson/Gson$FutureTypeAdapter<TT;>;"
    if-eqz v4, :cond_3

    move-object v0, v4

    .line 415
    goto :goto_1

    .line 419
    :cond_3
    :try_start_0
    new-instance v1, Lcom/igaworks/gson/Gson$FutureTypeAdapter;

    invoke-direct {v1}, Lcom/igaworks/gson/Gson$FutureTypeAdapter;-><init>()V

    .line 420
    .local v1, "call":Lcom/igaworks/gson/Gson$FutureTypeAdapter;, "Lcom/igaworks/gson/Gson$FutureTypeAdapter<TT;>;"
    invoke-interface {v6, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v7, p0, Lcom/igaworks/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igaworks/gson/TypeAdapterFactory;

    .line 423
    .local v3, "factory":Lcom/igaworks/gson/TypeAdapterFactory;
    invoke-interface {v3, p0, p1}, Lcom/igaworks/gson/TypeAdapterFactory;->create(Lcom/igaworks/gson/Gson;Lcom/igaworks/gson/reflect/TypeToken;)Lcom/igaworks/gson/TypeAdapter;

    move-result-object v2

    .line 424
    .local v2, "candidate":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<TT;>;"
    if-eqz v2, :cond_4

    .line 425
    invoke-virtual {v1, v2}, Lcom/igaworks/gson/Gson$FutureTypeAdapter;->setDelegate(Lcom/igaworks/gson/TypeAdapter;)V

    .line 426
    iget-object v7, p0, Lcom/igaworks/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v7, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    if-eqz v5, :cond_5

    .line 435
    iget-object v7, p0, Lcom/igaworks/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    move-object v0, v2

    .line 427
    goto :goto_1

    .line 430
    .end local v2    # "candidate":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<TT;>;"
    .end local v3    # "factory":Lcom/igaworks/gson/TypeAdapterFactory;
    :cond_6
    :try_start_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GSON cannot handle "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    .end local v1    # "call":Lcom/igaworks/gson/Gson$FutureTypeAdapter;, "Lcom/igaworks/gson/Gson$FutureTypeAdapter<TT;>;"
    :catchall_0
    move-exception v7

    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    if-eqz v5, :cond_7

    .line 435
    iget-object v8, p0, Lcom/igaworks/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->remove()V

    :cond_7
    throw v7
.end method

.method public getAdapter(Ljava/lang/Class;)Lcom/igaworks/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/igaworks/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 521
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/igaworks/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/igaworks/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igaworks/gson/Gson;->getAdapter(Lcom/igaworks/gson/reflect/TypeToken;)Lcom/igaworks/gson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateAdapter(Lcom/igaworks/gson/TypeAdapterFactory;Lcom/igaworks/gson/reflect/TypeToken;)Lcom/igaworks/gson/TypeAdapter;
    .locals 6
    .param p1, "skipPast"    # Lcom/igaworks/gson/TypeAdapterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/gson/TypeAdapterFactory;",
            "Lcom/igaworks/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/igaworks/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 493
    .local p2, "type":Lcom/igaworks/gson/reflect/TypeToken;, "Lcom/igaworks/gson/reflect/TypeToken<TT;>;"
    iget-object v3, p0, Lcom/igaworks/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 494
    iget-object p1, p0, Lcom/igaworks/gson/Gson;->jsonAdapterFactory:Lcom/igaworks/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 497
    :cond_0
    const/4 v2, 0x0

    .line 498
    .local v2, "skipPastFound":Z
    iget-object v3, p0, Lcom/igaworks/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/gson/TypeAdapterFactory;

    .line 499
    .local v1, "factory":Lcom/igaworks/gson/TypeAdapterFactory;
    if-nez v2, :cond_2

    .line 500
    if-ne v1, p1, :cond_1

    .line 501
    const/4 v2, 0x1

    goto :goto_0

    .line 506
    :cond_2
    invoke-interface {v1, p0, p2}, Lcom/igaworks/gson/TypeAdapterFactory;->create(Lcom/igaworks/gson/Gson;Lcom/igaworks/gson/reflect/TypeToken;)Lcom/igaworks/gson/TypeAdapter;

    move-result-object v0

    .line 507
    .local v0, "candidate":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_1

    .line 508
    return-object v0

    .line 511
    .end local v0    # "candidate":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<TT;>;"
    .end local v1    # "factory":Lcom/igaworks/gson/TypeAdapterFactory;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GSON cannot serialize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public htmlSafe()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/igaworks/gson/Gson;->htmlSafe:Z

    return v0
.end method

.method public newJsonReader(Ljava/io/Reader;)Lcom/igaworks/gson/stream/JsonReader;
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 728
    new-instance v0, Lcom/igaworks/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/igaworks/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 729
    .local v0, "jsonReader":Lcom/igaworks/gson/stream/JsonReader;
    iget-boolean v1, p0, Lcom/igaworks/gson/Gson;->lenient:Z

    invoke-virtual {v0, v1}, Lcom/igaworks/gson/stream/JsonReader;->setLenient(Z)V

    .line 730
    return-object v0
.end method

.method public newJsonWriter(Ljava/io/Writer;)Lcom/igaworks/gson/stream/JsonWriter;
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 713
    iget-boolean v1, p0, Lcom/igaworks/gson/Gson;->generateNonExecutableJson:Z

    if-eqz v1, :cond_0

    .line 714
    const-string v1, ")]}\'\n"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 716
    :cond_0
    new-instance v0, Lcom/igaworks/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/igaworks/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 717
    .local v0, "jsonWriter":Lcom/igaworks/gson/stream/JsonWriter;
    iget-boolean v1, p0, Lcom/igaworks/gson/Gson;->prettyPrinting:Z

    if-eqz v1, :cond_1

    .line 718
    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/igaworks/gson/stream/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 720
    :cond_1
    iget-boolean v1, p0, Lcom/igaworks/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Lcom/igaworks/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 721
    return-object v0
.end method

.method public serializeNulls()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/igaworks/gson/Gson;->serializeNulls:Z

    return v0
.end method

.method public toJson(Lcom/igaworks/gson/JsonElement;)Ljava/lang/String;
    .locals 2
    .param p1, "jsonElement"    # Lcom/igaworks/gson/JsonElement;

    .prologue
    .line 687
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 688
    .local v0, "writer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, v0}, Lcom/igaworks/gson/Gson;->toJson(Lcom/igaworks/gson/JsonElement;Ljava/lang/Appendable;)V

    .line 689
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;

    .prologue
    .line 580
    if-nez p1, :cond_0

    .line 581
    sget-object v0, Lcom/igaworks/gson/JsonNull;->INSTANCE:Lcom/igaworks/gson/JsonNull;

    invoke-virtual {p0, v0}, Lcom/igaworks/gson/Gson;->toJson(Lcom/igaworks/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    .line 583
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/igaworks/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;

    .prologue
    .line 602
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 603
    .local v0, "writer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, p2, v0}, Lcom/igaworks/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 604
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Lcom/igaworks/gson/JsonElement;Lcom/igaworks/gson/stream/JsonWriter;)V
    .locals 5
    .param p1, "jsonElement"    # Lcom/igaworks/gson/JsonElement;
    .param p2, "writer"    # Lcom/igaworks/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/igaworks/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 738
    invoke-virtual {p2}, Lcom/igaworks/gson/stream/JsonWriter;->isLenient()Z

    move-result v2

    .line 739
    .local v2, "oldLenient":Z
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lcom/igaworks/gson/stream/JsonWriter;->setLenient(Z)V

    .line 740
    invoke-virtual {p2}, Lcom/igaworks/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v1

    .line 741
    .local v1, "oldHtmlSafe":Z
    iget-boolean v4, p0, Lcom/igaworks/gson/Gson;->htmlSafe:Z

    invoke-virtual {p2, v4}, Lcom/igaworks/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 742
    invoke-virtual {p2}, Lcom/igaworks/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v3

    .line 743
    .local v3, "oldSerializeNulls":Z
    iget-boolean v4, p0, Lcom/igaworks/gson/Gson;->serializeNulls:Z

    invoke-virtual {p2, v4}, Lcom/igaworks/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 745
    :try_start_0
    invoke-static {p1, p2}, Lcom/igaworks/gson/internal/Streams;->write(Lcom/igaworks/gson/JsonElement;Lcom/igaworks/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    invoke-virtual {p2, v2}, Lcom/igaworks/gson/stream/JsonWriter;->setLenient(Z)V

    .line 750
    invoke-virtual {p2, v1}, Lcom/igaworks/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 751
    invoke-virtual {p2, v3}, Lcom/igaworks/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 753
    return-void

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Lcom/igaworks/gson/JsonIOException;

    invoke-direct {v4, v0}, Lcom/igaworks/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 749
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {p2, v2}, Lcom/igaworks/gson/stream/JsonWriter;->setLenient(Z)V

    .line 750
    invoke-virtual {p2, v1}, Lcom/igaworks/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 751
    invoke-virtual {p2, v3}, Lcom/igaworks/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v4
.end method

.method public toJson(Lcom/igaworks/gson/JsonElement;Ljava/lang/Appendable;)V
    .locals 3
    .param p1, "jsonElement"    # Lcom/igaworks/gson/JsonElement;
    .param p2, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/igaworks/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 702
    :try_start_0
    invoke-static {p2}, Lcom/igaworks/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/igaworks/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/igaworks/gson/stream/JsonWriter;

    move-result-object v1

    .line 703
    .local v1, "jsonWriter":Lcom/igaworks/gson/stream/JsonWriter;
    invoke-virtual {p0, p1, v1}, Lcom/igaworks/gson/Gson;->toJson(Lcom/igaworks/gson/JsonElement;Lcom/igaworks/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    return-void

    .line 704
    .end local v1    # "jsonWriter":Lcom/igaworks/gson/stream/JsonWriter;
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/igaworks/gson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/igaworks/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/igaworks/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 622
    if-eqz p1, :cond_0

    .line 623
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/igaworks/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 627
    :goto_0
    return-void

    .line 625
    :cond_0
    sget-object v0, Lcom/igaworks/gson/JsonNull;->INSTANCE:Lcom/igaworks/gson/JsonNull;

    invoke-virtual {p0, v0, p2}, Lcom/igaworks/gson/Gson;->toJson(Lcom/igaworks/gson/JsonElement;Ljava/lang/Appendable;)V

    goto :goto_0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/igaworks/gson/stream/JsonWriter;)V
    .locals 6
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "writer"    # Lcom/igaworks/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/igaworks/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 661
    invoke-static {p2}, Lcom/igaworks/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/igaworks/gson/reflect/TypeToken;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/igaworks/gson/Gson;->getAdapter(Lcom/igaworks/gson/reflect/TypeToken;)Lcom/igaworks/gson/TypeAdapter;

    move-result-object v0

    .line 662
    .local v0, "adapter":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<*>;"
    invoke-virtual {p3}, Lcom/igaworks/gson/stream/JsonWriter;->isLenient()Z

    move-result v3

    .line 663
    .local v3, "oldLenient":Z
    const/4 v5, 0x1

    invoke-virtual {p3, v5}, Lcom/igaworks/gson/stream/JsonWriter;->setLenient(Z)V

    .line 664
    invoke-virtual {p3}, Lcom/igaworks/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v2

    .line 665
    .local v2, "oldHtmlSafe":Z
    iget-boolean v5, p0, Lcom/igaworks/gson/Gson;->htmlSafe:Z

    invoke-virtual {p3, v5}, Lcom/igaworks/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 666
    invoke-virtual {p3}, Lcom/igaworks/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v4

    .line 667
    .local v4, "oldSerializeNulls":Z
    iget-boolean v5, p0, Lcom/igaworks/gson/Gson;->serializeNulls:Z

    invoke-virtual {p3, v5}, Lcom/igaworks/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 669
    :try_start_0
    invoke-virtual {v0, p3, p1}, Lcom/igaworks/gson/TypeAdapter;->write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    invoke-virtual {p3, v3}, Lcom/igaworks/gson/stream/JsonWriter;->setLenient(Z)V

    .line 674
    invoke-virtual {p3, v2}, Lcom/igaworks/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 675
    invoke-virtual {p3, v4}, Lcom/igaworks/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 677
    return-void

    .line 670
    :catch_0
    move-exception v1

    .line 671
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Lcom/igaworks/gson/JsonIOException;

    invoke-direct {v5, v1}, Lcom/igaworks/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-virtual {p3, v3}, Lcom/igaworks/gson/stream/JsonWriter;->setLenient(Z)V

    .line 674
    invoke-virtual {p3, v2}, Lcom/igaworks/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 675
    invoke-virtual {p3, v4}, Lcom/igaworks/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v5
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 3
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/igaworks/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 647
    :try_start_0
    invoke-static {p3}, Lcom/igaworks/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/igaworks/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/igaworks/gson/stream/JsonWriter;

    move-result-object v1

    .line 648
    .local v1, "jsonWriter":Lcom/igaworks/gson/stream/JsonWriter;
    invoke-virtual {p0, p1, p2, v1}, Lcom/igaworks/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/igaworks/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    return-void

    .line 649
    .end local v1    # "jsonWriter":Lcom/igaworks/gson/stream/JsonWriter;
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/igaworks/gson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/igaworks/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toJsonTree(Ljava/lang/Object;)Lcom/igaworks/gson/JsonElement;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;

    .prologue
    .line 538
    if-nez p1, :cond_0

    .line 539
    sget-object v0, Lcom/igaworks/gson/JsonNull;->INSTANCE:Lcom/igaworks/gson/JsonNull;

    .line 541
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/igaworks/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/igaworks/gson/JsonElement;

    move-result-object v0

    goto :goto_0
.end method

.method public toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/igaworks/gson/JsonElement;
    .locals 2
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;

    .prologue
    .line 561
    new-instance v0, Lcom/igaworks/gson/internal/bind/JsonTreeWriter;

    invoke-direct {v0}, Lcom/igaworks/gson/internal/bind/JsonTreeWriter;-><init>()V

    .line 562
    .local v0, "writer":Lcom/igaworks/gson/internal/bind/JsonTreeWriter;
    invoke-virtual {p0, p1, p2, v0}, Lcom/igaworks/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/igaworks/gson/stream/JsonWriter;)V

    .line 563
    invoke-virtual {v0}, Lcom/igaworks/gson/internal/bind/JsonTreeWriter;->get()Lcom/igaworks/gson/JsonElement;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/igaworks/gson/Gson;->serializeNulls:Z

    .line 983
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",factories:"

    .line 984
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/gson/Gson;->factories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    .line 985
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/gson/Gson;->constructorConstructor:Lcom/igaworks/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    .line 986
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 987
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 982
    return-object v0
.end method
