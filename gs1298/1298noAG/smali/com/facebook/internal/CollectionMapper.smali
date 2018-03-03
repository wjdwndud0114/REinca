.class public Lcom/facebook/internal/CollectionMapper;
.super Ljava/lang/Object;
.source "CollectionMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/CollectionMapper$Collection;,
        Lcom/facebook/internal/CollectionMapper$ValueMapper;,
        Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;,
        Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;,
        Lcom/facebook/internal/CollectionMapper$OnErrorListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iterate(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$ValueMapper;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
    .locals 10
    .param p1, "valueMapper"    # Lcom/facebook/internal/CollectionMapper$ValueMapper;
    .param p2, "onMapperCompleteListener"    # Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/internal/CollectionMapper$Collection",
            "<TT;>;",
            "Lcom/facebook/internal/CollectionMapper$ValueMapper;",
            "Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "collection":Lcom/facebook/internal/CollectionMapper$Collection;, "Lcom/facebook/internal/CollectionMapper$Collection<TT;>;"
    new-instance v0, Lcom/facebook/internal/Mutable;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/facebook/internal/Mutable;-><init>(Ljava/lang/Object;)V

    .line 40
    .local v0, "didReturnError":Lcom/facebook/internal/Mutable;, "Lcom/facebook/internal/Mutable<Ljava/lang/Boolean;>;"
    new-instance v6, Lcom/facebook/internal/Mutable;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/facebook/internal/Mutable;-><init>(Ljava/lang/Object;)V

    .line 41
    .local v6, "pendingJobCount":Lcom/facebook/internal/Mutable;, "Lcom/facebook/internal/Mutable<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/facebook/internal/CollectionMapper$1;

    invoke-direct {v1, v0, v6, p2}, Lcom/facebook/internal/CollectionMapper$1;-><init>(Lcom/facebook/internal/Mutable;Lcom/facebook/internal/Mutable;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 62
    .local v1, "jobCompleteListener":Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
    invoke-interface {p0}, Lcom/facebook/internal/CollectionMapper$Collection;->keyIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 63
    .local v3, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 64
    .local v4, "keys":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 65
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 69
    .local v2, "key":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v2}, Lcom/facebook/internal/CollectionMapper$Collection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 70
    .local v7, "value":Ljava/lang/Object;
    new-instance v5, Lcom/facebook/internal/CollectionMapper$2;

    invoke-direct {v5, p0, v2, v1}, Lcom/facebook/internal/CollectionMapper$2;-><init>(Lcom/facebook/internal/CollectionMapper$Collection;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 83
    .local v5, "onMapValueCompleteListener":Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;
    iget-object v8, v6, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    iget-object v8, v6, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v6, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    .line 84
    invoke-interface {p1, v7, v5}, Lcom/facebook/internal/CollectionMapper$ValueMapper;->mapValue(Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    goto :goto_1

    .line 86
    .end local v2    # "key":Ljava/lang/Object;, "TT;"
    .end local v5    # "onMapValueCompleteListener":Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_1
    invoke-interface {v1}, Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;->onComplete()V

    .line 87
    return-void
.end method
