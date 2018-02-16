.class public final Lcom/tapjoy/internal/am;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:F

.field protected c:I

.field protected d:F

.field protected e:I

.field protected f:F

.field protected g:I

.field protected h:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v1, p0, Lcom/tapjoy/internal/am;->a:I

    .line 11
    iput v0, p0, Lcom/tapjoy/internal/am;->b:F

    .line 12
    iput v1, p0, Lcom/tapjoy/internal/am;->c:I

    .line 13
    iput v0, p0, Lcom/tapjoy/internal/am;->d:F

    .line 14
    iput v1, p0, Lcom/tapjoy/internal/am;->e:I

    .line 15
    iput v0, p0, Lcom/tapjoy/internal/am;->f:F

    .line 16
    iput v1, p0, Lcom/tapjoy/internal/am;->g:I

    .line 17
    iput v0, p0, Lcom/tapjoy/internal/am;->h:F

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    .line 23
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/tapjoy/internal/am;->a:I

    iget v2, p0, Lcom/tapjoy/internal/am;->b:F

    iget v3, p0, Lcom/tapjoy/internal/am;->c:I

    iget v4, p0, Lcom/tapjoy/internal/am;->d:F

    iget v5, p0, Lcom/tapjoy/internal/am;->e:I

    iget v6, p0, Lcom/tapjoy/internal/am;->f:F

    iget v7, p0, Lcom/tapjoy/internal/am;->g:I

    iget v8, p0, Lcom/tapjoy/internal/am;->h:F

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    return-object v0
.end method

.method public final a(F)Lcom/tapjoy/internal/am;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/am;->a:I

    .line 41
    iput p1, p0, Lcom/tapjoy/internal/am;->b:F

    .line 42
    return-object p0
.end method

.method public final b(F)Lcom/tapjoy/internal/am;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/am;->e:I

    .line 89
    iput p1, p0, Lcom/tapjoy/internal/am;->f:F

    .line 90
    return-object p0
.end method
