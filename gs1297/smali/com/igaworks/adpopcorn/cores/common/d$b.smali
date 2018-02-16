.class Lcom/igaworks/adpopcorn/cores/common/d$b;
.super Landroid/graphics/drawable/ColorDrawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adpopcorn/cores/common/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/igaworks/adpopcorn/cores/common/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/d$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()Lcom/igaworks/adpopcorn/cores/common/e;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/d$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/adpopcorn/cores/common/e;

    return-object v0
.end method
