.class public final Lcom/tapjoy/internal/eg;
.super Lcom/tapjoy/internal/dl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/eg$b;,
        Lcom/tapjoy/internal/eg$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/dn;

.field public static final d:Ljava/lang/Integer;

.field public static final e:Ljava/lang/Double;

.field public static final f:Ljava/lang/Integer;

.field public static final g:Ljava/lang/Long;


# instance fields
.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/Integer;

.field public final j:Ljava/lang/Double;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/Integer;

.field public final q:Ljava/lang/Long;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/tapjoy/internal/eg$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/eg$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/eg;->c:Lcom/tapjoy/internal/dn;

    .line 29
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/eg;->d:Ljava/lang/Integer;

    .line 31
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/eg;->e:Ljava/lang/Double;

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/eg;->f:Ljava/lang/Integer;

    .line 45
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/eg;->g:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/hu;)V
    .locals 2

    .prologue
    .line 145
    sget-object v1, Lcom/tapjoy/internal/eg;->c:Lcom/tapjoy/internal/dn;

    move-object/from16 v0, p15

    invoke-direct {p0, v1, v0}, Lcom/tapjoy/internal/dl;-><init>(Lcom/tapjoy/internal/dn;Lcom/tapjoy/internal/hu;)V

    .line 146
    iput-object p1, p0, Lcom/tapjoy/internal/eg;->h:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lcom/tapjoy/internal/eg;->i:Ljava/lang/Integer;

    .line 148
    iput-object p3, p0, Lcom/tapjoy/internal/eg;->j:Ljava/lang/Double;

    .line 149
    iput-object p4, p0, Lcom/tapjoy/internal/eg;->k:Ljava/lang/String;

    .line 150
    iput-object p5, p0, Lcom/tapjoy/internal/eg;->l:Ljava/lang/String;

    .line 151
    iput-object p6, p0, Lcom/tapjoy/internal/eg;->m:Ljava/lang/String;

    .line 152
    iput-object p7, p0, Lcom/tapjoy/internal/eg;->n:Ljava/lang/String;

    .line 153
    iput-object p8, p0, Lcom/tapjoy/internal/eg;->o:Ljava/lang/String;

    .line 154
    iput-object p9, p0, Lcom/tapjoy/internal/eg;->p:Ljava/lang/Integer;

    .line 155
    iput-object p10, p0, Lcom/tapjoy/internal/eg;->q:Ljava/lang/Long;

    .line 156
    iput-object p11, p0, Lcom/tapjoy/internal/eg;->r:Ljava/lang/String;

    .line 157
    iput-object p12, p0, Lcom/tapjoy/internal/eg;->s:Ljava/lang/String;

    .line 158
    iput-object p13, p0, Lcom/tapjoy/internal/eg;->t:Ljava/lang/String;

    .line 159
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/tapjoy/internal/eg;->u:Ljava/lang/String;

    .line 160
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 185
    if-ne p1, p0, :cond_1

    .line 202
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 186
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/tapjoy/internal/eg;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 187
    :cond_2
    check-cast p1, Lcom/tapjoy/internal/eg;

    .line 188
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/tapjoy/internal/eg;->a()Lcom/tapjoy/internal/hu;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tapjoy/internal/eg;->a()Lcom/tapjoy/internal/hu;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/hu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/eg;->h:Ljava/lang/String;

    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->i:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/eg;->i:Ljava/lang/Integer;

    .line 190
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->j:Ljava/lang/Double;

    iget-object v3, p1, Lcom/tapjoy/internal/eg;->j:Ljava/lang/Double;

    .line 191
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/eg;->k:Ljava/lang/String;

    .line 192
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/eg;->l:Ljava/lang/String;

    .line 193
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/eg;->m:Ljava/lang/String;

    .line 194
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/eg;->n:Ljava/lang/String;

    .line 195
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/eg;->o:Ljava/lang/String;

    .line 196
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->p:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/eg;->p:Ljava/lang/Integer;

    .line 197
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->q:Ljava/lang/Long;

    iget-object v3, p1, Lcom/tapjoy/internal/eg;->q:Ljava/lang/Long;

    .line 198
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/eg;->r:Ljava/lang/String;

    .line 199
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/eg;->s:Ljava/lang/String;

    .line 200
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/eg;->t:Ljava/lang/String;

    .line 201
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/eg;->u:Ljava/lang/String;

    .line 202
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

    .line 207
    iget v0, p0, Lcom/tapjoy/internal/dl;->b:I

    .line 208
    if-nez v0, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/tapjoy/internal/eg;->a()Lcom/tapjoy/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/hu;->hashCode()I

    move-result v0

    .line 210
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 211
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 212
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->j:Ljava/lang/Double;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->j:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 213
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->k:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 214
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->l:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 215
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->m:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 216
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->n:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 217
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->o:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 218
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->p:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->p:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 219
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->q:Ljava/lang/Long;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->q:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 220
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->r:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 221
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->s:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 222
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->t:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tapjoy/internal/eg;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 223
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->u:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/eg;->u:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 224
    iput v0, p0, Lcom/tapjoy/internal/dl;->b:I

    .line 226
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 211
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 212
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 213
    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 214
    goto/16 :goto_3

    :cond_6
    move v0, v1

    .line 215
    goto :goto_4

    :cond_7
    move v0, v1

    .line 216
    goto :goto_5

    :cond_8
    move v0, v1

    .line 217
    goto :goto_6

    :cond_9
    move v0, v1

    .line 218
    goto :goto_7

    :cond_a
    move v0, v1

    .line 219
    goto :goto_8

    :cond_b
    move v0, v1

    .line 220
    goto :goto_9

    :cond_c
    move v0, v1

    .line 221
    goto :goto_a

    :cond_d
    move v0, v1

    .line 222
    goto :goto_b
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-object v1, p0, Lcom/tapjoy/internal/eg;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const-string v1, ", productQuantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->i:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/eg;->j:Ljava/lang/Double;

    if-eqz v1, :cond_1

    const-string v1, ", productPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->j:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/eg;->k:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ", productPriceCurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/eg;->l:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ", productType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/eg;->m:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, ", productTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_4
    iget-object v1, p0, Lcom/tapjoy/internal/eg;->n:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, ", productDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_5
    iget-object v1, p0, Lcom/tapjoy/internal/eg;->o:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, ", transactionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_6
    iget-object v1, p0, Lcom/tapjoy/internal/eg;->p:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const-string v1, ", transactionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->p:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    :cond_7
    iget-object v1, p0, Lcom/tapjoy/internal/eg;->q:Ljava/lang/Long;

    if-eqz v1, :cond_8

    const-string v1, ", transactionDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->q:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    :cond_8
    iget-object v1, p0, Lcom/tapjoy/internal/eg;->r:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, ", campaignId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_9
    iget-object v1, p0, Lcom/tapjoy/internal/eg;->s:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v1, ", currencyPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_a
    iget-object v1, p0, Lcom/tapjoy/internal/eg;->t:Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v1, ", receipt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_b
    iget-object v1, p0, Lcom/tapjoy/internal/eg;->u:Ljava/lang/String;

    if-eqz v1, :cond_c

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/eg;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Purchase{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
