.class public Lorg/json/simple/ItemList;
.super Ljava/lang/Object;
.source "ItemList.java"


# instance fields
.field items:Ljava/util/List;

.field private sp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ","

    iput-object v0, p0, Lorg/json/simple/ItemList;->sp:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ","

    iput-object v0, p0, Lorg/json/simple/ItemList;->sp:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    .line 26
    iget-object v0, p0, Lorg/json/simple/ItemList;->sp:Ljava/lang/String;

    iget-object v1, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/simple/ItemList;->split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "sp"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ","

    iput-object v0, p0, Lorg/json/simple/ItemList;->sp:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lorg/json/simple/ItemList;->sp:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0}, Lorg/json/simple/ItemList;->split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "sp"    # Ljava/lang/String;
    .param p3, "isMultiToken"    # Z

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ","

    iput-object v0, p0, Lorg/json/simple/ItemList;->sp:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    .line 35
    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/json/simple/ItemList;->split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "item"    # Ljava/lang/String;

    .prologue
    .line 81
    if-nez p2, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public add(Ljava/lang/String;)V
    .locals 2
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addAll(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lorg/json/simple/ItemList;->sp:Ljava/lang/String;

    iget-object v1, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/simple/ItemList;->split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 98
    return-void
.end method

.method public addAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "sp"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0}, Lorg/json/simple/ItemList;->split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 102
    return-void
.end method

.method public addAll(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "sp"    # Ljava/lang/String;
    .param p3, "isMultiToken"    # Z

    .prologue
    .line 105
    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/json/simple/ItemList;->split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    .line 106
    return-void
.end method

.method public addAll(Lorg/json/simple/ItemList;)V
    .locals 2
    .param p1, "list"    # Lorg/json/simple/ItemList;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    iget-object v1, p1, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    return-void
.end method

.method public get(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 144
    const-string v0, ","

    iput-object v0, p0, Lorg/json/simple/ItemList;->sp:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 146
    return-void
.end method

.method public setSP(Ljava/lang/String;)V
    .locals 0
    .param p1, "sp"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/json/simple/ItemList;->sp:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "sp"    # Ljava/lang/String;
    .param p3, "append"    # Ljava/util/List;

    .prologue
    const/4 v3, -0x1

    .line 61
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const/4 v0, 0x0

    .line 64
    .local v0, "pos":I
    const/4 v1, 0x0

    .line 66
    .local v1, "prevPos":I
    :cond_2
    move v1, v0

    .line 67
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 68
    if-ne v0, v3, :cond_3

    .line 73
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 72
    if-ne v0, v3, :cond_2

    goto :goto_1
.end method

.method public split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "sp"    # Ljava/lang/String;
    .param p3, "append"    # Ljava/util/List;
    .param p4, "isMultiToken"    # Z

    .prologue
    .line 47
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    if-eqz p4, :cond_2

    .line 50
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v0, "tokens":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 56
    .end local v0    # "tokens":Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/json/simple/ItemList;->split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/json/simple/ItemList;->sp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/simple/ItemList;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "sp"    # Ljava/lang/String;

    .prologue
    .line 125
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 128
    if-nez v0, :cond_0

    .line 129
    iget-object v2, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 127
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    iget-object v2, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
