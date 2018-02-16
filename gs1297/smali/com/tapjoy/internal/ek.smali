.class public final Lcom/tapjoy/internal/ek;
.super Lcom/tapjoy/internal/dl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ek$b;,
        Lcom/tapjoy/internal/ek$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/dn;

.field public static final d:Ljava/lang/Long;

.field public static final e:Ljava/lang/Integer;

.field public static final f:Ljava/lang/Integer;

.field public static final g:Ljava/lang/Integer;

.field public static final h:Ljava/lang/Long;

.field public static final i:Ljava/lang/Long;

.field public static final j:Ljava/lang/Long;

.field public static final k:Ljava/lang/Integer;

.field public static final l:Ljava/lang/Double;

.field public static final m:Ljava/lang/Long;

.field public static final n:Ljava/lang/Double;

.field public static final o:Ljava/lang/Boolean;

.field public static final p:Ljava/lang/Integer;

.field public static final q:Ljava/lang/Integer;

.field public static final r:Ljava/lang/Boolean;


# instance fields
.field public final A:Ljava/lang/Long;

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/Integer;

.field public final D:Ljava/lang/Double;

.field public final E:Ljava/lang/Long;

.field public final F:Ljava/lang/Double;

.field public final G:Ljava/lang/String;

.field public final H:Ljava/lang/Boolean;

.field public final I:Ljava/lang/String;

.field public final J:Ljava/lang/Integer;

.field public final K:Ljava/lang/Integer;

.field public final L:Ljava/lang/String;

.field public final M:Ljava/lang/String;

.field public final N:Ljava/lang/String;

.field public final O:Ljava/lang/String;

.field public final P:Ljava/lang/String;

.field public final Q:Ljava/util/List;

.field public final R:Ljava/lang/Boolean;

.field public final s:Ljava/lang/Long;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/Integer;

.field public final v:Ljava/lang/Integer;

.field public final w:Ljava/util/List;

.field public final x:Ljava/lang/Integer;

.field public final y:Ljava/lang/Long;

.field public final z:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 25
    new-instance v0, Lcom/tapjoy/internal/ek$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/ek$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ek;->c:Lcom/tapjoy/internal/dn;

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ek;->d:Ljava/lang/Long;

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ek;->e:Ljava/lang/Integer;

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ek;->f:Ljava/lang/Integer;

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ek;->g:Ljava/lang/Integer;

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ek;->h:Ljava/lang/Long;

    .line 41
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ek;->i:Ljava/lang/Long;

    .line 43
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ek;->j:Ljava/lang/Long;

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ek;->k:Ljava/lang/Integer;

    .line 49
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ek;->l:Ljava/lang/Double;

    .line 51
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ek;->m:Ljava/lang/Long;

    .line 53
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ek;->n:Ljava/lang/Double;

    .line 57
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ek;->o:Ljava/lang/Boolean;

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ek;->p:Ljava/lang/Integer;

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ek;->q:Ljava/lang/Integer;

    .line 75
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ek;->r:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/tapjoy/internal/hu;)V
    .locals 2

    .prologue
    .line 240
    sget-object v1, Lcom/tapjoy/internal/ek;->c:Lcom/tapjoy/internal/dn;

    move-object/from16 v0, p27

    invoke-direct {p0, v1, v0}, Lcom/tapjoy/internal/dl;-><init>(Lcom/tapjoy/internal/dn;Lcom/tapjoy/internal/hu;)V

    .line 241
    iput-object p1, p0, Lcom/tapjoy/internal/ek;->s:Ljava/lang/Long;

    .line 242
    iput-object p2, p0, Lcom/tapjoy/internal/ek;->t:Ljava/lang/String;

    .line 243
    iput-object p3, p0, Lcom/tapjoy/internal/ek;->u:Ljava/lang/Integer;

    .line 244
    iput-object p4, p0, Lcom/tapjoy/internal/ek;->v:Ljava/lang/Integer;

    .line 245
    const-string v1, "pushes"

    invoke-static {v1, p5}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/ek;->w:Ljava/util/List;

    .line 246
    iput-object p6, p0, Lcom/tapjoy/internal/ek;->x:Ljava/lang/Integer;

    .line 247
    iput-object p7, p0, Lcom/tapjoy/internal/ek;->y:Ljava/lang/Long;

    .line 248
    iput-object p8, p0, Lcom/tapjoy/internal/ek;->z:Ljava/lang/Long;

    .line 249
    iput-object p9, p0, Lcom/tapjoy/internal/ek;->A:Ljava/lang/Long;

    .line 250
    iput-object p10, p0, Lcom/tapjoy/internal/ek;->B:Ljava/lang/String;

    .line 251
    iput-object p11, p0, Lcom/tapjoy/internal/ek;->C:Ljava/lang/Integer;

    .line 252
    iput-object p12, p0, Lcom/tapjoy/internal/ek;->D:Ljava/lang/Double;

    .line 253
    iput-object p13, p0, Lcom/tapjoy/internal/ek;->E:Ljava/lang/Long;

    .line 254
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/tapjoy/internal/ek;->F:Ljava/lang/Double;

    .line 255
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/tapjoy/internal/ek;->G:Ljava/lang/String;

    .line 256
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/tapjoy/internal/ek;->H:Ljava/lang/Boolean;

    .line 257
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/tapjoy/internal/ek;->I:Ljava/lang/String;

    .line 258
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/tapjoy/internal/ek;->J:Ljava/lang/Integer;

    .line 259
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/tapjoy/internal/ek;->K:Ljava/lang/Integer;

    .line 260
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/tapjoy/internal/ek;->L:Ljava/lang/String;

    .line 261
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/tapjoy/internal/ek;->M:Ljava/lang/String;

    .line 262
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/tapjoy/internal/ek;->N:Ljava/lang/String;

    .line 263
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/tapjoy/internal/ek;->O:Ljava/lang/String;

    .line 264
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/tapjoy/internal/ek;->P:Ljava/lang/String;

    .line 265
    const-string v1, "tags"

    move-object/from16 v0, p25

    invoke-static {v1, v0}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/ek;->Q:Ljava/util/List;

    .line 266
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/tapjoy/internal/ek;->R:Ljava/lang/Boolean;

    .line 267
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 304
    if-ne p1, p0, :cond_1

    .line 333
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 305
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/tapjoy/internal/ek;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 306
    :cond_2
    check-cast p1, Lcom/tapjoy/internal/ek;

    .line 307
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/hu;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/hu;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/hu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->s:Ljava/lang/Long;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->s:Ljava/lang/Long;

    .line 308
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->t:Ljava/lang/String;

    .line 309
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->u:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->u:Ljava/lang/Integer;

    .line 310
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->v:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->v:Ljava/lang/Integer;

    .line 311
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->w:Ljava/util/List;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->w:Ljava/util/List;

    .line 312
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->x:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->x:Ljava/lang/Integer;

    .line 313
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->y:Ljava/lang/Long;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->y:Ljava/lang/Long;

    .line 314
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->z:Ljava/lang/Long;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->z:Ljava/lang/Long;

    .line 315
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->A:Ljava/lang/Long;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->A:Ljava/lang/Long;

    .line 316
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->B:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->B:Ljava/lang/String;

    .line 317
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->C:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->C:Ljava/lang/Integer;

    .line 318
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->D:Ljava/lang/Double;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->D:Ljava/lang/Double;

    .line 319
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->E:Ljava/lang/Long;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->E:Ljava/lang/Long;

    .line 320
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->F:Ljava/lang/Double;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->F:Ljava/lang/Double;

    .line 321
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->G:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->G:Ljava/lang/String;

    .line 322
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->H:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->H:Ljava/lang/Boolean;

    .line 323
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->I:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->I:Ljava/lang/String;

    .line 324
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->J:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->J:Ljava/lang/Integer;

    .line 325
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->K:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->K:Ljava/lang/Integer;

    .line 326
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->L:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->L:Ljava/lang/String;

    .line 327
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->M:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->M:Ljava/lang/String;

    .line 328
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->N:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->N:Ljava/lang/String;

    .line 329
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->O:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->O:Ljava/lang/String;

    .line 330
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->P:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->P:Ljava/lang/String;

    .line 331
    invoke-static {v2, v3}, Lcom/tapjoy/internal/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->Q:Ljava/util/List;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->Q:Ljava/util/List;

    .line 332
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->R:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/tapjoy/internal/ek;->R:Ljava/lang/Boolean;

    .line 333
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

    .line 338
    iget v0, p0, Lcom/tapjoy/internal/dl;->b:I

    .line 339
    if-nez v0, :cond_1

    .line 340
    invoke-virtual {p0}, Lcom/tapjoy/internal/ek;->a()Lcom/tapjoy/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/hu;->hashCode()I

    move-result v0

    .line 341
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->s:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->s:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 342
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->t:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 343
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->u:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->u:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 344
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->v:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 345
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 346
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->x:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->x:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 347
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->y:Ljava/lang/Long;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->y:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 348
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->z:Ljava/lang/Long;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->z:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 349
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->A:Ljava/lang/Long;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->A:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 350
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->B:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->B:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 351
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->C:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->C:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 352
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->D:Ljava/lang/Double;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->D:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 353
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->E:Ljava/lang/Long;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->E:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 354
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->F:Ljava/lang/Double;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->F:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    .line 355
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->G:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->G:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    .line 356
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->H:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->H:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v2

    .line 357
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->I:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v2

    .line 358
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->J:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->J:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v2

    .line 359
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->K:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->K:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v2

    .line 360
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->L:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->L:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v0, v2

    .line 361
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->M:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->M:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_13
    add-int/2addr v0, v2

    .line 362
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->N:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->N:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_14
    add-int/2addr v0, v2

    .line 363
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->O:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->O:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_15
    add-int/2addr v0, v2

    .line 364
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->P:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/tapjoy/internal/ek;->P:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_16
    add-int/2addr v0, v2

    .line 365
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->Q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 366
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->R:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/ek;->R:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 367
    iput v0, p0, Lcom/tapjoy/internal/dl;->b:I

    .line 369
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 341
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 342
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 343
    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 344
    goto/16 :goto_3

    :cond_6
    move v0, v1

    .line 346
    goto/16 :goto_4

    :cond_7
    move v0, v1

    .line 347
    goto/16 :goto_5

    :cond_8
    move v0, v1

    .line 348
    goto/16 :goto_6

    :cond_9
    move v0, v1

    .line 349
    goto/16 :goto_7

    :cond_a
    move v0, v1

    .line 350
    goto/16 :goto_8

    :cond_b
    move v0, v1

    .line 351
    goto/16 :goto_9

    :cond_c
    move v0, v1

    .line 352
    goto/16 :goto_a

    :cond_d
    move v0, v1

    .line 353
    goto/16 :goto_b

    :cond_e
    move v0, v1

    .line 354
    goto/16 :goto_c

    :cond_f
    move v0, v1

    .line 355
    goto/16 :goto_d

    :cond_10
    move v0, v1

    .line 356
    goto/16 :goto_e

    :cond_11
    move v0, v1

    .line 357
    goto/16 :goto_f

    :cond_12
    move v0, v1

    .line 358
    goto/16 :goto_10

    :cond_13
    move v0, v1

    .line 359
    goto/16 :goto_11

    :cond_14
    move v0, v1

    .line 360
    goto/16 :goto_12

    :cond_15
    move v0, v1

    .line 361
    goto :goto_13

    :cond_16
    move v0, v1

    .line 362
    goto :goto_14

    :cond_17
    move v0, v1

    .line 363
    goto :goto_15

    :cond_18
    move v0, v1

    .line 364
    goto :goto_16
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->s:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const-string v1, ", installed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->s:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->t:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->u:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const-string v1, ", fq7="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->u:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 378
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->v:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const-string v1, ", fq30="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->v:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 379
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ", pushes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->w:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 380
    :cond_4
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->x:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const-string v1, ", sessionTotalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->x:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 381
    :cond_5
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->y:Ljava/lang/Long;

    if-eqz v1, :cond_6

    const-string v1, ", sessionTotalDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->y:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    :cond_6
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->z:Ljava/lang/Long;

    if-eqz v1, :cond_7

    const-string v1, ", sessionLastTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->z:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 383
    :cond_7
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->A:Ljava/lang/Long;

    if-eqz v1, :cond_8

    const-string v1, ", sessionLastDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->A:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    :cond_8
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->B:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, ", purchaseCurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_9
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->C:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    const-string v1, ", purchaseTotalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->C:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    :cond_a
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->D:Ljava/lang/Double;

    if-eqz v1, :cond_b

    const-string v1, ", purchaseTotalPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->D:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 387
    :cond_b
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->E:Ljava/lang/Long;

    if-eqz v1, :cond_c

    const-string v1, ", purchaseLastTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->E:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 388
    :cond_c
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->F:Ljava/lang/Double;

    if-eqz v1, :cond_d

    const-string v1, ", purchaseLastPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->F:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 389
    :cond_d
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->G:Ljava/lang/String;

    if-eqz v1, :cond_e

    const-string v1, ", idfa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_e
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->H:Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    const-string v1, ", idfaOptout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->H:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 391
    :cond_f
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->I:Ljava/lang/String;

    if-eqz v1, :cond_10

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_10
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->J:Ljava/lang/Integer;

    if-eqz v1, :cond_11

    const-string v1, ", userLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->J:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 393
    :cond_11
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->K:Ljava/lang/Integer;

    if-eqz v1, :cond_12

    const-string v1, ", friendCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->K:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    :cond_12
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->L:Ljava/lang/String;

    if-eqz v1, :cond_13

    const-string v1, ", uv1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->L:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_13
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->M:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ", uv2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->M:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_14
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->N:Ljava/lang/String;

    if-eqz v1, :cond_15

    const-string v1, ", uv3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->N:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_15
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->O:Ljava/lang/String;

    if-eqz v1, :cond_16

    const-string v1, ", uv4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->O:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :cond_16
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->P:Ljava/lang/String;

    if-eqz v1, :cond_17

    const-string v1, ", uv5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->P:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_17
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->Q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->Q:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 400
    :cond_18
    iget-object v1, p0, Lcom/tapjoy/internal/ek;->R:Ljava/lang/Boolean;

    if-eqz v1, :cond_19

    const-string v1, ", pushOptout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ek;->R:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 401
    :cond_19
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "User{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
