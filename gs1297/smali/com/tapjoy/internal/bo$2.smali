.class final Lcom/tapjoy/internal/bo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/bn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/tapjoy/internal/bs;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 32
    .line 1035
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1036
    sget-object v1, Lcom/tapjoy/internal/bo$3;->a:[I

    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->k()Lcom/tapjoy/internal/bx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/internal/bx;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1067
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->k()Lcom/tapjoy/internal/bx;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1038
    :pswitch_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->f()V

    .line 1039
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1040
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1041
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1042
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1043
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1044
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->s()V

    goto :goto_0

    .line 1046
    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->g()V

    .line 32
    :goto_1
    return-object v0

    .line 1049
    :pswitch_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->h()V

    .line 1050
    :goto_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->j()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1051
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->l()Ljava/lang/String;

    move-result-object v1

    .line 1052
    const-string v2, "left"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1053
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 1054
    :cond_1
    const-string v2, "top"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1055
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 1056
    :cond_2
    const-string v2, "right"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1057
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 1058
    :cond_3
    const-string v2, "bottom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1059
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->r()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 1061
    :cond_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->s()V

    goto :goto_2

    .line 1064
    :cond_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->i()V

    goto :goto_1

    .line 1036
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
