.class public final Lcom/tapjoy/internal/gu;
.super Lcom/tapjoy/internal/gq;
.source "SourceFile"


# static fields
.field public static final n:Lcom/tapjoy/internal/bn;


# instance fields
.field public a:Lcom/tapjoy/internal/gx;

.field public b:Lcom/tapjoy/internal/gx;

.field public c:Lcom/tapjoy/internal/gx;

.field public d:Landroid/graphics/Point;

.field public e:Lcom/tapjoy/internal/gx;

.field public f:Lcom/tapjoy/internal/gx;

.field public g:Ljava/lang/String;

.field public h:Lcom/tapjoy/internal/fl;

.field public i:Ljava/util/ArrayList;

.field public j:Ljava/util/ArrayList;

.field public k:Ljava/util/Map;

.field public l:J

.field public m:Lcom/tapjoy/internal/gv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lcom/tapjoy/internal/gu$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gu$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gu;->n:Lcom/tapjoy/internal/bn;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/tapjoy/internal/gq;-><init>()V

    .line 1074
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/tapjoy/internal/gu;->i:Ljava/util/ArrayList;

    .line 2074
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/tapjoy/internal/gu;->j:Ljava/util/ArrayList;

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/tapjoy/internal/bs;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lcom/tapjoy/internal/gq;-><init>()V

    .line 3074
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/tapjoy/internal/gu;->i:Ljava/util/ArrayList;

    .line 4074
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/tapjoy/internal/gu;->j:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->h()V

    move-object v1, v0

    move-object v2, v0

    .line 59
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->j()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 60
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->l()Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v3, "frame"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 62
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->h()V

    .line 63
    :goto_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->l()Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v3, "portrait"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    sget-object v0, Lcom/tapjoy/internal/gx;->e:Lcom/tapjoy/internal/bn;

    .line 4213
    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bn;->a(Lcom/tapjoy/internal/bs;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    check-cast v0, Lcom/tapjoy/internal/gx;

    iput-object v0, p0, Lcom/tapjoy/internal/gu;->a:Lcom/tapjoy/internal/gx;

    goto :goto_1

    .line 67
    :cond_0
    const-string v3, "landscape"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    sget-object v0, Lcom/tapjoy/internal/gx;->e:Lcom/tapjoy/internal/bn;

    .line 5213
    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bn;->a(Lcom/tapjoy/internal/bs;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    check-cast v0, Lcom/tapjoy/internal/gx;

    iput-object v0, p0, Lcom/tapjoy/internal/gu;->b:Lcom/tapjoy/internal/gx;

    goto :goto_1

    .line 69
    :cond_1
    const-string v3, "close_button"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    sget-object v0, Lcom/tapjoy/internal/gx;->e:Lcom/tapjoy/internal/bn;

    .line 6213
    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bn;->a(Lcom/tapjoy/internal/bs;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    check-cast v0, Lcom/tapjoy/internal/gx;

    iput-object v0, p0, Lcom/tapjoy/internal/gu;->c:Lcom/tapjoy/internal/gx;

    goto :goto_1

    .line 71
    :cond_2
    const-string v3, "close_button_offset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    sget-object v0, Lcom/tapjoy/internal/bo;->a:Lcom/tapjoy/internal/bn;

    .line 7213
    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bn;->a(Lcom/tapjoy/internal/bs;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/tapjoy/internal/gu;->d:Landroid/graphics/Point;

    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->s()V

    goto :goto_1

    .line 77
    :cond_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->i()V

    goto :goto_0

    .line 78
    :cond_5
    const-string v3, "creative"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 79
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->h()V

    .line 80
    :goto_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 81
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->l()Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v3, "portrait"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 83
    sget-object v0, Lcom/tapjoy/internal/gx;->e:Lcom/tapjoy/internal/bn;

    .line 8213
    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bn;->a(Lcom/tapjoy/internal/bs;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    check-cast v0, Lcom/tapjoy/internal/gx;

    iput-object v0, p0, Lcom/tapjoy/internal/gu;->e:Lcom/tapjoy/internal/gx;

    goto :goto_2

    .line 84
    :cond_6
    const-string v3, "landscape"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 85
    sget-object v0, Lcom/tapjoy/internal/gx;->e:Lcom/tapjoy/internal/bn;

    .line 9213
    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bn;->a(Lcom/tapjoy/internal/bs;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    check-cast v0, Lcom/tapjoy/internal/gx;

    iput-object v0, p0, Lcom/tapjoy/internal/gu;->f:Lcom/tapjoy/internal/gx;

    goto :goto_2

    .line 87
    :cond_7
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->s()V

    goto :goto_2

    .line 90
    :cond_8
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->i()V

    goto/16 :goto_0

    .line 91
    :cond_9
    const-string v3, "url"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 92
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gu;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 93
    :cond_a
    invoke-static {v0}, Lcom/tapjoy/internal/go;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 94
    invoke-static {v0, p1}, Lcom/tapjoy/internal/go;->a(Ljava/lang/String;Lcom/tapjoy/internal/bs;)Lcom/tapjoy/internal/go;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gu;->h:Lcom/tapjoy/internal/fl;

    goto/16 :goto_0

    .line 95
    :cond_b
    const-string v3, "mappings"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 96
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->h()V

    .line 97
    :goto_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->j()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 98
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->l()Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v3, "portrait"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 100
    iget-object v0, p0, Lcom/tapjoy/internal/gu;->i:Ljava/util/ArrayList;

    sget-object v3, Lcom/tapjoy/internal/gs;->h:Lcom/tapjoy/internal/bn;

    invoke-virtual {p1, v0, v3}, Lcom/tapjoy/internal/bs;->a(Ljava/util/List;Lcom/tapjoy/internal/bn;)V

    goto :goto_3

    .line 101
    :cond_c
    const-string v3, "landscape"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 102
    iget-object v0, p0, Lcom/tapjoy/internal/gu;->j:Ljava/util/ArrayList;

    sget-object v3, Lcom/tapjoy/internal/gs;->h:Lcom/tapjoy/internal/bn;

    invoke-virtual {p1, v0, v3}, Lcom/tapjoy/internal/bs;->a(Ljava/util/List;Lcom/tapjoy/internal/bn;)V

    goto :goto_3

    .line 104
    :cond_d
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->s()V

    goto :goto_3

    .line 107
    :cond_e
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->i()V

    goto/16 :goto_0

    .line 108
    :cond_f
    const-string v3, "meta"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 109
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->d()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gu;->k:Ljava/util/Map;

    goto/16 :goto_0

    .line 110
    :cond_10
    const-string v3, "ttl"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 111
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->p()D

    move-result-wide v4

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v8

    double-to-long v4, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/tapjoy/internal/gu;->l:J

    goto/16 :goto_0

    .line 113
    :cond_11
    const-string v3, "no_more_today"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 114
    sget-object v0, Lcom/tapjoy/internal/gv;->d:Lcom/tapjoy/internal/bn;

    .line 10213
    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bn;->a(Lcom/tapjoy/internal/bs;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    check-cast v0, Lcom/tapjoy/internal/gv;

    iput-object v0, p0, Lcom/tapjoy/internal/gu;->m:Lcom/tapjoy/internal/gv;

    goto/16 :goto_0

    .line 115
    :cond_12
    const-string v3, "ad_content"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 116
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 117
    :cond_13
    const-string v3, "redirect_url"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 118
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->b()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_0

    .line 120
    :cond_14
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->s()V

    goto/16 :goto_0

    .line 123
    :cond_15
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->i()V

    .line 125
    iget-object v0, p0, Lcom/tapjoy/internal/gu;->g:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gu;->g:Ljava/lang/String;

    .line 129
    :cond_16
    iget-object v0, p0, Lcom/tapjoy/internal/gu;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 130
    iget-object v0, p0, Lcom/tapjoy/internal/gu;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gs;

    .line 131
    iget-object v4, v0, Lcom/tapjoy/internal/gs;->f:Ljava/lang/String;

    if-nez v4, :cond_18

    .line 132
    iput-object v1, v0, Lcom/tapjoy/internal/gs;->f:Ljava/lang/String;

    .line 134
    :cond_18
    iget-object v4, v0, Lcom/tapjoy/internal/gs;->e:Ljava/lang/String;

    if-nez v4, :cond_17

    .line 135
    iput-object v2, v0, Lcom/tapjoy/internal/gs;->e:Ljava/lang/String;

    goto :goto_4

    .line 139
    :cond_19
    iget-object v0, p0, Lcom/tapjoy/internal/gu;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    .line 140
    iget-object v0, p0, Lcom/tapjoy/internal/gu;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gs;

    .line 141
    iget-object v4, v0, Lcom/tapjoy/internal/gs;->f:Ljava/lang/String;

    if-nez v4, :cond_1b

    .line 142
    iput-object v1, v0, Lcom/tapjoy/internal/gs;->f:Ljava/lang/String;

    .line 144
    :cond_1b
    iget-object v4, v0, Lcom/tapjoy/internal/gs;->e:Ljava/lang/String;

    if-nez v4, :cond_1a

    .line 145
    iput-object v2, v0, Lcom/tapjoy/internal/gs;->e:Ljava/lang/String;

    goto :goto_5

    .line 149
    :cond_1c
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/tapjoy/internal/gu;->c:Lcom/tapjoy/internal/gx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/gu;->a:Lcom/tapjoy/internal/gx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/gu;->e:Lcom/tapjoy/internal/gx;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tapjoy/internal/gu;->c:Lcom/tapjoy/internal/gx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/gu;->b:Lcom/tapjoy/internal/gx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/gu;->f:Lcom/tapjoy/internal/gx;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
