.class public Lcom/igaworks/util/bolts_task/AggregateException;
.super Ljava/lang/Exception;
.source "AggregateException.java"


# static fields
.field private static final DEFAULT_MESSAGE:Ljava/lang/String; = "There were multiple errors."

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private innerThrowables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "innerThrowables":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Throwable;>;"
    if-eqz p2, :cond_0

    .line 55
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 54
    :goto_0
    invoke-direct {p0, p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/AggregateException;->innerThrowables:Ljava/util/List;

    .line 57
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "innerThrowables"    # [Ljava/lang/Throwable;

    .prologue
    .line 40
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/igaworks/util/bolts_task/AggregateException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "innerThrowables":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Throwable;>;"
    const-string v0, "There were multiple errors."

    invoke-direct {p0, v0, p1}, Lcom/igaworks/util/bolts_task/AggregateException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 68
    return-void
.end method


# virtual methods
.method public getCauses()[Ljava/lang/Throwable;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/AggregateException;->innerThrowables:Ljava/util/List;

    iget-object v1, p0, Lcom/igaworks/util/bolts_task/AggregateException;->innerThrowables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Throwable;

    return-object v0
.end method

.method public getErrors()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/AggregateException;->innerThrowables:Ljava/util/List;

    if-nez v2, :cond_1

    .line 125
    :cond_0
    return-object v1

    .line 118
    :cond_1
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/AggregateException;->innerThrowables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 119
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v3, v0, Ljava/lang/Exception;

    if-eqz v3, :cond_2

    .line 120
    check-cast v0, Ljava/lang/Exception;

    .end local v0    # "cause":Ljava/lang/Throwable;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_2
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getInnerThrowables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/AggregateException;->innerThrowables:Ljava/util/List;

    return-object v0
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 4
    .param p1, "err"    # Ljava/io/PrintStream;

    .prologue
    .line 80
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 82
    const/4 v0, -0x1

    .line 83
    .local v0, "currentIndex":I
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/AggregateException;->innerThrowables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 84
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    .line 85
    const-string v3, "  Inner throwable #"

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    .line 86
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    .line 87
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    .line 88
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 89
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    goto :goto_0

    .line 91
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "err"    # Ljava/io/PrintWriter;

    .prologue
    .line 95
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 97
    const/4 v0, -0x1

    .line 98
    .local v0, "currentIndex":I
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/AggregateException;->innerThrowables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 99
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 100
    const-string v3, "  Inner throwable #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 101
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 102
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 103
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 104
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    .line 106
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method
