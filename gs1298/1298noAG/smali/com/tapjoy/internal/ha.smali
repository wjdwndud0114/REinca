.class public final Lcom/tapjoy/internal/ha;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/tapjoy/internal/bn;


# instance fields
.field public a:Lcom/tapjoy/internal/af;

.field public b:Landroid/graphics/PointF;

.field public c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/tapjoy/internal/ha$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/ha$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ha;->d:Lcom/tapjoy/internal/bn;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/bs;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/tapjoy/internal/af;->a:Lcom/tapjoy/internal/af;

    iput-object v0, p0, Lcom/tapjoy/internal/ha;->a:Lcom/tapjoy/internal/af;

    .line 1074
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/tapjoy/internal/ha;->c:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->h()V

    .line 21
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 22
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->l()Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string v1, "buttons"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1089
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->k()Lcom/tapjoy/internal/bx;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/bx;->a:Lcom/tapjoy/internal/bx;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 24
    :goto_1
    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/tapjoy/internal/ha;->c:Ljava/util/ArrayList;

    sget-object v1, Lcom/tapjoy/internal/gz;->n:Lcom/tapjoy/internal/bn;

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/bs;->a(Ljava/util/List;Lcom/tapjoy/internal/bn;)V

    goto :goto_0

    .line 1089
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 28
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->s()V

    goto :goto_0

    .line 31
    :cond_3
    const-string v1, "window_aspect_ratio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 32
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 33
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 34
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->h()V

    .line 35
    :goto_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 36
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->l()Ljava/lang/String;

    move-result-object v1

    .line 37
    const-string v2, "width"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 38
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->p()D

    move-result-wide v2

    .line 39
    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_2

    .line 41
    :cond_4
    const-string v2, "height"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 42
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->p()D

    move-result-wide v2

    .line 43
    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_2

    .line 46
    :cond_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->s()V

    goto :goto_2

    .line 49
    :cond_6
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->i()V

    .line 51
    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    .line 52
    iput-object v0, p0, Lcom/tapjoy/internal/ha;->b:Landroid/graphics/PointF;

    goto :goto_0

    .line 56
    :cond_7
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->s()V

    goto/16 :goto_0

    .line 59
    :cond_8
    const-string v1, "orientation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 60
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 62
    sget-object v0, Lcom/tapjoy/internal/af;->c:Lcom/tapjoy/internal/af;

    iput-object v0, p0, Lcom/tapjoy/internal/ha;->a:Lcom/tapjoy/internal/af;

    goto/16 :goto_0

    .line 64
    :cond_9
    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/tapjoy/internal/af;->b:Lcom/tapjoy/internal/af;

    iput-object v0, p0, Lcom/tapjoy/internal/ha;->a:Lcom/tapjoy/internal/af;

    goto/16 :goto_0

    .line 69
    :cond_a
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->s()V

    goto/16 :goto_0

    .line 73
    :cond_b
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->i()V

    .line 74
    return-void
.end method
