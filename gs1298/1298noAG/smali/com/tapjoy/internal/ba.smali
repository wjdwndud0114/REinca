.class public final Lcom/tapjoy/internal/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bc;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    .line 14
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/tapjoy/internal/ba;, "Lcom/tapjoy/internal/ba<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/tapjoy/internal/ba;, "Lcom/tapjoy/internal/ba<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/tapjoy/internal/bb;->a(Ljava/util/List;I)V

    .line 150
    return-void
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 37
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 41
    .local p0, "this":Lcom/tapjoy/internal/ba;, "Lcom/tapjoy/internal/ba<TE;>;"
    iget-object v0, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/tapjoy/internal/ba;, "Lcom/tapjoy/internal/ba<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final element()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/tapjoy/internal/ba;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    .line 132
    return-object v0

    .line 134
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 51
    .local p0, "this":Lcom/tapjoy/internal/ba;, "Lcom/tapjoy/internal/ba<TE;>;"
    iget-object v0, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 110
    .local p0, "this":Lcom/tapjoy/internal/ba;, "Lcom/tapjoy/internal/ba<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final remove()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/tapjoy/internal/ba;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    return-object v0

    .line 119
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 76
    .local p0, "this":Lcom/tapjoy/internal/ba;, "Lcom/tapjoy/internal/ba<TE;>;"
    iget-object v0, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lcom/tapjoy/internal/ba;, "Lcom/tapjoy/internal/ba<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lcom/tapjoy/internal/ba;, "Lcom/tapjoy/internal/ba<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lcom/tapjoy/internal/ba;, "Lcom/tapjoy/internal/ba<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/tapjoy/internal/ba;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
