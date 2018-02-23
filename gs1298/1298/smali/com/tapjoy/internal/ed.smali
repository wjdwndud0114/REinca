.class public final Lcom/tapjoy/internal/ed;
.super Lcom/tapjoy/internal/dl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ed$b;,
        Lcom/tapjoy/internal/ed$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/dn;

.field public static final d:Ljava/lang/Integer;

.field public static final e:Ljava/lang/Integer;

.field public static final f:Ljava/lang/Integer;


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/Integer;

.field public final n:Ljava/lang/Integer;

.field public final o:Ljava/lang/Integer;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    new-instance v0, Lcom/tapjoy/internal/ed$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/ed$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ed;->c:Lcom/tapjoy/internal/dn;

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ed;->d:Ljava/lang/Integer;

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ed;->e:Ljava/lang/Integer;

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ed;->f:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/hu;)V
    .locals 2

    .prologue
    .line 166
    sget-object v1, Lcom/tapjoy/internal/ed;->c:Lcom/tapjoy/internal/dn;

    move-object/from16 v0, p18

    invoke-direct {p0, v1, v0}, Lcom/tapjoy/internal/dl;-><init>(Lcom/tapjoy/internal/dn;Lcom/tapjoy/internal/hu;)V

    .line 167
    iput-object p1, p0, Lcom/tapjoy/internal/ed;->g:Ljava/lang/String;

    .line 168
    iput-object p2, p0, Lcom/tapjoy/internal/ed;->h:Ljava/lang/String;

    .line 169
    iput-object p3, p0, Lcom/tapjoy/internal/ed;->i:Ljava/lang/String;

    .line 170
    iput-object p4, p0, Lcom/tapjoy/internal/ed;->j:Ljava/lang/String;

    .line 171
    iput-object p5, p0, Lcom/tapjoy/internal/ed;->k:Ljava/lang/String;

    .line 172
    iput-object p6, p0, Lcom/tapjoy/internal/ed;->l:Ljava/lang/String;

    .line 173
    iput-object p7, p0, Lcom/tapjoy/internal/ed;->m:Ljava/lang/Integer;

    .line 174
    iput-object p8, p0, Lcom/tapjoy/internal/ed;->n:Ljava/lang/Integer;

    .line 175
    iput-object p9, p0, Lcom/tapjoy/internal/ed;->o:Ljava/lang/Integer;

    .line 176
    iput-object p10, p0, Lcom/tapjoy/internal/ed;->p:Ljava/lang/String;

    .line 177
    iput-object p11, p0, Lcom/tapjoy/internal/ed;->q:Ljava/lang/String;

    .line 178
    iput-object p12, p0, Lcom/tapjoy/internal/ed;->r:Ljava/lang/String;

    .line 179
    iput-object p13, p0, Lcom/tapjoy/internal/ed;->s:Ljava/lang/String;

    .line 180
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/tapjoy/internal/ed;->t:Ljava/lang/String;

    .line 181
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/tapjoy/internal/ed;->u:Ljava/lang/String;

    .line 182
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/tapjoy/internal/ed;->v:Ljava/lang/String;

    .line 183
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/tapjoy/internal/ed;->w:Ljava/lang/String;

    .line 184
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 212
    if-ne p1, p0, :cond_1

    .line 232
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 213
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/tapjoy/internal/ed;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 214
    :cond_2
    check-cast p1, Lcom/tapjoy/internal/ed;

    .line 215
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/hu;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/hu;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/hu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ed;->g:Ljava/lang/String;

    .line 216
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ed;->h:Ljava/lang/String;

    .line 217
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ed;->i:Ljava/lang/String;

    .line 218
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ed;->j:Ljava/lang/String;

    .line 219
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ed;->k:Ljava/lang/String;

    .line 220
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ed;->l:Ljava/lang/String;

    .line 221
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->m:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/ed;->m:Ljava/lang/Integer;

    .line 222
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->n:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/ed;->n:Ljava/lang/Integer;

    .line 223
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->o:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/ed;->o:Ljava/lang/Integer;

    .line 224
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ed;->p:Ljava/lang/String;

    .line 225
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ed;->q:Ljava/lang/String;

    .line 226
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ed;->r:Ljava/lang/String;

    .line 227
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ed;->s:Ljava/lang/String;

    .line 228
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ed;->t:Ljava/lang/String;

    .line 229
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ed;->u:Ljava/lang/String;

    .line 230
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->v:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ed;->v:Ljava/lang/String;

    .line 231
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->w:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ed;->w:Ljava/lang/String;

    .line 232
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 237
    iget v0, p0, Lcom/tapjoy/internal/dl;->b:I

    .line 238
    if-nez v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/tapjoy/internal/ed;->a()Lcom/tapjoy/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/hu;->hashCode()I

    move-result v0

    .line 240
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 241
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 242
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 243
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->j:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 244
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->k:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 245
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->l:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 246
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->m:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->m:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 247
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 248
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->o:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->o:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 249
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->p:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 250
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->q:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 251
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->r:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 252
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->s:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    .line 253
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->t:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    .line 254
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->u:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v2

    .line 255
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->v:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tapjoy/internal/ed;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v2

    .line 256
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->w:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/ed;->w:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 257
    iput v0, p0, Lcom/tapjoy/internal/dl;->b:I

    .line 259
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 240
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 241
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 242
    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 243
    goto/16 :goto_3

    :cond_6
    move v0, v1

    .line 244
    goto/16 :goto_4

    :cond_7
    move v0, v1

    .line 245
    goto/16 :goto_5

    :cond_8
    move v0, v1

    .line 246
    goto/16 :goto_6

    :cond_9
    move v0, v1

    .line 247
    goto/16 :goto_7

    :cond_a
    move v0, v1

    .line 248
    goto/16 :goto_8

    :cond_b
    move v0, v1

    .line 249
    goto :goto_9

    :cond_c
    move v0, v1

    .line 250
    goto :goto_a

    :cond_d
    move v0, v1

    .line 251
    goto :goto_b

    :cond_e
    move v0, v1

    .line 252
    goto :goto_c

    :cond_f
    move v0, v1

    .line 253
    goto :goto_d

    :cond_10
    move v0, v1

    .line 254
    goto :goto_e

    :cond_11
    move v0, v1

    .line 255
    goto :goto_f
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->h:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->i:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ", deviceMaker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->j:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ", deviceModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->k:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, ", osName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_4
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->l:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, ", osVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_5
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->m:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    const-string v1, ", displayD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->m:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    :cond_6
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const-string v1, ", displayW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->n:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 273
    :cond_7
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    const-string v1, ", displayH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->o:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    :cond_8
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->p:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_9
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->q:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v1, ", timezone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_a
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->r:Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v1, ", pkgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_b
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->s:Ljava/lang/String;

    if-eqz v1, :cond_c

    const-string v1, ", pkgSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_c
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->t:Ljava/lang/String;

    if-eqz v1, :cond_d

    const-string v1, ", sdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_d
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->u:Ljava/lang/String;

    if-eqz v1, :cond_e

    const-string v1, ", countrySim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_e
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->v:Ljava/lang/String;

    if-eqz v1, :cond_f

    const-string v1, ", countryNet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_f
    iget-object v1, p0, Lcom/tapjoy/internal/ed;->w:Ljava/lang/String;

    if-eqz v1, :cond_10

    const-string v1, ", imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ed;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_10
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Info{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
