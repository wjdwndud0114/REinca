.class final Lcom/tapjoy/internal/ah$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/ah$a;->c:I

    .line 154
    iput-object p1, p0, Lcom/tapjoy/internal/ah$a;->a:Landroid/view/ViewGroup;

    .line 155
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/ah$a;->b:I

    .line 156
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/tapjoy/internal/ah$a;->c:I

    iget v1, p0, Lcom/tapjoy/internal/ah$a;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 148
    .line 1165
    iget-object v0, p0, Lcom/tapjoy/internal/ah$a;->a:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/tapjoy/internal/ah$a;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tapjoy/internal/ah$a;->c:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 148
    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/tapjoy/internal/ah$a;->a:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/tapjoy/internal/ah$a;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 171
    return-void
.end method
