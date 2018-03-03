.class public final Lcom/tapjoy/internal/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ah$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/ViewGroup;)Ljava/lang/Iterable;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Lcom/tapjoy/internal/ah$a;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/ah$a;-><init>(Landroid/view/ViewGroup;)V

    .line 1175
    new-instance v1, Lcom/tapjoy/internal/ah$1;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/ah$1;-><init>(Ljava/util/Iterator;)V

    .line 141
    return-object v1
.end method
