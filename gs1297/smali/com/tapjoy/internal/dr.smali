.class final Lcom/tapjoy/internal/dr;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tapjoy/internal/dr;->a:Ljava/util/ArrayList;

    .line 31
    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 38
    .local p0, "this":Lcom/tapjoy/internal/dr;, "Lcom/tapjoy/internal/dr<TT;>;"
    iget-object v0, p0, Lcom/tapjoy/internal/dr;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tapjoy/internal/dr;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tapjoy/internal/dr;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
