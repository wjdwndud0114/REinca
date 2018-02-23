.class Lcom/igaworks/gson/internal/LinkedHashTreeMap$AvlIterator;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AvlIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private stackTop:Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 622
    .local p0, "this":Lcom/igaworks/gson/internal/LinkedHashTreeMap$AvlIterator;, "Lcom/igaworks/gson/internal/LinkedHashTreeMap$AvlIterator<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next()Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/igaworks/gson/internal/LinkedHashTreeMap$AvlIterator;, "Lcom/igaworks/gson/internal/LinkedHashTreeMap$AvlIterator<TK;TV;>;"
    const/4 v3, 0x0

    .line 636
    iget-object v2, p0, Lcom/igaworks/gson/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;

    .line 637
    .local v2, "stackTop":Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;, "Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-nez v2, :cond_0

    move-object v1, v3

    .line 648
    :goto_0
    return-object v1

    .line 640
    :cond_0
    move-object v1, v2

    .line 641
    .local v1, "result":Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;, "Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v2, v1, Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;

    .line 642
    iput-object v3, v1, Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;

    .line 643
    iget-object v0, v1, Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;

    .local v0, "n":Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;, "Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_1

    .line 644
    iput-object v2, v0, Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;

    .line 645
    move-object v2, v0

    .line 643
    iget-object v0, v0, Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_1

    .line 647
    :cond_1
    iput-object v2, p0, Lcom/igaworks/gson/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_0
.end method

.method reset(Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 627
    .local p0, "this":Lcom/igaworks/gson/internal/LinkedHashTreeMap$AvlIterator;, "Lcom/igaworks/gson/internal/LinkedHashTreeMap$AvlIterator<TK;TV;>;"
    .local p1, "root":Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;, "Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    .line 628
    .local v1, "stackTop":Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;, "Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    move-object v0, p1

    .local v0, "n":Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;, "Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 629
    iput-object v1, v0, Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;

    .line 630
    move-object v1, v0

    .line 628
    iget-object v0, v0, Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_0

    .line 632
    :cond_0
    iput-object v1, p0, Lcom/igaworks/gson/internal/LinkedHashTreeMap$AvlIterator;->stackTop:Lcom/igaworks/gson/internal/LinkedHashTreeMap$Node;

    .line 633
    return-void
.end method
