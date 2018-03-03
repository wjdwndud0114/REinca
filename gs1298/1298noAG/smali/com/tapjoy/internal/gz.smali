.class public final Lcom/tapjoy/internal/gz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final n:Lcom/tapjoy/internal/bn;


# instance fields
.field public a:Lcom/tapjoy/internal/hb;

.field public b:Lcom/tapjoy/internal/hb;

.field public c:Lcom/tapjoy/internal/hb;

.field public d:Lcom/tapjoy/internal/hb;

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Lcom/tapjoy/internal/gx;

.field public m:Lcom/tapjoy/internal/gx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/tapjoy/internal/gz$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gz$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gz;->n:Lcom/tapjoy/internal/bn;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/bs;)V
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/16 v2, 0x9

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v2, p0, Lcom/tapjoy/internal/gz;->e:I

    .line 19
    iput v3, p0, Lcom/tapjoy/internal/gz;->f:I

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/gz;->j:Z

    .line 31
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->h()V

    .line 32
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->j()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 33
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->l()Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string v1, "x"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/hb;->a(Ljava/lang/String;)Lcom/tapjoy/internal/hb;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gz;->a:Lcom/tapjoy/internal/hb;

    goto :goto_0

    .line 37
    :cond_0
    const-string v1, "y"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/hb;->a(Ljava/lang/String;)Lcom/tapjoy/internal/hb;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gz;->b:Lcom/tapjoy/internal/hb;

    goto :goto_0

    .line 40
    :cond_1
    const-string v1, "width"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/hb;->a(Ljava/lang/String;)Lcom/tapjoy/internal/hb;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gz;->c:Lcom/tapjoy/internal/hb;

    goto :goto_0

    .line 43
    :cond_2
    const-string v1, "height"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/hb;->a(Ljava/lang/String;)Lcom/tapjoy/internal/hb;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gz;->d:Lcom/tapjoy/internal/hb;

    goto :goto_0

    .line 46
    :cond_3
    const-string v1, "url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 47
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gz;->g:Ljava/lang/String;

    goto :goto_0

    .line 49
    :cond_4
    const-string v1, "redirect_url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 50
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gz;->h:Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_5
    const-string v1, "ad_content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 53
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gz;->i:Ljava/lang/String;

    goto/16 :goto_0

    .line 55
    :cond_6
    const-string v1, "dismiss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 56
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->n()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tapjoy/internal/gz;->j:Z

    goto/16 :goto_0

    .line 58
    :cond_7
    const-string v1, "value"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 59
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gz;->k:Ljava/lang/String;

    goto/16 :goto_0

    .line 61
    :cond_8
    const-string v1, "image"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 62
    sget-object v0, Lcom/tapjoy/internal/gx;->e:Lcom/tapjoy/internal/bn;

    .line 1213
    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bn;->a(Lcom/tapjoy/internal/bs;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    check-cast v0, Lcom/tapjoy/internal/gx;

    iput-object v0, p0, Lcom/tapjoy/internal/gz;->l:Lcom/tapjoy/internal/gx;

    goto/16 :goto_0

    .line 64
    :cond_9
    const-string v1, "image_clicked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 65
    sget-object v0, Lcom/tapjoy/internal/gx;->e:Lcom/tapjoy/internal/bn;

    .line 2213
    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bn;->a(Lcom/tapjoy/internal/bs;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    check-cast v0, Lcom/tapjoy/internal/gx;

    iput-object v0, p0, Lcom/tapjoy/internal/gz;->m:Lcom/tapjoy/internal/gx;

    goto/16 :goto_0

    .line 67
    :cond_a
    const-string v1, "align"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 68
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string v1, "left"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 70
    iput v2, p0, Lcom/tapjoy/internal/gz;->e:I

    goto/16 :goto_0

    .line 72
    :cond_b
    const-string v1, "right"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 73
    const/16 v0, 0xb

    iput v0, p0, Lcom/tapjoy/internal/gz;->e:I

    goto/16 :goto_0

    .line 75
    :cond_c
    const-string v1, "center"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 76
    const/16 v0, 0xe

    iput v0, p0, Lcom/tapjoy/internal/gz;->e:I

    goto/16 :goto_0

    .line 79
    :cond_d
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->s()V

    goto/16 :goto_0

    .line 82
    :cond_e
    const-string v1, "valign"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 83
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v1, "top"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 85
    iput v3, p0, Lcom/tapjoy/internal/gz;->f:I

    goto/16 :goto_0

    .line 87
    :cond_f
    const-string v1, "middle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 88
    const/16 v0, 0xf

    iput v0, p0, Lcom/tapjoy/internal/gz;->f:I

    goto/16 :goto_0

    .line 90
    :cond_10
    const-string v1, "bottom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 91
    const/16 v0, 0xc

    iput v0, p0, Lcom/tapjoy/internal/gz;->f:I

    goto/16 :goto_0

    .line 94
    :cond_11
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->s()V

    goto/16 :goto_0

    .line 98
    :cond_12
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->s()V

    goto/16 :goto_0

    .line 101
    :cond_13
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->i()V

    .line 102
    return-void
.end method
