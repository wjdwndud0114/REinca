.class public final Lcom/tapjoy/internal/bd;
.super Ljava/util/AbstractSet;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Set;


# instance fields
.field transient a:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/bd;-><init>(Ljava/util/WeakHashMap;)V

    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/util/WeakHashMap;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/tapjoy/internal/bd;->a:Ljava/util/WeakHashMap;

    .line 69
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lcom/tapjoy/internal/bd;, "Lcom/tapjoy/internal/bd<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/tapjoy/internal/bd;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tapjoy/internal/bd;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 94
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 107
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/bd;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return-object v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 124
    .local p0, "this":Lcom/tapjoy/internal/bd;, "Lcom/tapjoy/internal/bd<TE;>;"
    iget-object v0, p0, Lcom/tapjoy/internal/bd;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/tapjoy/internal/bd;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/tapjoy/internal/bd;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 159
    .local p0, "this":Lcom/tapjoy/internal/bd;, "Lcom/tapjoy/internal/bd<TE;>;"
    iget-object v0, p0, Lcom/tapjoy/internal/bd;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/tapjoy/internal/bd;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    return v0
.end method
