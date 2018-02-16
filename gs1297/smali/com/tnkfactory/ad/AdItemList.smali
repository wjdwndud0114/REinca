.class public Lcom/tnkfactory/ad/AdItemList;
.super Lcom/tnkfactory/ad/fb;

# interfaces
.implements Ljava/util/List;


# instance fields
.field private a:Ljava/util/Map;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tnkfactory/ad/fb;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/tnkfactory/ad/AdItem;)Z
    .locals 10

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p2, Lcom/tnkfactory/ad/AdItem;->A:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/in;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/tnkfactory/ad/AdItem;->A:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    move v0, v3

    move v2, v3

    :goto_0
    if-ge v4, v6, :cond_6

    aget-object v7, v5, v4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1

    move v1, v3

    :cond_0
    :goto_1
    return v1

    :cond_1
    const-string v8, "!"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/tnkfactory/ad/in;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v4, v3

    :goto_2
    if-nez v4, :cond_4

    move v1, v3

    goto :goto_1

    :cond_2
    if-nez v0, :cond_5

    invoke-static {p1, v7}, Lcom/tnkfactory/ad/in;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    move v2, v1

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    move v1, v3

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_3

    :cond_6
    move v4, v1

    goto :goto_2
.end method

.method public static getAdItemList(Landroid/content/Context;II)Lcom/tnkfactory/ad/AdItemList;
    .locals 1

    invoke-static {}, Lcom/tnkfactory/ad/w;->a()Lcom/tnkfactory/ad/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tnkfactory/ad/w;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {p0, p2}, Lcom/tnkfactory/ad/AdItemList;->a(Landroid/content/Context;I)Lcom/tnkfactory/ad/AdItemList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/tnkfactory/ad/AdItemList;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/AdItemList;

    move-result-object v0

    goto :goto_0
.end method

.method public static getImageAdItemList(Landroid/content/Context;ILjava/lang/String;)Lcom/tnkfactory/ad/AdItemList;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/tnkfactory/ad/AdItemList;->a(Landroid/content/Context;ILjava/lang/String;)Lcom/tnkfactory/ad/AdItemList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILcom/tnkfactory/ad/AdItem;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {p0, p1, p2}, Lcom/tnkfactory/ad/AdItemList;->add(ILcom/tnkfactory/ad/AdItem;)V

    return-void
.end method

.method public add(Lcom/tnkfactory/ad/AdItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/AdItemList;->add(Lcom/tnkfactory/ad/AdItem;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addProperties(Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public findAdItem(J)Lcom/tnkfactory/ad/AdItem;
    .locals 5

    invoke-virtual {p0}, Lcom/tnkfactory/ad/AdItemList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdItem;->getAppId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/tnkfactory/ad/AdItem;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/AdItem;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/AdItemList;->get(I)Lcom/tnkfactory/ad/AdItem;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->a:Ljava/util/Map;

    const-string v1, "hdr_msg"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/AdItemList;->refreshOld(Landroid/content/Context;)V

    return-void
.end method

.method public refreshOld(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/tnkfactory/ad/ia;->m(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdItem;->getAppId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/tnkfactory/ad/AdItemList;->a(Landroid/content/Context;Lcom/tnkfactory/ad/AdItem;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/AdItem;->isInstalled(Landroid/content/Context;)Z

    move-result v6

    iget v7, v0, Lcom/tnkfactory/ad/AdItem;->j:I

    if-ne v7, v9, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1, v4, v5}, Lcom/tnkfactory/ad/ia;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tnkfactory/ad/AdItem;->getActionType()I

    move-result v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v8}, Lcom/tnkfactory/ad/ia;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v8, :cond_4

    if-nez v7, :cond_1

    if-nez v6, :cond_0

    :cond_1
    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    iput-boolean v9, v0, Lcom/tnkfactory/ad/AdItem;->l:Z

    :cond_2
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/tnkfactory/ad/AdItem;->l:Z

    goto :goto_1

    :cond_4
    if-eq v8, v9, :cond_5

    const/4 v4, 0x2

    if-ne v8, v4, :cond_2

    :cond_5
    if-nez v7, :cond_2

    const-string v4, "Y"

    iget-object v5, v0, Lcom/tnkfactory/ad/AdItem;->u:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_6
    const-string v4, "Y"

    iget-object v5, v0, Lcom/tnkfactory/ad/AdItem;->u:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_7
    iput-object v1, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    return-void
.end method

.method public remove(I)Lcom/tnkfactory/ad/AdItem;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/AdItem;

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/AdItemList;->remove(I)Lcom/tnkfactory/ad/AdItem;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public set(ILcom/tnkfactory/ad/AdItem;)Lcom/tnkfactory/ad/AdItem;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/AdItem;

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lcom/tnkfactory/ad/AdItem;

    invoke-virtual {p0, p1, p2}, Lcom/tnkfactory/ad/AdItemList;->set(ILcom/tnkfactory/ad/AdItem;)Lcom/tnkfactory/ad/AdItem;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderMessage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->a:Ljava/util/Map;

    const-string v1, "hdr_msg"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdItemList;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
