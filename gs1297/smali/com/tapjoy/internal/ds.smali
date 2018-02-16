.class public final Lcom/tapjoy/internal/ds;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs a([Ljava/lang/Object;)Ljava/lang/IllegalStateException;
    .locals 6

    .prologue
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    const-string v1, ""

    .line 107
    const/4 v0, 0x0

    array-length v3, p0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v3, :cond_2

    .line 108
    aget-object v4, p0, v1

    if-nez v4, :cond_1

    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 110
    const-string v0, "s"

    .line 112
    :cond_0
    const-string v4, "\n  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v4, v1, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 116
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Required field"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " not set:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a()Ljava/util/List;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/tapjoy/internal/dt;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/dt;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3

    .prologue
    .line 52
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " == null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    instance-of v0, p1, Lcom/tapjoy/internal/dt;

    if-eqz v0, :cond_1

    .line 54
    check-cast p1, Lcom/tapjoy/internal/dt;

    iget-object p1, p1, Lcom/tapjoy/internal/dt;->a:Ljava/util/List;

    .line 56
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_2

    instance-of v0, p1, Lcom/tapjoy/internal/dr;

    if-eqz v0, :cond_3

    .line 64
    :cond_2
    :goto_0
    return-object p1

    .line 59
    :cond_3
    new-instance v0, Lcom/tapjoy/internal/dr;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/dr;-><init>(Ljava/util/List;)V

    .line 61
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dr;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".contains(null)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object p1, v0

    .line 64
    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 96
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
