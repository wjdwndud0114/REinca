.class public final Lcom/tapjoy/internal/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/List;I)V
    .locals 2

    .prologue
    .line 39
    if-gez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 42
    :cond_0
    if-lez p1, :cond_2

    .line 43
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 44
    if-le p1, v0, :cond_1

    .line 45
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 47
    :cond_1
    if-ne p1, v0, :cond_3

    .line 48
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 55
    :cond_2
    return-void

    .line 50
    :cond_3
    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_2

    .line 51
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move p1, v0

    goto :goto_0
.end method
