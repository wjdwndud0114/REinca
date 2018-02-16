.class public final Lcom/tapjoy/internal/gp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/tapjoy/internal/dx;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lcom/tapjoy/internal/bm;

    invoke-direct {v0}, Lcom/tapjoy/internal/bm;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bm;->c()Lcom/tapjoy/internal/bm;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/tapjoy/internal/dx;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "pkg_ver"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/dx;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/dx;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 72
    const-string v1, "pkg_rev"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/dx;->f:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/dx;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 75
    const-string v1, "data_ver"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/dx;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/dx;->h:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 78
    const-string v1, "installer"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/dx;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 80
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/dx;->i:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 81
    const-string v1, "store"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/dx;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 83
    :cond_4
    invoke-virtual {v0}, Lcom/tapjoy/internal/bm;->d()Lcom/tapjoy/internal/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/tapjoy/internal/dy;ZZZ)Ljava/lang/String;
    .locals 7

    .prologue
    .line 270
    new-instance v0, Lcom/tapjoy/internal/bm;

    invoke-direct {v0}, Lcom/tapjoy/internal/bm;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bm;->c()Lcom/tapjoy/internal/bm;

    move-result-object v0

    const-string v1, "type"

    .line 271
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/dy;->n:Lcom/tapjoy/internal/eb;

    invoke-static {v1}, Lcom/tapjoy/internal/gp;->a(Lcom/tapjoy/internal/eb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    const-string v1, "name"

    .line 272
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/dy;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v1

    .line 274
    const-string v0, "time"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 275
    iget-object v0, p0, Lcom/tapjoy/internal/dy;->q:Ljava/lang/Long;

    if-eqz v0, :cond_22

    .line 276
    iget-object v0, p0, Lcom/tapjoy/internal/dy;->p:Ljava/lang/Long;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 277
    const-string v0, "systime"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/dy;->q:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 286
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/dy;->t:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 287
    const-string v0, "duration"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/dy;->t:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 290
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/dy;->u:Lcom/tapjoy/internal/ed;

    if-eqz v0, :cond_1

    .line 291
    const-string v0, "info"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/br;

    iget-object v3, p0, Lcom/tapjoy/internal/dy;->u:Lcom/tapjoy/internal/ed;

    invoke-static {v3}, Lcom/tapjoy/internal/gp;->a(Lcom/tapjoy/internal/ed;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/br;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Lcom/tapjoy/internal/bq;)Lcom/tapjoy/internal/bm;

    .line 293
    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/dy;->v:Lcom/tapjoy/internal/dx;

    if-eqz v0, :cond_2

    .line 294
    const-string v0, "app"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/br;

    iget-object v3, p0, Lcom/tapjoy/internal/dy;->v:Lcom/tapjoy/internal/dx;

    invoke-static {v3}, Lcom/tapjoy/internal/gp;->a(Lcom/tapjoy/internal/dx;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/br;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Lcom/tapjoy/internal/bq;)Lcom/tapjoy/internal/bm;

    .line 296
    :cond_2
    if-nez p3, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/dy;->w:Lcom/tapjoy/internal/ek;

    if-eqz v0, :cond_3

    .line 297
    const-string v0, "user"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/br;

    iget-object v3, p0, Lcom/tapjoy/internal/dy;->w:Lcom/tapjoy/internal/ek;

    invoke-static {v3, p0}, Lcom/tapjoy/internal/gp;->a(Lcom/tapjoy/internal/ek;Lcom/tapjoy/internal/dy;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/br;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Lcom/tapjoy/internal/bq;)Lcom/tapjoy/internal/bm;

    .line 300
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/dy;->y:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 301
    const-string v0, "event_seq"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/dy;->y:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 303
    :cond_4
    iget-object v0, p0, Lcom/tapjoy/internal/dy;->z:Lcom/tapjoy/internal/ea;

    if-eqz v0, :cond_6

    .line 304
    const-string v0, "event_prev"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/br;

    iget-object v3, p0, Lcom/tapjoy/internal/dy;->z:Lcom/tapjoy/internal/ea;

    .line 1255
    new-instance v4, Lcom/tapjoy/internal/bm;

    invoke-direct {v4}, Lcom/tapjoy/internal/bm;-><init>()V

    invoke-virtual {v4}, Lcom/tapjoy/internal/bm;->c()Lcom/tapjoy/internal/bm;

    move-result-object v4

    const-string v5, "type"

    .line 1256
    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v4

    iget-object v5, v3, Lcom/tapjoy/internal/ea;->e:Lcom/tapjoy/internal/eb;

    invoke-static {v5}, Lcom/tapjoy/internal/gp;->a(Lcom/tapjoy/internal/eb;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v4

    const-string v5, "name"

    .line 1257
    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v4

    iget-object v5, v3, Lcom/tapjoy/internal/ea;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v4

    .line 1258
    iget-object v5, v3, Lcom/tapjoy/internal/ea;->g:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 1259
    const-string v5, "category"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v5

    iget-object v3, v3, Lcom/tapjoy/internal/ea;->g:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 1261
    :cond_5
    invoke-virtual {v4}, Lcom/tapjoy/internal/bm;->d()Lcom/tapjoy/internal/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tapjoy/internal/bm;->toString()Ljava/lang/String;

    move-result-object v3

    .line 304
    invoke-direct {v2, v3}, Lcom/tapjoy/internal/br;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Lcom/tapjoy/internal/bq;)Lcom/tapjoy/internal/bm;

    .line 308
    :cond_6
    iget-object v0, p0, Lcom/tapjoy/internal/dy;->A:Lcom/tapjoy/internal/eg;

    if-eqz v0, :cond_14

    .line 309
    const-string v0, "purchase"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/br;

    iget-object v3, p0, Lcom/tapjoy/internal/dy;->A:Lcom/tapjoy/internal/eg;

    .line 2210
    new-instance v4, Lcom/tapjoy/internal/bm;

    invoke-direct {v4}, Lcom/tapjoy/internal/bm;-><init>()V

    invoke-virtual {v4}, Lcom/tapjoy/internal/bm;->c()Lcom/tapjoy/internal/bm;

    move-result-object v4

    const-string v5, "product_id"

    .line 2211
    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v4

    iget-object v5, v3, Lcom/tapjoy/internal/eg;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v4

    .line 2212
    iget-object v5, v3, Lcom/tapjoy/internal/eg;->i:Ljava/lang/Integer;

    if-eqz v5, :cond_7

    .line 2213
    const-string v5, "product_quantity"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v5

    iget-object v6, v3, Lcom/tapjoy/internal/eg;->i:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 2215
    :cond_7
    iget-object v5, v3, Lcom/tapjoy/internal/eg;->j:Ljava/lang/Double;

    if-eqz v5, :cond_8

    .line 2216
    const-string v5, "product_price"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v5

    iget-object v6, v3, Lcom/tapjoy/internal/eg;->j:Ljava/lang/Double;

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 2218
    :cond_8
    iget-object v5, v3, Lcom/tapjoy/internal/eg;->k:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 2219
    const-string v5, "product_price_currency"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v5

    iget-object v6, v3, Lcom/tapjoy/internal/eg;->k:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 2221
    :cond_9
    iget-object v5, v3, Lcom/tapjoy/internal/eg;->s:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 2222
    const-string v5, "currency_price"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v5

    iget-object v6, v3, Lcom/tapjoy/internal/eg;->s:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 2224
    :cond_a
    iget-object v5, v3, Lcom/tapjoy/internal/eg;->l:Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 2225
    const-string v5, "product_type"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v5

    iget-object v6, v3, Lcom/tapjoy/internal/eg;->l:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 2227
    :cond_b
    iget-object v5, v3, Lcom/tapjoy/internal/eg;->m:Ljava/lang/String;

    if-eqz v5, :cond_c

    .line 2228
    const-string v5, "product_title"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v5

    iget-object v6, v3, Lcom/tapjoy/internal/eg;->m:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 2230
    :cond_c
    iget-object v5, v3, Lcom/tapjoy/internal/eg;->n:Ljava/lang/String;

    if-eqz v5, :cond_d

    .line 2231
    const-string v5, "product_description"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v5

    iget-object v6, v3, Lcom/tapjoy/internal/eg;->n:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 2233
    :cond_d
    iget-object v5, v3, Lcom/tapjoy/internal/eg;->o:Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 2234
    const-string v5, "transaction_id"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v5

    iget-object v6, v3, Lcom/tapjoy/internal/eg;->o:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 2236
    :cond_e
    iget-object v5, v3, Lcom/tapjoy/internal/eg;->p:Ljava/lang/Integer;

    if-eqz v5, :cond_f

    .line 2237
    const-string v5, "transaction_state"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v5

    iget-object v6, v3, Lcom/tapjoy/internal/eg;->p:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 2239
    :cond_f
    iget-object v5, v3, Lcom/tapjoy/internal/eg;->q:Ljava/lang/Long;

    if-eqz v5, :cond_10

    .line 2240
    const-string v5, "transaction_date"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v5

    iget-object v6, v3, Lcom/tapjoy/internal/eg;->q:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 2242
    :cond_10
    iget-object v5, v3, Lcom/tapjoy/internal/eg;->r:Ljava/lang/String;

    if-eqz v5, :cond_11

    .line 2243
    const-string v5, "campaign_id"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v5

    iget-object v6, v3, Lcom/tapjoy/internal/eg;->r:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 2245
    :cond_11
    iget-object v5, v3, Lcom/tapjoy/internal/eg;->t:Ljava/lang/String;

    if-eqz v5, :cond_12

    .line 2246
    const-string v5, "receipt"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v5

    iget-object v6, v3, Lcom/tapjoy/internal/eg;->t:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 2248
    :cond_12
    iget-object v5, v3, Lcom/tapjoy/internal/eg;->u:Ljava/lang/String;

    if-eqz v5, :cond_13

    .line 2249
    const-string v5, "signature"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v5

    iget-object v3, v3, Lcom/tapjoy/internal/eg;->u:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 2251
    :cond_13
    invoke-virtual {v4}, Lcom/tapjoy/internal/bm;->d()Lcom/tapjoy/internal/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tapjoy/internal/bm;->toString()Ljava/lang/String;

    move-result-object v3

    .line 309
    invoke-direct {v2, v3}, Lcom/tapjoy/internal/br;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Lcom/tapjoy/internal/bq;)Lcom/tapjoy/internal/bm;

    .line 313
    :cond_14
    iget-object v0, p0, Lcom/tapjoy/internal/dy;->B:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 314
    const-string v0, "exception"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/dy;->B:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 319
    :cond_15
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/dy;->D:Lcom/tapjoy/internal/ef;

    if-eqz v0, :cond_24

    .line 320
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 321
    iget-object v2, p0, Lcom/tapjoy/internal/dy;->C:Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 322
    iget-object v2, p0, Lcom/tapjoy/internal/dy;->C:Ljava/lang/String;

    invoke-static {v2}, Lcom/tapjoy/internal/bs;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bs;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/bs;->a(Ljava/util/Map;)V

    .line 324
    :cond_16
    iget-object v2, p0, Lcom/tapjoy/internal/dy;->D:Lcom/tapjoy/internal/ef;

    .line 325
    iget-object v3, v2, Lcom/tapjoy/internal/ef;->d:Ljava/lang/String;

    if-eqz v3, :cond_17

    .line 326
    const-string v3, "fq7_change"

    iget-object v4, v2, Lcom/tapjoy/internal/ef;->d:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_17
    iget-object v3, v2, Lcom/tapjoy/internal/ef;->e:Ljava/lang/String;

    if-eqz v3, :cond_18

    .line 329
    const-string v3, "fq30_change"

    iget-object v4, v2, Lcom/tapjoy/internal/ef;->e:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_18
    iget-object v3, v2, Lcom/tapjoy/internal/ef;->f:Ljava/lang/String;

    if-eqz v3, :cond_19

    .line 332
    const-string v3, "push_id"

    iget-object v2, v2, Lcom/tapjoy/internal/ef;->f:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_19
    const-string v2, "meta"

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/util/Map;)Lcom/tapjoy/internal/bm;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_1a
    :goto_1
    iget-object v0, p0, Lcom/tapjoy/internal/dy;->I:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 343
    const-string v0, "dimensions"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/br;

    iget-object v3, p0, Lcom/tapjoy/internal/dy;->I:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/br;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Lcom/tapjoy/internal/bq;)Lcom/tapjoy/internal/bm;

    .line 345
    :cond_1b
    iget-object v0, p0, Lcom/tapjoy/internal/dy;->J:Ljava/lang/Integer;

    if-eqz v0, :cond_1c

    .line 346
    const-string v0, "count"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/dy;->J:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 348
    :cond_1c
    iget-object v0, p0, Lcom/tapjoy/internal/dy;->K:Ljava/lang/Long;

    if-eqz v0, :cond_1d

    .line 349
    const-string v0, "first_time"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/dy;->K:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 351
    :cond_1d
    iget-object v0, p0, Lcom/tapjoy/internal/dy;->L:Ljava/lang/Long;

    if-eqz v0, :cond_1e

    .line 352
    const-string v0, "last_time"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/dy;->L:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 356
    :cond_1e
    iget-object v0, p0, Lcom/tapjoy/internal/dy;->E:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 357
    const-string v0, "category"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/dy;->E:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 359
    :cond_1f
    iget-object v0, p0, Lcom/tapjoy/internal/dy;->F:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 360
    const-string v0, "p1"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/dy;->F:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 362
    :cond_20
    iget-object v0, p0, Lcom/tapjoy/internal/dy;->G:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 363
    const-string v0, "p2"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/dy;->G:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 365
    :cond_21
    iget-object v0, p0, Lcom/tapjoy/internal/dy;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_26

    .line 366
    const-string v0, "values"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bm;->c()Lcom/tapjoy/internal/bm;

    .line 367
    iget-object v0, p0, Lcom/tapjoy/internal/dy;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/ec;

    .line 368
    iget-object v3, v0, Lcom/tapjoy/internal/ec;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v3

    iget-object v0, v0, Lcom/tapjoy/internal/ec;->f:Ljava/lang/Long;

    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    goto :goto_2

    .line 278
    :cond_22
    invoke-static {}, Lcom/tapjoy/internal/y;->c()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/tapjoy/internal/dy;->r:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/tapjoy/internal/dy;->s:Ljava/lang/Long;

    if-eqz v0, :cond_23

    sget-object v0, Lcom/tapjoy/internal/gc;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/dy;->r:Ljava/lang/String;

    .line 279
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 280
    iget-object v0, p0, Lcom/tapjoy/internal/dy;->s:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tapjoy/internal/y;->a(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/bm;->a(J)Lcom/tapjoy/internal/bm;

    .line 281
    const-string v0, "systime"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/dy;->p:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    goto/16 :goto_0

    .line 283
    :cond_23
    iget-object v0, p0, Lcom/tapjoy/internal/dy;->p:Ljava/lang/Long;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    goto/16 :goto_0

    .line 335
    :cond_24
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/dy;->C:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 336
    const-string v0, "meta"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/br;

    iget-object v3, p0, Lcom/tapjoy/internal/dy;->C:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/br;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Lcom/tapjoy/internal/bq;)Lcom/tapjoy/internal/bm;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 370
    :cond_25
    invoke-virtual {v1}, Lcom/tapjoy/internal/bm;->d()Lcom/tapjoy/internal/bm;

    .line 373
    :cond_26
    invoke-virtual {v1}, Lcom/tapjoy/internal/bm;->d()Lcom/tapjoy/internal/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/tapjoy/internal/dz;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 377
    new-instance v0, Lcom/tapjoy/internal/bm;

    invoke-direct {v0}, Lcom/tapjoy/internal/bm;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bm;->a()Lcom/tapjoy/internal/bm;

    move-result-object v9

    .line 384
    iget-object v0, p0, Lcom/tapjoy/internal/dz;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v4, v1

    move-object v5, v1

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dy;

    .line 385
    if-eqz v5, :cond_0

    iget-object v6, v0, Lcom/tapjoy/internal/dy;->u:Lcom/tapjoy/internal/ed;

    invoke-virtual {v5, v6}, Lcom/tapjoy/internal/ed;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 387
    :cond_0
    iget-object v6, v0, Lcom/tapjoy/internal/dy;->u:Lcom/tapjoy/internal/ed;

    move v8, v3

    .line 391
    :goto_1
    if-eqz v4, :cond_1

    iget-object v5, v0, Lcom/tapjoy/internal/dy;->v:Lcom/tapjoy/internal/dx;

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/dx;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 393
    :cond_1
    iget-object v5, v0, Lcom/tapjoy/internal/dy;->v:Lcom/tapjoy/internal/dx;

    move v7, v3

    .line 397
    :goto_2
    if-eqz v1, :cond_2

    iget-object v4, v0, Lcom/tapjoy/internal/dy;->w:Lcom/tapjoy/internal/ek;

    invoke-virtual {v1, v4}, Lcom/tapjoy/internal/ek;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 399
    :cond_2
    iget-object v1, v0, Lcom/tapjoy/internal/dy;->w:Lcom/tapjoy/internal/ek;

    move-object v4, v1

    move v1, v3

    .line 403
    :goto_3
    new-instance v11, Lcom/tapjoy/internal/br;

    invoke-static {v0, v8, v7, v1}, Lcom/tapjoy/internal/gp;->a(Lcom/tapjoy/internal/dy;ZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/tapjoy/internal/br;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Lcom/tapjoy/internal/bm;->a(Lcom/tapjoy/internal/bq;)Lcom/tapjoy/internal/bm;

    move-object v1, v4

    move-object v4, v5

    move-object v5, v6

    .line 405
    goto :goto_0

    :cond_3
    move v8, v2

    move-object v6, v5

    .line 389
    goto :goto_1

    :cond_4
    move v7, v2

    move-object v5, v4

    .line 395
    goto :goto_2

    :cond_5
    move-object v4, v1

    move v1, v2

    .line 401
    goto :goto_3

    .line 406
    :cond_6
    invoke-virtual {v9}, Lcom/tapjoy/internal/bm;->b()Lcom/tapjoy/internal/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/tapjoy/internal/eb;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 410
    sget-object v0, Lcom/tapjoy/internal/gp$1;->a:[I

    invoke-virtual {p0}, Lcom/tapjoy/internal/eb;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 420
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 412
    :pswitch_0
    const-string v0, "app"

    .line 418
    :goto_0
    return-object v0

    .line 414
    :pswitch_1
    const-string v0, "campaign"

    goto :goto_0

    .line 416
    :pswitch_2
    const-string v0, "custom"

    goto :goto_0

    .line 418
    :pswitch_3
    const-string v0, "usages"

    goto :goto_0

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Lcom/tapjoy/internal/ed;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/tapjoy/internal/bm;

    invoke-direct {v0}, Lcom/tapjoy/internal/bm;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bm;->c()Lcom/tapjoy/internal/bm;

    move-result-object v0

    const-string v1, "sdk"

    .line 31
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/ed;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    const-string v1, "os_name"

    .line 32
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/ed;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    const-string v1, "os_ver"

    .line 33
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/ed;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    const-string v1, "device_id"

    .line 34
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/ed;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    const-string v1, "device_maker"

    .line 35
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/ed;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    const-string v1, "device_model"

    .line 36
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/ed;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    const-string v1, "pkg_id"

    .line 37
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/ed;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    const-string v1, "pkg_sign"

    .line 38
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/ed;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    const-string v1, "locale"

    .line 39
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/ed;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    const-string v1, "timezone"

    .line 40
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/ed;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->m:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 43
    const-string v1, "display_d"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->m:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 46
    const-string v1, "display_w"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->n:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 49
    const-string v1, "display_h"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->o:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 52
    const-string v1, "mac"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 54
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->u:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 55
    const-string v1, "country_sim"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 57
    :cond_4
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->v:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 58
    const-string v1, "country_net"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 60
    :cond_5
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->w:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 61
    const-string v1, "imei"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 63
    :cond_6
    invoke-virtual {v0}, Lcom/tapjoy/internal/bm;->d()Lcom/tapjoy/internal/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/tapjoy/internal/ek;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tapjoy/internal/gp;->a(Lcom/tapjoy/internal/ek;Lcom/tapjoy/internal/dy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/tapjoy/internal/ek;Lcom/tapjoy/internal/dy;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const-wide/16 v6, 0x1

    .line 90
    new-instance v0, Lcom/tapjoy/internal/bm;

    invoke-direct {v0}, Lcom/tapjoy/internal/bm;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/bm;->c()Lcom/tapjoy/internal/bm;

    move-result-object v1

    .line 91
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->s:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "installed"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->s:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->t:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 95
    const-string v0, "referrer"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->G:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 99
    const-string v0, "idfa"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->G:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 100
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->H:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->H:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    const-string v0, "idfa_optout"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/tapjoy/internal/bm;->a(J)Lcom/tapjoy/internal/bm;

    .line 114
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->u:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 115
    const-string v0, "fq7"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->u:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bm;->a(J)Lcom/tapjoy/internal/bm;

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 118
    const-string v0, "fq30"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->v:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/bm;->a(J)Lcom/tapjoy/internal/bm;

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/eh;

    .line 124
    iget-object v4, v0, Lcom/tapjoy/internal/eh;->h:Ljava/lang/Long;

    if-eqz v4, :cond_5

    .line 125
    iget-object v0, v0, Lcom/tapjoy/internal/eh;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 103
    :cond_6
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/tapjoy/internal/dy;->r:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tapjoy/internal/gc;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/tapjoy/internal/dy;->r:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-static {}, Lcom/tapjoy/internal/gn;->b()Ljava/lang/String;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_2

    .line 107
    const-string v2, "idfa"

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 108
    invoke-static {}, Lcom/tapjoy/internal/gn;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    const-string v0, "idfa_optout"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/tapjoy/internal/bm;->a(J)Lcom/tapjoy/internal/bm;

    goto/16 :goto_0

    .line 128
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 129
    const-string v0, "push"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bm;->a()Lcom/tapjoy/internal/bm;

    .line 130
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    goto :goto_2

    .line 133
    :cond_8
    invoke-virtual {v1}, Lcom/tapjoy/internal/bm;->b()Lcom/tapjoy/internal/bm;

    .line 137
    :cond_9
    const-string v0, "session"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bm;->c()Lcom/tapjoy/internal/bm;

    .line 139
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->x:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 140
    const-string v0, "total_count"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->x:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 142
    :cond_a
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->y:Ljava/lang/Long;

    if-eqz v0, :cond_b

    .line 143
    const-string v0, "total_length"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->y:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 145
    :cond_b
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->z:Ljava/lang/Long;

    if-eqz v0, :cond_c

    .line 146
    const-string v0, "last_at"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->z:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 148
    :cond_c
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->A:Ljava/lang/Long;

    if-eqz v0, :cond_d

    .line 149
    const-string v0, "last_length"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->A:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 152
    :cond_d
    invoke-virtual {v1}, Lcom/tapjoy/internal/bm;->d()Lcom/tapjoy/internal/bm;

    .line 154
    const-string v0, "purchase"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bm;->c()Lcom/tapjoy/internal/bm;

    .line 156
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->B:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 157
    const-string v0, "currency"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->B:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 159
    :cond_e
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->C:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    .line 160
    const-string v0, "total_count"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->C:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 162
    :cond_f
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->D:Ljava/lang/Double;

    if-eqz v0, :cond_10

    .line 163
    const-string v0, "total_price"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->D:Ljava/lang/Double;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 165
    :cond_10
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->E:Ljava/lang/Long;

    if-eqz v0, :cond_11

    .line 166
    const-string v0, "last_at"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->E:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 168
    :cond_11
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->F:Ljava/lang/Double;

    if-eqz v0, :cond_12

    .line 169
    const-string v0, "last_price"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->F:Ljava/lang/Double;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 172
    :cond_12
    invoke-virtual {v1}, Lcom/tapjoy/internal/bm;->d()Lcom/tapjoy/internal/bm;

    .line 174
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->I:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 175
    const-string v0, "user_id"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->I:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 177
    :cond_13
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->J:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    .line 178
    const-string v0, "user_level"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->J:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 180
    :cond_14
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->K:Ljava/lang/Integer;

    if-eqz v0, :cond_15

    .line 181
    const-string v0, "friend_count"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->K:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Number;)Lcom/tapjoy/internal/bm;

    .line 183
    :cond_15
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->L:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 184
    const-string v0, "uv1"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->L:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 186
    :cond_16
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->M:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 187
    const-string v0, "uv2"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->M:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 189
    :cond_17
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->N:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 190
    const-string v0, "uv3"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->N:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 192
    :cond_18
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->O:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 193
    const-string v0, "uv4"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->O:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 195
    :cond_19
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->P:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 196
    const-string v0, "uv5"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->P:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    .line 198
    :cond_1a
    iget-object v0, p0, Lcom/tapjoy/internal/ek;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    .line 199
    const-string v0, "tags"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->Q:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bm;->a(Ljava/util/Collection;)Lcom/tapjoy/internal/bm;

    .line 202
    :cond_1b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->R:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 203
    const-string v0, "push_optout"

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/String;)Lcom/tapjoy/internal/bm;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/tapjoy/internal/bm;->a(J)Lcom/tapjoy/internal/bm;

    .line 206
    :cond_1c
    invoke-virtual {v1}, Lcom/tapjoy/internal/bm;->d()Lcom/tapjoy/internal/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/bm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
