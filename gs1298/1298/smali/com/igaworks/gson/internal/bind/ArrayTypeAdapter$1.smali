.class final Lcom/igaworks/gson/internal/bind/ArrayTypeAdapter$1;
.super Ljava/lang/Object;
.source "ArrayTypeAdapter.java"

# interfaces
.implements Lcom/igaworks/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/gson/internal/bind/ArrayTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/igaworks/gson/Gson;Lcom/igaworks/gson/reflect/TypeToken;)Lcom/igaworks/gson/TypeAdapter;
    .locals 5
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
    .line 42
    .local p2, "typeToken":Lcom/igaworks/gson/reflect/TypeToken;, "Lcom/igaworks/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/igaworks/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 43
    .local v2, "type":Ljava/lang/reflect/Type;
    instance-of v3, v2, Ljava/lang/reflect/GenericArrayType;

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_1

    .line 44
    :cond_0
    const/4 v3, 0x0

    .line 49
    :goto_0
    return-object v3

    .line 47
    :cond_1
    invoke-static {v2}, Lcom/igaworks/gson/internal/$Gson$Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 48
    .local v0, "componentType":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lcom/igaworks/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/igaworks/gson/reflect/TypeToken;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/igaworks/gson/Gson;->getAdapter(Lcom/igaworks/gson/reflect/TypeToken;)Lcom/igaworks/gson/TypeAdapter;

    move-result-object v1

    .line 49
    .local v1, "componentTypeAdapter":Lcom/igaworks/gson/TypeAdapter;, "Lcom/igaworks/gson/TypeAdapter<*>;"
    new-instance v3, Lcom/igaworks/gson/internal/bind/ArrayTypeAdapter;

    .line 50
    invoke-static {v0}, Lcom/igaworks/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p1, v1, v4}, Lcom/igaworks/gson/internal/bind/ArrayTypeAdapter;-><init>(Lcom/igaworks/gson/Gson;Lcom/igaworks/gson/TypeAdapter;Ljava/lang/Class;)V

    goto :goto_0
.end method
