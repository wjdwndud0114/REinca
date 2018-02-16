.class public final Lcom/tapjoy/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 27
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 28
    check-cast v0, Landroid/app/Activity;

    .line 32
    :goto_1
    return-object v0

    .line 30
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
