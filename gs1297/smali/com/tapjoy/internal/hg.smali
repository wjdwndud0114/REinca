.class public final Lcom/tapjoy/internal/hg;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/hg$a;,
        Lcom/tapjoy/internal/hg$b;
    }
.end annotation


# instance fields
.field private a:Lcom/tapjoy/internal/hc;

.field private b:Landroid/graphics/Bitmap;

.field private final c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Thread;

.field private h:Lcom/tapjoy/internal/hg$b;

.field private i:J

.field private j:Lcom/tapjoy/internal/hg$a;

.field private final k:Ljava/lang/Runnable;

.field private final l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tapjoy/internal/hg;->c:Landroid/os/Handler;

    .line 24
    iput-object v2, p0, Lcom/tapjoy/internal/hg;->h:Lcom/tapjoy/internal/hg$b;

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tapjoy/internal/hg;->i:J

    .line 26
    iput-object v2, p0, Lcom/tapjoy/internal/hg;->j:Lcom/tapjoy/internal/hg$a;

    .line 28
    new-instance v0, Lcom/tapjoy/internal/hg$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/hg$1;-><init>(Lcom/tapjoy/internal/hg;)V

    iput-object v0, p0, Lcom/tapjoy/internal/hg;->k:Ljava/lang/Runnable;

    .line 37
    new-instance v0, Lcom/tapjoy/internal/hg$2;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/hg$2;-><init>(Lcom/tapjoy/internal/hg;)V

    iput-object v0, p0, Lcom/tapjoy/internal/hg;->l:Ljava/lang/Runnable;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/hg;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/tapjoy/internal/hg;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic b(Lcom/tapjoy/internal/hg;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/hg;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/internal/hg;)Lcom/tapjoy/internal/hc;
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/hg;->a:Lcom/tapjoy/internal/hc;

    return-object v0
.end method

.method static synthetic d(Lcom/tapjoy/internal/hg;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/hg;->g:Ljava/lang/Thread;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 122
    iget-object v0, p0, Lcom/tapjoy/internal/hg;->a:Lcom/tapjoy/internal/hc;

    .line 1294
    iget v0, v0, Lcom/tapjoy/internal/hc;->a:I

    .line 122
    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/hg;->a:Lcom/tapjoy/internal/hc;

    .line 2285
    iget-object v2, v0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    iget v2, v2, Lcom/tapjoy/internal/he;->c:I

    .line 1303
    if-lt v3, v2, :cond_2

    .line 1304
    const/4 v0, 0x0

    .line 123
    :goto_1
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tapjoy/internal/hg;->d:Z

    if-nez v0, :cond_0

    .line 124
    iput-boolean v1, p0, Lcom/tapjoy/internal/hg;->e:Z

    .line 125
    invoke-direct {p0}, Lcom/tapjoy/internal/hg;->e()V

    goto :goto_0

    .line 1306
    :cond_2
    iput v3, v0, Lcom/tapjoy/internal/hc;->a:I

    move v0, v1

    .line 1307
    goto :goto_1
.end method

.method private e()V
    .locals 1

    .prologue
    .line 237
    .line 6143
    iget-boolean v0, p0, Lcom/tapjoy/internal/hg;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tapjoy/internal/hg;->e:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/hg;->a:Lcom/tapjoy/internal/hc;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/hg;->g:Ljava/lang/Thread;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 237
    :goto_0
    if-eqz v0, :cond_1

    .line 238
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tapjoy/internal/hg;->g:Ljava/lang/Thread;

    .line 239
    iget-object v0, p0, Lcom/tapjoy/internal/hg;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 241
    :cond_1
    return-void

    .line 6143
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/tapjoy/internal/hg;)Z
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/hg;->f:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/hg;->d:Z

    .line 105
    invoke-direct {p0}, Lcom/tapjoy/internal/hg;->e()V

    .line 106
    return-void
.end method

.method public final a(Lcom/tapjoy/internal/he;[B)V
    .locals 3

    .prologue
    .line 57
    :try_start_0
    new-instance v0, Lcom/tapjoy/internal/hc;

    new-instance v1, Lcom/tapjoy/internal/hh;

    invoke-direct {v1}, Lcom/tapjoy/internal/hh;-><init>()V

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/tapjoy/internal/hc;-><init>(Lcom/tapjoy/internal/hc$a;Lcom/tapjoy/internal/he;Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/tapjoy/internal/hg;->a:Lcom/tapjoy/internal/hc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    iget-boolean v0, p0, Lcom/tapjoy/internal/hg;->d:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/tapjoy/internal/hg;->e()V

    .line 69
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tapjoy/internal/hg;->a:Lcom/tapjoy/internal/hc;

    .line 60
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto :goto_0

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/hg;->d()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/hg;->d:Z

    .line 115
    iget-object v0, p0, Lcom/tapjoy/internal/hg;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/tapjoy/internal/hg;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/hg;->g:Ljava/lang/Thread;

    .line 119
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/tapjoy/internal/hg;->d:Z

    .line 136
    iput-boolean v0, p0, Lcom/tapjoy/internal/hg;->e:Z

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/hg;->f:Z

    .line 138
    invoke-virtual {p0}, Lcom/tapjoy/internal/hg;->b()V

    .line 139
    iget-object v0, p0, Lcom/tapjoy/internal/hg;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/internal/hg;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method

.method public final getFramesDisplayDuration()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/tapjoy/internal/hg;->i:J

    return-wide v0
.end method

.method public final getGifHeight()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tapjoy/internal/hg;->a:Lcom/tapjoy/internal/hc;

    .line 3214
    iget-object v0, v0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    iget v0, v0, Lcom/tapjoy/internal/he;->g:I

    .line 151
    return v0
.end method

.method public final getGifWidth()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/tapjoy/internal/hg;->a:Lcom/tapjoy/internal/hc;

    .line 3210
    iget-object v0, v0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    iget v0, v0, Lcom/tapjoy/internal/he;->f:I

    .line 147
    return v0
.end method

.method public final getOnAnimationStop()Lcom/tapjoy/internal/hg$a;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/tapjoy/internal/hg;->j:Lcom/tapjoy/internal/hg$a;

    return-object v0
.end method

.method public final getOnFrameAvailable()Lcom/tapjoy/internal/hg$b;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/tapjoy/internal/hg;->h:Lcom/tapjoy/internal/hg$b;

    return-object v0
.end method

.method protected final onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 232
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 233
    invoke-virtual {p0}, Lcom/tapjoy/internal/hg;->c()V

    .line 234
    return-void
.end method

.method public final run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/hg;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tapjoy/internal/hg;->e:Z

    if-eqz v0, :cond_4

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/hg;->a:Lcom/tapjoy/internal/hc;

    .line 3238
    iget-object v4, v0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    iget v4, v4, Lcom/tapjoy/internal/he;->c:I

    if-gtz v4, :cond_6

    move v0, v1

    .line 164
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 165
    iget-object v6, p0, Lcom/tapjoy/internal/hg;->a:Lcom/tapjoy/internal/hc;

    invoke-virtual {v6}, Lcom/tapjoy/internal/hc;->a()Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/tapjoy/internal/hg;->b:Landroid/graphics/Bitmap;

    .line 166
    iget-object v6, p0, Lcom/tapjoy/internal/hg;->h:Lcom/tapjoy/internal/hg$b;

    if-eqz v6, :cond_2

    .line 167
    iget-object v6, p0, Lcom/tapjoy/internal/hg;->h:Lcom/tapjoy/internal/hg$b;

    invoke-interface {v6}, Lcom/tapjoy/internal/hg$b;->a()Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/tapjoy/internal/hg;->b:Landroid/graphics/Bitmap;

    .line 169
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    :try_start_1
    iget-object v6, p0, Lcom/tapjoy/internal/hg;->c:Landroid/os/Handler;

    iget-object v7, p0, Lcom/tapjoy/internal/hg;->k:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 177
    :goto_1
    iput-boolean v1, p0, Lcom/tapjoy/internal/hg;->e:Z

    .line 178
    iget-boolean v6, p0, Lcom/tapjoy/internal/hg;->d:Z

    if-eqz v6, :cond_3

    if-nez v0, :cond_9

    .line 179
    :cond_3
    iput-boolean v1, p0, Lcom/tapjoy/internal/hg;->d:Z

    .line 196
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/tapjoy/internal/hg;->f:Z

    if-eqz v0, :cond_5

    .line 197
    iget-object v0, p0, Lcom/tapjoy/internal/hg;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/internal/hg;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/hg;->g:Ljava/lang/Thread;

    .line 204
    return-void

    .line 3242
    :cond_6
    iget v4, v0, Lcom/tapjoy/internal/hc;->a:I

    .line 3285
    iget-object v5, v0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    iget v5, v5, Lcom/tapjoy/internal/he;->c:I

    .line 3242
    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_7

    .line 3243
    iget v4, v0, Lcom/tapjoy/internal/hc;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/tapjoy/internal/hc;->b:I

    .line 3246
    :cond_7
    iget-object v4, v0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    iget v4, v4, Lcom/tapjoy/internal/he;->m:I

    if-eq v4, v3, :cond_8

    iget v4, v0, Lcom/tapjoy/internal/hc;->b:I

    iget-object v5, v0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    iget v5, v5, Lcom/tapjoy/internal/he;->m:I

    if-le v4, v5, :cond_8

    move v0, v1

    .line 3247
    goto :goto_0

    .line 3250
    :cond_8
    iget v4, v0, Lcom/tapjoy/internal/hc;->a:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, v0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    iget v5, v5, Lcom/tapjoy/internal/he;->c:I

    rem-int/2addr v4, v5

    iput v4, v0, Lcom/tapjoy/internal/hc;->a:I

    move v0, v2

    .line 3251
    goto :goto_0

    .line 171
    :catch_0
    move-exception v4

    move-object v6, v4

    move-wide v4, v8

    .line 172
    :goto_3
    new-array v7, v2, [Ljava/lang/Object;

    aput-object v6, v7, v1

    goto :goto_1

    .line 173
    :catch_1
    move-exception v4

    move-object v6, v4

    move-wide v4, v8

    .line 174
    :goto_4
    new-array v7, v2, [Ljava/lang/Object;

    aput-object v6, v7, v1

    goto :goto_1

    .line 183
    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/tapjoy/internal/hg;->a:Lcom/tapjoy/internal/hc;

    .line 4272
    iget-object v6, v0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    iget v6, v6, Lcom/tapjoy/internal/he;->c:I

    if-lez v6, :cond_a

    iget v6, v0, Lcom/tapjoy/internal/hc;->a:I

    if-gez v6, :cond_c

    :cond_a
    move v0, v1

    .line 187
    :goto_5
    int-to-long v6, v0

    sub-long v4, v6, v4

    long-to-int v0, v4

    .line 188
    if-lez v0, :cond_b

    .line 189
    iget-wide v4, p0, Lcom/tapjoy/internal/hg;->i:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_d

    iget-wide v4, p0, Lcom/tapjoy/internal/hg;->i:J

    :goto_6
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 194
    :cond_b
    :goto_7
    iget-boolean v0, p0, Lcom/tapjoy/internal/hg;->d:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 4276
    :cond_c
    :try_start_3
    iget v6, v0, Lcom/tapjoy/internal/hc;->a:I

    .line 5262
    if-ltz v6, :cond_e

    iget-object v7, v0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    iget v7, v7, Lcom/tapjoy/internal/he;->c:I

    if-ge v6, v7, :cond_e

    .line 5263
    iget-object v0, v0, Lcom/tapjoy/internal/hc;->c:Lcom/tapjoy/internal/he;

    iget-object v0, v0, Lcom/tapjoy/internal/he;->e:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/hd;

    iget v0, v0, Lcom/tapjoy/internal/hd;->i:I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 189
    :cond_d
    int-to-long v4, v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_7

    .line 173
    :catch_3
    move-exception v6

    goto :goto_4

    .line 171
    :catch_4
    move-exception v6

    goto :goto_3

    :cond_e
    move v0, v3

    goto :goto_5
.end method

.method public final setBytes([B)V
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 72
    new-instance v0, Lcom/tapjoy/internal/hc;

    invoke-direct {v0}, Lcom/tapjoy/internal/hc;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/hg;->a:Lcom/tapjoy/internal/hc;

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/hg;->a:Lcom/tapjoy/internal/hc;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hc;->a([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    iget-boolean v0, p0, Lcom/tapjoy/internal/hg;->d:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/tapjoy/internal/hg;->e()V

    .line 86
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tapjoy/internal/hg;->a:Lcom/tapjoy/internal/hc;

    .line 77
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/internal/hg;->d()V

    goto :goto_0
.end method

.method public final setFramesDisplayDuration(J)V
    .locals 1
    .param p1, "framesDisplayDuration"    # J

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/tapjoy/internal/hg;->i:J

    .line 101
    return-void
.end method

.method public final setOnAnimationStop(Lcom/tapjoy/internal/hg$a;)V
    .locals 0
    .param p1, "animationStop"    # Lcom/tapjoy/internal/hg$a;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/tapjoy/internal/hg;->j:Lcom/tapjoy/internal/hg$a;

    .line 224
    return-void
.end method

.method public final setOnFrameAvailable(Lcom/tapjoy/internal/hg$b;)V
    .locals 0
    .param p1, "frameProcessor"    # Lcom/tapjoy/internal/hg$b;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/tapjoy/internal/hg;->h:Lcom/tapjoy/internal/hg$b;

    .line 212
    return-void
.end method
