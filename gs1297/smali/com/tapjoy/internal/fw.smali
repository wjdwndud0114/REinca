.class public final Lcom/tapjoy/internal/fw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 37
    sget-boolean v0, Lcom/tapjoy/internal/fw;->a:Z

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "Tapjoy"

    .line 1147
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v0, p0, v2}, Lcom/tapjoy/internal/ac;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 79
    sget-boolean v0, Lcom/tapjoy/internal/fw;->a:Z

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "Tapjoy"

    const-string v1, "{}: {} {}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/ac;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 43
    sget-boolean v0, Lcom/tapjoy/internal/fw;->a:Z

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "Tapjoy"

    .line 1157
    const/4 v1, 0x4

    invoke-static {v1, v0, p0, p1}, Lcom/tapjoy/internal/ac;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 85
    if-nez p0, :cond_1

    .line 86
    sget-boolean v0, Lcom/tapjoy/internal/fw;->a:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-static {p1}, Lcom/tapjoy/internal/fw;->b(Ljava/lang/String;)V

    .line 89
    :cond_0
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(ZLjava/lang/String;)Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/tapjoy/internal/fw;->a:Z

    if-eqz v0, :cond_0

    .line 105
    if-nez p0, :cond_0

    .line 106
    invoke-static {p1}, Lcom/tapjoy/internal/fw;->b(Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    return p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 61
    sget-boolean v0, Lcom/tapjoy/internal/fw;->a:Z

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "Tapjoy"

    .line 1237
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v0, p0, v2}, Lcom/tapjoy/internal/ac;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    :cond_0
    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/tapjoy/internal/fw;->a:Z

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "Tapjoy"

    invoke-static {v0, p0, p1}, Lcom/tapjoy/internal/ac;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 149
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Must be called on the main/ui thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/internal/fw;->a(ZLjava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
