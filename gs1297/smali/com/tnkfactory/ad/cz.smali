.class Lcom/tnkfactory/ad/cz;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Landroid/util/SparseArray;

.field protected final b:Landroid/util/SparseArray;

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tnkfactory/ad/cz;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/cz;->d:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/cz;->a:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/cz;->b:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/tnkfactory/ad/cy;
    .locals 3

    iget-object v1, p0, Lcom/tnkfactory/ad/cz;->a:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/cz;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/cy;

    iget-object v2, p0, Lcom/tnkfactory/ad/cz;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;)Lcom/tnkfactory/ad/cy;
    .locals 4

    iget-object v2, p0, Lcom/tnkfactory/ad/cz;->a:Landroid/util/SparseArray;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/cz;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/cz;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/cy;

    if-eqz v0, :cond_2

    iget-boolean v3, v0, Lcom/tnkfactory/ad/cy;->d:Z

    if-nez v3, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/cy;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tnkfactory/ad/cy;->d:Z

    if-eqz p2, :cond_1

    iput-object p2, v0, Lcom/tnkfactory/ad/cy;->c:Lcom/tnkfactory/ad/TnkAdListener;

    :cond_1
    monitor-exit v2

    :goto_1
    return-object v0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    monitor-exit v2

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tnkfactory/ad/cz;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/tnkfactory/ad/cz;->a:Landroid/util/SparseArray;

    monitor-enter v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/cz;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/cz;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/cy;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/tnkfactory/ad/cy;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/tnkfactory/ad/cy;->b()Ljava/lang/String;

    move-result-object v0

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/tnkfactory/ad/cy;)V
    .locals 3

    iget-object v1, p0, Lcom/tnkfactory/ad/cz;->a:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/cz;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/tnkfactory/ad/cy;->a()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/tnkfactory/ad/cy;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/cz;->d:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tnkfactory/ad/cz;->c:Z

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tnkfactory/ad/cz;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/tnkfactory/ad/cz;->b:Landroid/util/SparseArray;

    monitor-enter v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/cz;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/tnkfactory/ad/cz;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/cy;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/tnkfactory/ad/cy;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/tnkfactory/ad/cy;->b()Ljava/lang/String;

    move-result-object v0

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tnkfactory/ad/cz;->c:Z

    iget-object v0, p0, Lcom/tnkfactory/ad/cz;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/tnkfactory/ad/cz;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public b(Lcom/tnkfactory/ad/cy;)V
    .locals 3

    iget-object v1, p0, Lcom/tnkfactory/ad/cz;->b:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/cz;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/tnkfactory/ad/cy;->a()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Ljava/lang/String;)Lcom/tnkfactory/ad/cy;
    .locals 4

    iget-object v2, p0, Lcom/tnkfactory/ad/cz;->b:Landroid/util/SparseArray;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/cz;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/tnkfactory/ad/cz;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/cy;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/cy;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/tnkfactory/ad/cz;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/cy;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v2

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    monitor-exit v2

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Lcom/tnkfactory/ad/cy;)V
    .locals 3

    iget-object v1, p0, Lcom/tnkfactory/ad/cz;->a:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/cz;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/tnkfactory/ad/cy;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Ljava/lang/String;)Lcom/tnkfactory/ad/cy;
    .locals 4

    iget-object v2, p0, Lcom/tnkfactory/ad/cz;->a:Landroid/util/SparseArray;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/cz;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/tnkfactory/ad/cz;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/cy;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/cy;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/tnkfactory/ad/cz;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/cy;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v2

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    monitor-exit v2

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
