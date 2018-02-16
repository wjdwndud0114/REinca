.class public final Lcom/tapjoy/internal/az;
.super Lcom/tapjoy/internal/ay;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bc;
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field private final a:Lcom/tapjoy/internal/bc;

.field private final b:Ljava/util/LinkedList;

.field private final c:Ljava/util/LinkedList;

.field private d:I

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/tapjoy/internal/bc;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/tapjoy/internal/ay;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/tapjoy/internal/az;->a:Lcom/tapjoy/internal/bc;

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/az;->b:Ljava/util/LinkedList;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/az;->c:Ljava/util/LinkedList;

    .line 25
    invoke-interface {p1}, Lcom/tapjoy/internal/bc;->size()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/az;->d:I

    .line 26
    iget v0, p0, Lcom/tapjoy/internal/az;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tapjoy/internal/az;->e:Z

    .line 27
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/tapjoy/internal/bc;)Lcom/tapjoy/internal/az;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/tapjoy/internal/az;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/az;-><init>(Lcom/tapjoy/internal/bc;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 111
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/tapjoy/internal/az;->d:I

    if-lt p1, v0, :cond_1

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/az;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 115
    if-ge p1, v0, :cond_3

    .line 116
    iget-object v0, p0, Lcom/tapjoy/internal/az;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 130
    :cond_2
    :goto_0
    return-object v0

    .line 117
    :cond_3
    iget-boolean v1, p0, Lcom/tapjoy/internal/az;->e:Z

    if-eqz v1, :cond_4

    .line 118
    iget-object v1, p0, Lcom/tapjoy/internal/az;->c:Ljava/util/LinkedList;

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_4
    iget-object v1, p0, Lcom/tapjoy/internal/az;->a:Lcom/tapjoy/internal/bc;

    invoke-interface {v1}, Lcom/tapjoy/internal/bc;->size()I

    move-result v1

    if-ge p1, v1, :cond_6

    .line 120
    const/4 v1, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    .line 121
    :goto_1
    if-gt v1, p1, :cond_5

    .line 122
    iget-object v0, p0, Lcom/tapjoy/internal/az;->a:Lcom/tapjoy/internal/bc;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/bc;->a(I)Ljava/lang/Object;

    move-result-object v2

    .line 123
    iget-object v0, p0, Lcom/tapjoy/internal/az;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1

    .line 125
    :cond_5
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/tapjoy/internal/az;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/tapjoy/internal/az;->d:I

    if-ne v1, v2, :cond_2

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tapjoy/internal/az;->e:Z

    goto :goto_0

    .line 130
    :cond_6
    iget-object v0, p0, Lcom/tapjoy/internal/az;->c:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/tapjoy/internal/az;->a:Lcom/tapjoy/internal/bc;

    invoke-interface {v1}, Lcom/tapjoy/internal/bc;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 136
    if-lez p1, :cond_0

    iget v0, p0, Lcom/tapjoy/internal/az;->d:I

    if-le p1, v0, :cond_1

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/az;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 141
    if-gt p1, v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/tapjoy/internal/az;->b:Ljava/util/LinkedList;

    invoke-static {v0, p1}, Lcom/tapjoy/internal/bb;->a(Ljava/util/List;I)V

    .line 143
    iget-object v0, p0, Lcom/tapjoy/internal/az;->a:Lcom/tapjoy/internal/bc;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bc;->b(I)V

    .line 157
    :cond_2
    :goto_0
    iget v0, p0, Lcom/tapjoy/internal/az;->d:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/tapjoy/internal/az;->d:I

    .line 158
    return-void

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/az;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 146
    iget-object v0, p0, Lcom/tapjoy/internal/az;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lcom/tapjoy/internal/az;->d:I

    sub-int/2addr v0, v1

    .line 147
    if-gez v0, :cond_4

    .line 148
    iget-object v0, p0, Lcom/tapjoy/internal/az;->a:Lcom/tapjoy/internal/bc;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bc;->b(I)V

    goto :goto_0

    .line 150
    :cond_4
    iget-object v1, p0, Lcom/tapjoy/internal/az;->a:Lcom/tapjoy/internal/bc;

    invoke-interface {v1}, Lcom/tapjoy/internal/bc;->clear()V

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tapjoy/internal/az;->e:Z

    .line 152
    if-lez v0, :cond_2

    .line 153
    iget-object v1, p0, Lcom/tapjoy/internal/az;->c:Ljava/util/LinkedList;

    invoke-static {v1, v0}, Lcom/tapjoy/internal/bb;->a(Ljava/util/List;I)V

    goto :goto_0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/az;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget-object v0, p0, Lcom/tapjoy/internal/az;->a:Lcom/tapjoy/internal/bc;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/tapjoy/internal/az;->a:Lcom/tapjoy/internal/bc;

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 44
    :cond_0
    return-void

    .line 40
    :catchall_0
    move-exception v1

    iget-object v0, p0, Lcom/tapjoy/internal/az;->a:Lcom/tapjoy/internal/bc;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/tapjoy/internal/az;->a:Lcom/tapjoy/internal/bc;

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :cond_1
    throw v1
.end method

.method protected final finalize()V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/tapjoy/internal/az;->close()V

    .line 32
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 33
    return-void
.end method

.method public final flush()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tapjoy/internal/az;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/tapjoy/internal/az;->a:Lcom/tapjoy/internal/bc;

    iget-object v1, p0, Lcom/tapjoy/internal/az;->c:Ljava/util/LinkedList;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/bc;->addAll(Ljava/util/Collection;)Z

    .line 50
    iget-boolean v0, p0, Lcom/tapjoy/internal/az;->e:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/tapjoy/internal/az;->b:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/tapjoy/internal/az;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/az;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 55
    :cond_1
    return-void
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lcom/tapjoy/internal/az;, "Lcom/tapjoy/internal/az<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/tapjoy/internal/az;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 65
    iget v0, p0, Lcom/tapjoy/internal/az;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/az;->d:I

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 92
    iget v0, p0, Lcom/tapjoy/internal/az;->d:I

    if-gtz v0, :cond_1

    .line 93
    const/4 v0, 0x0

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/az;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/tapjoy/internal/az;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_2
    iget-boolean v0, p0, Lcom/tapjoy/internal/az;->e:Z

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/tapjoy/internal/az;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/az;->a:Lcom/tapjoy/internal/bc;

    invoke-interface {v0}, Lcom/tapjoy/internal/bc;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/tapjoy/internal/az;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 102
    iget v1, p0, Lcom/tapjoy/internal/az;->d:I

    iget-object v2, p0, Lcom/tapjoy/internal/az;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/tapjoy/internal/az;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tapjoy/internal/az;->e:Z

    goto :goto_0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 71
    iget v0, p0, Lcom/tapjoy/internal/az;->d:I

    if-gtz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/az;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/tapjoy/internal/az;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/tapjoy/internal/az;->a:Lcom/tapjoy/internal/bc;

    invoke-interface {v1, v3}, Lcom/tapjoy/internal/bc;->b(I)V

    .line 86
    :cond_1
    :goto_1
    iget v1, p0, Lcom/tapjoy/internal/az;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/tapjoy/internal/az;->d:I

    goto :goto_0

    .line 78
    :cond_2
    iget-boolean v0, p0, Lcom/tapjoy/internal/az;->e:Z

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/tapjoy/internal/az;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/az;->a:Lcom/tapjoy/internal/bc;

    invoke-interface {v0}, Lcom/tapjoy/internal/bc;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 82
    iget v1, p0, Lcom/tapjoy/internal/az;->d:I

    iget-object v2, p0, Lcom/tapjoy/internal/az;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_1

    .line 83
    iput-boolean v3, p0, Lcom/tapjoy/internal/az;->e:Z

    goto :goto_1
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/tapjoy/internal/az;->d:I

    return v0
.end method
