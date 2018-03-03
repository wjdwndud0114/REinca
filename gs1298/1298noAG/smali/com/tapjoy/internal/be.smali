.class public final Lcom/tapjoy/internal/be;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/HashMap;

.field private final b:Lcom/tapjoy/internal/cc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/be;->a:Ljava/util/HashMap;

    .line 14
    new-instance v0, Lcom/tapjoy/internal/cc;

    invoke-direct {v0}, Lcom/tapjoy/internal/cc;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/be;->b:Lcom/tapjoy/internal/cc;

    return-void
.end method

.method public static a()Lcom/tapjoy/internal/be;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/tapjoy/internal/be;

    invoke-direct {v0}, Lcom/tapjoy/internal/be;-><init>()V

    return-object v0
.end method

.method private static a(Lcom/tapjoy/internal/cb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/internal/cb;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 107
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/be;->b:Lcom/tapjoy/internal/cc;

    invoke-virtual {v0}, Lcom/tapjoy/internal/cc;->a()Lcom/tapjoy/internal/cb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/tapjoy/internal/be;->a:Ljava/util/HashMap;

    .line 1016
    iget-object v0, v0, Lcom/tapjoy/internal/cb;->a:Ljava/lang/Object;

    .line 108
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tapjoy/internal/be;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/be;->b:Lcom/tapjoy/internal/cc;

    invoke-virtual {v0}, Lcom/tapjoy/internal/cc;->a()Lcom/tapjoy/internal/cb;

    move-result-object v0

    if-nez v0, :cond_0

    .line 28
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lcom/tapjoy/internal/be;, "Lcom/tapjoy/internal/be<TK;TV;>;"
    invoke-direct {p0}, Lcom/tapjoy/internal/be;->b()V

    .line 33
    iget-object v0, p0, Lcom/tapjoy/internal/be;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 38
    .local p0, "this":Lcom/tapjoy/internal/be;, "Lcom/tapjoy/internal/be<TK;TV;>;"
    invoke-direct {p0}, Lcom/tapjoy/internal/be;->b()V

    .line 39
    iget-object v0, p0, Lcom/tapjoy/internal/be;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/cb;

    .line 40
    invoke-virtual {v0}, Lcom/tapjoy/internal/cb;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/tapjoy/internal/be;->b()V

    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 89
    .local p0, "this":Lcom/tapjoy/internal/be;, "Lcom/tapjoy/internal/be<TK;TV;>;"
    invoke-direct {p0}, Lcom/tapjoy/internal/be;->b()V

    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 49
    .local p0, "this":Lcom/tapjoy/internal/be;, "Lcom/tapjoy/internal/be<TK;TV;>;"
    invoke-direct {p0}, Lcom/tapjoy/internal/be;->b()V

    .line 50
    iget-object v0, p0, Lcom/tapjoy/internal/be;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/cb;

    invoke-static {v0}, Lcom/tapjoy/internal/be;->a(Lcom/tapjoy/internal/cb;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/tapjoy/internal/be;->b()V

    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/tapjoy/internal/be;->b()V

    .line 78
    iget-object v0, p0, Lcom/tapjoy/internal/be;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 55
    .local p0, "this":Lcom/tapjoy/internal/be;, "Lcom/tapjoy/internal/be<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lcom/tapjoy/internal/be;->b()V

    .line 56
    iget-object v0, p0, Lcom/tapjoy/internal/be;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tapjoy/internal/be;->b:Lcom/tapjoy/internal/cc;

    .line 1010
    new-instance v2, Lcom/tapjoy/internal/cb;

    invoke-direct {v2, p1, p2, v1}, Lcom/tapjoy/internal/cb;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 56
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/cb;

    invoke-static {v0}, Lcom/tapjoy/internal/be;->a(Lcom/tapjoy/internal/cb;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 61
    .local p0, "this":Lcom/tapjoy/internal/be;, "Lcom/tapjoy/internal/be<TK;TV;>;"
    invoke-direct {p0}, Lcom/tapjoy/internal/be;->b()V

    .line 62
    iget-object v0, p0, Lcom/tapjoy/internal/be;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/cb;

    invoke-static {v0}, Lcom/tapjoy/internal/be;->a(Lcom/tapjoy/internal/cb;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/tapjoy/internal/be;->b()V

    .line 19
    iget-object v0, p0, Lcom/tapjoy/internal/be;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/tapjoy/internal/be;->b()V

    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/tapjoy/internal/be;->b()V

    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
