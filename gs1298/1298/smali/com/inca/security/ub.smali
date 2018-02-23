.class public Lcom/inca/security/ub;
.super Ljava/lang/Thread;
.source "tb" #;


# instance fields
.field private synthetic IIIIiiIiII:Lcom/inca/security/tb;

.field private synthetic IIIiiIIiii:I

.field private synthetic IIIiiiiIII:Ljava/util/ArrayList;

.field private synthetic IIiIIIIIii:F

.field private synthetic IIiIIIIiIi:Ljava/util/Queue;

.field private synthetic IIiIiIIIii:I

.field private synthetic IIiiIIIiIi:I

.field private synthetic IIiiIiIIii:I

.field private synthetic IIiiiIIiII:Ljava/util/ArrayList;

.field private synthetic IiIIIiIIIi:I

.field private synthetic IiIiIIIiIi:Ljava/util/Queue;

.field private synthetic IiIiIiiIii:I

.field private synthetic IiiIiiiIiI:I

.field public synthetic IiiiIIIiIi:Z

.field private final synthetic IiiiIIiIII:I

.field private synthetic IiiiiIiiIi:Ljava/util/ArrayList;

.field public synthetic iIIIiiIIIi:Z

.field private synthetic iiIIIIIiiI:I

.field private final synthetic iiIIIiiiiI:I

.field private synthetic iiIIiIIiII:Ljava/util/ArrayList;

.field private synthetic iiIIiIiIii:I

.field private synthetic iiIiIIIiiI:I

.field public synthetic iiIiiIIIii:Z

.field private final synthetic iiiIIIIiII:I

.field private synthetic iiiIiIIIII:Landroid/os/Handler;

.field private final synthetic iiiIiiiiII:I

.field private synthetic iiiiIIIiii:Ljava/util/Queue;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 25
    .param p1, "arg0"    # Landroid/os/Handler;

    .prologue
    .line 48
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, -0x40000000    # -2.0f

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x20

    const/16 v17, 0x0

    const/high16 v18, -0x80000000

    const v19, 0x7fffffff

    const/16 v20, 0x0

    const/16 v21, 0x5

    const/16 v22, 0x258

    const/16 v23, 0x8

    const/16 v24, 0x5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Thread;-><init>()V

    .line 30
    new-instance v2, Lcom/inca/security/tb;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-direct/range {v2 .. v8}, Lcom/inca/security/tb;-><init>(IFFFFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/inca/security/ub;->IIIIiiIiII:Lcom/inca/security/tb;

    .line 87
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/inca/security/ub;->iiiiIIIiii:Ljava/util/Queue;

    .line 165
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/inca/security/ub;->IIiIIIIiIi:Ljava/util/Queue;

    .line 124
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/inca/security/ub;->IiIiIIIiIi:Ljava/util/Queue;

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/inca/security/ub;->IIiiiIIiII:Ljava/util/ArrayList;

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/inca/security/ub;->IIIiiiiIII:Ljava/util/ArrayList;

    .line 46
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/inca/security/ub;->iiiIiiiiII:I

    .line 44
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/inca/security/ub;->IiiiIIiIII:I

    .line 106
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/inca/security/ub;->iiiIIIIiII:I

    .line 181
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/inca/security/ub;->iiIIIiiiiI:I

    .line 67
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/inca/security/ub;->iiIIiIiIii:I

    .line 96
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/inca/security/ub;->IiIIIiIIIi:I

    .line 161
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/inca/security/ub;->iiIiIIIiiI:I

    .line 58
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/inca/security/ub;->IiIiIiiIii:I

    .line 117
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/inca/security/ub;->IIiiIIIiIi:I

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/inca/security/ub;->iiIIiIIiII:Ljava/util/ArrayList;

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/inca/security/ub;->IiiiiIiiIi:Ljava/util/ArrayList;

    .line 180
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/inca/security/ub;->IIiIiIIIii:I

    .line 146
    move-object/from16 v0, p0

    iput v15, v0, Lcom/inca/security/ub;->iiIIIIIiiI:I

    .line 123
    move-object/from16 v0, p0

    iput v14, v0, Lcom/inca/security/ub;->IIiiIiIIii:I

    .line 179
    move-object/from16 v0, p0

    iput v14, v0, Lcom/inca/security/ub;->IiiIiiiIiI:I

    .line 81
    move-object/from16 v0, p0

    iput v13, v0, Lcom/inca/security/ub;->IIIiiIIiii:I

    .line 168
    move-object/from16 v0, p0

    iput v12, v0, Lcom/inca/security/ub;->IIiIIIIIii:F

    .line 16
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/inca/security/ub;->iiiIiIIIII:Landroid/os/Handler;

    .line 112
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/inca/security/ub;->iIIIiiIIIi:Z

    .line 176
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/inca/security/ub;->IiiiIIIiIi:Z

    .line 115
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/inca/security/ub;->iiIiiIIIii:Z

    .line 205
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inca/security/ub;->iiiIiIIIII:Landroid/os/Handler;

    .line 153
    return-void
.end method

.method public static IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v2, v0, [C

    const/4 v3, 0x1

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v4, v1, -0x1

    xor-int/lit8 v0, v0, 0x34

    int-to-char v0, v0

    aput-char v0, v2, v1

    if-ltz v4, :cond_0

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    xor-int/2addr v1, v3

    int-to-char v1, v1

    aput-char v1, v2, v4

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private synthetic IiiiIIIIii(FFD)Z
    .locals 3
    .param p1, "arg0"    # F
    .param p2, "arg1"    # F
    .param p3, "arg2"    # D

    .prologue
    .line 403
    sub-float v0, p1, p2

    .line 247
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v1

    .line 290
    :cond_0
    float-to-double v0, v0

    cmpl-double v0, v0, p3

    if-lez v0, :cond_1

    .line 301
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 235
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public IIiIIiIiIi()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inca/security/ub;->IiiiIIIiIi:Z

    .line 305
    invoke-virtual {p0}, Lcom/inca/security/ub;->iIiIIiIIIi()V

    .line 452
    invoke-virtual {p0}, Lcom/inca/security/ub;->interrupt()V

    .line 436
    invoke-virtual {p0}, Lcom/inca/security/ub;->join()V

    .line 491
    return-void
.end method

.method public IiiiIIIIii()V
    .locals 1

    .prologue
    .line 346
    monitor-enter p0

    .line 295
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/inca/security/ub;->iIIIiiIIIi:Z

    .line 451
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public IiiiIIIIii(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 395
    iput p1, p0, Lcom/inca/security/ub;->IIiIiIIIii:I

    .line 227
    return-void
.end method

.method public IiiiIIIIii(Landroid/os/Handler;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Handler;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/inca/security/ub;->iiiIiIIIII:Landroid/os/Handler;

    .line 307
    return-void
.end method

.method public IiiiIIIIii(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/inca/security/ub;->iiIiiIIIii:Z

    if-eqz v0, :cond_0

    .line 411
    iget-object v7, p0, Lcom/inca/security/ub;->iiiiIIIiii:Ljava/util/Queue;

    monitor-enter v7

    .line 461
    :try_start_0
    iget-object v8, p0, Lcom/inca/security/ub;->iiiiIIIiii:Ljava/util/Queue;

    new-instance v0, Lcom/inca/security/tb;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-int v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/inca/security/tb;-><init>(IFFFFI)V

    invoke-interface {v8, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 375
    monitor-exit v7

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iIiIIiIIIi()V
    .locals 1

    .prologue
    .line 238
    monitor-enter p0

    .line 492
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/inca/security/ub;->iIIIiiIIIi:Z

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 283
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 16

    .prologue
    .line 78
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/inca/security/ub;->iiIiiIIIii:Z

    .line 152
    .end local p0    # "this":Lcom/inca/security/ub;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/inca/security/ub;->IiiiIIIiIi:Z

    if-nez v2, :cond_4

    .line 119
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->iiiiIIIiii:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/ub;->iiiiIIIiii:Ljava/util/Queue;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->iiiiIIIiii:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/inca/security/tb;

    move-object v10, v0

    .line 32
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    invoke-virtual {v10}, Lcom/inca/security/tb;->IiiiIIIIii()I

    move-result v2

    if-nez v2, :cond_5

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IIIIiiIiII:Lcom/inca/security/tb;

    invoke-virtual {v2}, Lcom/inca/security/tb;->IiiiIIIIii()I

    move-result v2

    invoke-virtual {v10}, Lcom/inca/security/tb;->IiiiIIIIii()I

    move-result v3

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IIIIiiIiII:Lcom/inca/security/tb;

    .line 199
    invoke-virtual {v2}, Lcom/inca/security/tb;->iIiIIiIIIi()F

    move-result v2

    invoke-virtual {v10}, Lcom/inca/security/tb;->iIiIIiIIIi()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IIIIiiIiII:Lcom/inca/security/tb;

    .line 8
    invoke-virtual {v2}, Lcom/inca/security/tb;->IIiIIiIiIi()F

    move-result v2

    invoke-virtual {v10}, Lcom/inca/security/tb;->IIiIIiIiIi()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IIIIiiIiII:Lcom/inca/security/tb;

    .line 159
    invoke-virtual {v2}, Lcom/inca/security/tb;->IiIiiIiiII()F

    move-result v2

    invoke-virtual {v10}, Lcom/inca/security/tb;->IiIiiIiiII()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IIIIiiIiII:Lcom/inca/security/tb;

    .line 50
    invoke-virtual {v2}, Lcom/inca/security/tb;->IiiiIIIIii()F

    move-result v2

    invoke-virtual {v10}, Lcom/inca/security/tb;->IiiiIIIIii()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 126
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IIiIIIIiIi:Ljava/util/Queue;

    invoke-interface {v2, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_2
    new-instance v2, Lcom/inca/security/tb;

    invoke-virtual {v10}, Lcom/inca/security/tb;->IiiiIIIIii()I

    move-result v3

    invoke-virtual {v10}, Lcom/inca/security/tb;->iIiIIiIIIi()F

    move-result v4

    invoke-virtual {v10}, Lcom/inca/security/tb;->IIiIIiIiIi()F

    move-result v5

    invoke-virtual {v10}, Lcom/inca/security/tb;->IiIiiIiiII()F

    move-result v6

    invoke-virtual {v10}, Lcom/inca/security/tb;->IiiiIIIIii()F

    move-result v7

    invoke-virtual {v10}, Lcom/inca/security/tb;->iIiIIiIIIi()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/inca/security/tb;-><init>(IFFFFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/inca/security/ub;->IIIIiiIiII:Lcom/inca/security/tb;

    move-object/from16 v9, p0

    .line 133
    .local v9, "this":Lcom/inca/security/ub;
    :goto_2
    invoke-virtual {v10}, Lcom/inca/security/tb;->IiiiIIIIii()I

    move-result v2

    iput v2, v9, Lcom/inca/security/ub;->IIIiiIIiii:I

    .line 163
    invoke-virtual {v10}, Lcom/inca/security/tb;->iIiIIiIIIi()I

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->iiIIiIIiII:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IiiiiIiiIi:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->IiIIIiIIIi:I

    invoke-virtual {v10}, Lcom/inca/security/tb;->iIiIIiIIIi()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/inca/security/ub;->IiIIIiIIIi:I

    .line 68
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->iiIiIIIiiI:I

    invoke-virtual {v10}, Lcom/inca/security/tb;->iIiIIiIIIi()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/inca/security/ub;->iiIiIIIiiI:I

    .line 15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->IiIiIiiIii:I

    invoke-virtual {v10}, Lcom/inca/security/tb;->iIiIIiIIIi()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/inca/security/ub;->IiIiIiiIii:I

    .line 108
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->iiIIiIiIii:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/inca/security/ub;->iiIIiIiIii:I

    .line 125
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->iiIIiIiIii:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 194
    const/4 v2, 0x0

    .line 202
    move-object/from16 v0, p0

    iget v3, v0, Lcom/inca/security/ub;->IiIIIiIIIi:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/ub;->iiIiIIIiiI:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/inca/security/ub;->IiIIIiIIIi:I

    .line 103
    move-object/from16 v0, p0

    iget v3, v0, Lcom/inca/security/ub;->IiIIIiIIIi:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/ub;->IiIiIiiIii:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/inca/security/ub;->IiIIIiIIIi:I

    .line 13
    move-object/from16 v0, p0

    iget v3, v0, Lcom/inca/security/ub;->IiIIIiIIIi:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/ub;->iiIIiIiIii:I

    add-int/lit8 v4, v4, -0x2

    div-int v4, v3, v4

    .line 59
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/ub;->iiIIiIIiII:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :cond_3
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inca/security/tb;

    .line 167
    invoke-virtual {v2}, Lcom/inca/security/tb;->iIiIIiIIIi()I

    move-result v2

    sub-int v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    const/4 v6, 0x5

    if-ge v2, v6, :cond_3

    .line 69
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .line 60
    goto :goto_3

    .line 32
    .end local v9    # "this":Lcom/inca/security/ub;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 442
    :catch_0
    move-exception v2

    .line 372
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/inca/security/ub;->iiIiiIIIii:Z

    .line 394
    :goto_4
    return-void

    .line 85
    :cond_5
    :try_start_5
    invoke-virtual {v10}, Lcom/inca/security/tb;->IiiiIIIIii()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->IIIiiIIiii:I

    if-nez v2, :cond_7

    .line 100
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->IIiIIIIIii:F

    float-to-double v2, v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_6

    .line 33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IiIiIIIiIi:Ljava/util/Queue;

    invoke-virtual {v10}, Lcom/inca/security/tb;->iIiIIiIIIi()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, p0

    .restart local v9    # "this":Lcom/inca/security/ub;
    goto/16 :goto_2

    .line 188
    .end local v9    # "this":Lcom/inca/security/ub;
    :cond_6
    invoke-virtual {v10}, Lcom/inca/security/tb;->iIiIIiIIIi()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_7

    .line 86
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/inca/security/ub;->IIiIIIIIii:F

    :cond_7
    move-object/from16 v9, p0

    .line 133
    .restart local v9    # "this":Lcom/inca/security/ub;
    goto/16 :goto_2

    .line 109
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->iiIIiIiIii:I

    add-int/lit8 v2, v2, -0x2

    if-lt v3, v2, :cond_a

    .line 10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->IIiiIIIiIi:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/inca/security/ub;->IIiiIIIiIi:I

    move-object/from16 v9, p0

    .line 145
    :goto_5
    const/4 v2, 0x0

    iput v2, v9, Lcom/inca/security/ub;->iiIIiIiIii:I

    .line 82
    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/inca/security/ub;->IiIIIiIIIi:I

    .line 20
    move-object/from16 v0, p0

    iput v3, v0, Lcom/inca/security/ub;->iiIiIIIiiI:I

    .line 93
    move-object/from16 v0, p0

    iput v2, v0, Lcom/inca/security/ub;->IiIiIiiIii:I

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->iiIIiIIiII:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 70
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->IIiiIIIiIi:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IIiiiIIiII:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x258

    if-le v2, v3, :cond_b

    .line 28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IIiiiIIiII:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit16 v4, v2, -0x258

    move-object/from16 v9, p0

    .line 1
    :goto_6
    iget-object v2, v9, Lcom/inca/security/ub;->IIiiiIIiII:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v6, v2, v4

    .line 79
    if-eqz v6, :cond_0

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IiiiiIiiIi:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inca/security/tb;

    .line 11
    invoke-virtual {v2}, Lcom/inca/security/tb;->iIiIIiIIIi()F

    move-result v8

    .line 9
    invoke-virtual {v2}, Lcom/inca/security/tb;->IIiIIiIiIi()F

    move-result v10

    .line 102
    invoke-virtual {v2}, Lcom/inca/security/tb;->IiiiIIIIii()F

    move-result v11

    .line 76
    invoke-virtual {v2}, Lcom/inca/security/tb;->IiIiiIiiII()F

    move-result v12

    .line 29
    const/4 v3, 0x0

    move v2, v4

    move v5, v4

    .line 24
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/inca/security/ub;->IIiiiIIiII:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v2, v13, :cond_c

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IIiiiIIiII:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inca/security/tb;

    invoke-virtual {v2}, Lcom/inca/security/tb;->iIiIIiIIIi()F

    move-result v2

    cmpl-float v2, v8, v2

    if-nez v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IIiiiIIiII:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inca/security/tb;

    invoke-virtual {v2}, Lcom/inca/security/tb;->IIiIIiIiIi()F

    move-result v2

    cmpl-float v2, v10, v2

    if-nez v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IIiiiIIiII:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inca/security/tb;

    invoke-virtual {v2}, Lcom/inca/security/tb;->IiiiIIIIii()F

    move-result v2

    cmpl-float v2, v11, v2

    if-nez v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IIiiiIIiII:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inca/security/tb;

    invoke-virtual {v2}, Lcom/inca/security/tb;->IiIiiIiiII()F

    move-result v2

    cmpl-float v2, v12, v2

    if-nez v2, :cond_20

    .line 41
    add-int/lit8 v2, v3, 0x1

    .line 24
    :goto_9
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v15, v3

    move v3, v2

    move v2, v15

    goto :goto_8

    .line 47
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/inca/security/ub;->IIiiIIIiIi:I

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IiiiiIiiIi:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v9, p0

    goto/16 :goto_5

    .line 200
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v9, p0

    .line 1
    goto/16 :goto_6

    .line 17
    :cond_c
    mul-int/lit8 v2, v3, 0x64

    div-int/2addr v2, v6

    const/4 v5, 0x5

    if-le v2, v5, :cond_9

    .line 35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->iiiIiIIIII:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/ub;->iiiIiIIIII:Landroid/os/Handler;

    const/4 v8, 0x2

    const/16 v10, 0x1c

    const-string v11, "\u001c\r<\u0015-?<\u0015*\u0012-\u0002c^?^|" #EventDensity:%f%%

    invoke-static {v11}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    mul-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    int-to-float v14, v6

    div-float/2addr v3, v14

    .line 73
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 38
    invoke-virtual {v5, v8, v8, v10, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto/16 :goto_7

    .line 148
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/ub;->IiiiiIiiIi:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 113
    move-object/from16 v0, p0

    iput v2, v0, Lcom/inca/security/ub;->IIiiIIIiIi:I

    goto/16 :goto_1

    .line 187
    .end local v9    # "this":Lcom/inca/security/ub;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IIiIIIIiIi:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_18

    :cond_f
    :goto_a
    move-object/from16 v9, p0

    .line 71
    .restart local v9    # "this":Lcom/inca/security/ub;
    :goto_b
    iget-object v2, v9, Lcom/inca/security/ub;->IIiIIIIiIi:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_18

    .line 18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IIiIIIIiIi:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/inca/security/tb;

    move-object v10, v0

    .line 150
    if-eqz v10, :cond_f

    .line 171
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/inca/security/ub;->IIiiiIIiII:Ljava/util/ArrayList;

    new-instance v2, Lcom/inca/security/tb;

    invoke-virtual {v10}, Lcom/inca/security/tb;->IiiiIIIIii()I

    move-result v3

    invoke-virtual {v10}, Lcom/inca/security/tb;->iIiIIiIIIi()F

    move-result v4

    invoke-virtual {v10}, Lcom/inca/security/tb;->IIiIIiIiIi()F

    move-result v5

    invoke-virtual {v10}, Lcom/inca/security/tb;->IiIiiIiiII()F

    move-result v6

    invoke-virtual {v10}, Lcom/inca/security/tb;->IiiiIIIIii()F

    move-result v7

    invoke-virtual {v10}, Lcom/inca/security/tb;->iIiIIiIIIi()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/inca/security/tb;-><init>(IFFFFI)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->IiiIiiiIiI:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    .line 51
    const/4 v2, 0x0

    move v3, v2

    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/ub;->IIiiiIIiII:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_f

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IIiiiIIiII:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inca/security/tb;

    .line 121
    invoke-virtual {v2}, Lcom/inca/security/tb;->IiiiIIIIii()I

    move-result v4

    invoke-virtual {v10}, Lcom/inca/security/tb;->IiiiIIIIii()I

    move-result v5

    if-ne v4, v5, :cond_10

    invoke-virtual {v2}, Lcom/inca/security/tb;->iIiIIiIIIi()F

    move-result v4

    invoke-virtual {v10}, Lcom/inca/security/tb;->iIiIIiIIIi()F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_10

    invoke-virtual {v2}, Lcom/inca/security/tb;->IIiIIiIiIi()F

    move-result v4

    invoke-virtual {v10}, Lcom/inca/security/tb;->IIiIIiIiIi()F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_10

    .line 37
    invoke-virtual {v2}, Lcom/inca/security/tb;->IiIiiIiiII()F

    move-result v4

    invoke-virtual {v10}, Lcom/inca/security/tb;->IiIiiIiiII()F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_10

    invoke-virtual {v2}, Lcom/inca/security/tb;->IiiiIIIIii()F

    move-result v4

    invoke-virtual {v10}, Lcom/inca/security/tb;->IiiiIIIIii()F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_10

    .line 111
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inca/security/ub;->IIIiiiiIII:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->iiIIIIIiiI:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/inca/security/ub;->iiIIIIIiiI:I

    .line 129
    move-object/from16 v0, p0

    iput v3, v0, Lcom/inca/security/ub;->IiiIiiiIiI:I

    .line 122
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->IIiiIiIIii:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    .line 177
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->IiiIiiiIiI:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/inca/security/ub;->IIiiIiIIii:I

    goto/16 :goto_a

    .line 51
    :cond_10
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_c

    .line 57
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IIiiiIIiII:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/inca/security/ub;->IiiIiiiIiI:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inca/security/tb;

    .line 75
    move-object/from16 v0, p0

    iget v3, v0, Lcom/inca/security/ub;->iiIIIIIiiI:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/ub;->IIiIiIIIii:I

    if-ge v3, v4, :cond_12

    invoke-virtual {v2}, Lcom/inca/security/tb;->IiiiIIIIii()I

    move-result v3

    invoke-virtual {v10}, Lcom/inca/security/tb;->IiiiIIIIii()I

    move-result v4

    if-ne v3, v4, :cond_12

    invoke-virtual {v2}, Lcom/inca/security/tb;->iIiIIiIIIi()F

    move-result v3

    invoke-virtual {v10}, Lcom/inca/security/tb;->iIiIIiIIIi()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_12

    invoke-virtual {v2}, Lcom/inca/security/tb;->IIiIIiIiIi()F

    move-result v3

    invoke-virtual {v10}, Lcom/inca/security/tb;->IIiIIiIiIi()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_12

    .line 90
    invoke-virtual {v2}, Lcom/inca/security/tb;->IiIiiIiiII()F

    move-result v3

    invoke-virtual {v10}, Lcom/inca/security/tb;->IiIiiIiiII()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_12

    invoke-virtual {v2}, Lcom/inca/security/tb;->IiiiIIIIii()F

    move-result v3

    invoke-virtual {v10}, Lcom/inca/security/tb;->IiiiIIIIii()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_12

    .line 74
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/ub;->IIIiiiiIII:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->iiIIIIIiiI:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/inca/security/ub;->iiIIIIIiiI:I

    .line 84
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->IiiIiiiIiI:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/inca/security/ub;->IiiIiiiIiI:I

    goto/16 :goto_a

    .line 169
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->iiIIIIIiiI:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/inca/security/ub;->IIiIiIIIii:I

    if-lt v2, v3, :cond_14

    .line 53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->iiiIiIIIII:Landroid/os/Handler;

    if-eqz v2, :cond_17

    .line 43
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 203
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->IIiiIiIIii:I

    move v3, v2

    :goto_d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/inca/security/ub;->IIiiIiIIii:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/inca/security/ub;->iiIIIIIiiI:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_13

    .line 149
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inca/security/ub;->IIiiiIIiII:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v2

    .line 203
    goto :goto_d

    .line 62
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->iiiIiIIIII:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/ub;->iiiIiIIIII:Landroid/os/Handler;

    const/4 v4, 0x2

    const/16 v5, 0x1c

    new-instance v6, Ljava/lang/String;

    const-string v7, "qwQo@SQqQ`@" #EventRepeat

    invoke-static {v7}, Lcom/inca/security/ub;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 315
    invoke-virtual {v3, v4, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 62
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-object/from16 v9, p0

    .line 328
    :goto_e
    iget-object v2, v9, Lcom/inca/security/ub;->IIIiiiiIII:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 322
    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/inca/security/ub;->iiIIIIIiiI:I

    .line 299
    move-object/from16 v0, p0

    iput v3, v0, Lcom/inca/security/ub;->IIiiIiIIii:I

    .line 264
    move-object/from16 v0, p0

    iput v2, v0, Lcom/inca/security/ub;->IiiIiiiIiI:I

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IIiiiIIiII:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xbb8

    if-le v2, v3, :cond_f

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IIiiiIIiII:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit16 v2, v2, -0xbb8

    add-int/lit16 v4, v2, 0x3e8

    .line 251
    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v2, v4, :cond_f

    .line 459
    add-int/lit8 v2, v3, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/ub;->IIiiiIIiII:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v3, v2

    .line 251
    goto :goto_f

    .line 271
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IIIiiiiIII:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_17

    .line 361
    const/4 v4, 0x0

    .line 231
    const/4 v3, 0x0

    .line 216
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->IiiIiiiIiI:I

    move v5, v2

    move v6, v3

    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/ub;->IIiiiIIiII:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_16

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IIiiiIIiII:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inca/security/tb;

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/ub;->IIIiiiiIII:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inca/security/tb;

    .line 391
    invoke-virtual {v2}, Lcom/inca/security/tb;->IiiiIIIIii()I

    move-result v7

    invoke-virtual {v3}, Lcom/inca/security/tb;->IiiiIIIIii()I

    move-result v8

    if-ne v7, v8, :cond_15

    invoke-virtual {v2}, Lcom/inca/security/tb;->iIiIIiIIIi()F

    move-result v7

    invoke-virtual {v3}, Lcom/inca/security/tb;->iIiIIiIIIi()F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_15

    invoke-virtual {v2}, Lcom/inca/security/tb;->IIiIIiIiIi()F

    move-result v7

    invoke-virtual {v3}, Lcom/inca/security/tb;->IIiIIiIiIi()F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_15

    .line 483
    invoke-virtual {v2}, Lcom/inca/security/tb;->IiIiiIiiII()F

    move-result v7

    invoke-virtual {v3}, Lcom/inca/security/tb;->IiIiiIiiII()F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_15

    invoke-virtual {v2}, Lcom/inca/security/tb;->IiiiIIIIii()F

    move-result v7

    invoke-virtual {v3}, Lcom/inca/security/tb;->IiiiIIIIii()F

    move-result v3

    cmpl-float v3, v7, v3

    if-nez v3, :cond_15

    .line 286
    add-int/lit8 v3, v6, 0x1

    .line 300
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inca/security/ub;->IIIiiiiIII:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v3, v6, :cond_1f

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/ub;->IIiiiIIiII:Ljava/util/ArrayList;

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inca/security/tb;

    .line 310
    invoke-virtual {v2}, Lcom/inca/security/tb;->iIiIIiIIIi()F

    move-result v3

    invoke-virtual {v10}, Lcom/inca/security/tb;->iIiIIiIIIi()F

    move-result v6

    cmpl-float v3, v3, v6

    if-nez v3, :cond_16

    invoke-virtual {v2}, Lcom/inca/security/tb;->IIiIIiIiIi()F

    move-result v3

    invoke-virtual {v10}, Lcom/inca/security/tb;->IIiIIiIiIi()F

    move-result v6

    cmpl-float v3, v3, v6

    if-nez v3, :cond_16

    .line 335
    invoke-virtual {v2}, Lcom/inca/security/tb;->IiIiiIiiII()F

    move-result v3

    invoke-virtual {v10}, Lcom/inca/security/tb;->IiIiiIiiII()F

    move-result v6

    cmpl-float v3, v3, v6

    if-nez v3, :cond_16

    invoke-virtual {v2}, Lcom/inca/security/tb;->IiiiIIIIii()F

    move-result v2

    invoke-virtual {v10}, Lcom/inca/security/tb;->IiiiIIIIii()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_16

    .line 342
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->iiIIIIIiiI:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/inca/security/ub;->iiIIIIIiiI:I

    .line 277
    add-int/lit8 v2, v5, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/inca/security/ub;->IiiIiiiIiI:I

    .line 485
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->iiIIIIIiiI:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/inca/security/ub;->IIiIiIIIii:I

    if-ge v2, v3, :cond_16

    .line 296
    const/4 v2, 0x1

    .line 384
    :goto_11
    if-eqz v2, :cond_17

    move-object/from16 v9, p0

    goto/16 :goto_b

    .line 281
    :cond_15
    const/4 v2, 0x0

    .line 216
    :goto_12
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v6, v2

    move v2, v3

    goto/16 :goto_10

    :cond_16
    move v2, v4

    .line 384
    goto :goto_11

    :cond_17
    move-object/from16 v9, p0

    .line 328
    goto/16 :goto_e

    .line 339
    .end local v9    # "this":Lcom/inca/security/ub;
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IiIiIIIiIi:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    const/16 v3, 0xa

    if-gt v2, v3, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IiIiIIIiIi:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->IIiIIIIIii:F

    float-to-double v2, v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1d

    .line 318
    :cond_19
    const/4 v2, 0x0

    move v3, v2

    .line 479
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IiIiIIIiIi:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_1b

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->IiIiIIIiIi:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 213
    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/ub;->IIiIIIIIii:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1a

    .line 365
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/inca/security/ub;->IIiIIIIIii:F

    goto :goto_13

    .line 234
    :cond_1a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/inca/security/ub;->IIiIIIIIii:F

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 217
    add-int/lit8 v2, v3, 0x1

    int-to-float v3, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/inca/security/ub;->IIiIIIIIii:F

    move v3, v2

    .line 409
    goto :goto_13

    .line 331
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->IIiIIIIIii:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1c

    .line 433
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->IIiIIIIIii:F

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/inca/security/ub;->IIiIIIIIii:F

    .line 481
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->IIiIIIIIii:F

    float-to-double v2, v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/inca/security/ub;->IIiIIIIIii:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1d

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inca/security/ub;->iiiIiIIIII:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inca/security/ub;->iiiIiIIIII:Landroid/os/Handler;

    const/4 v4, 0x2

    const/16 v5, 0x1c

    const-string v6, ">/\u001e7\u000f\r\u00124\u001ec^?" #EventTime:%f

    invoke-static {v6}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/inca/security/ub;->IIiIIIIIii:F

    .line 369
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 218
    invoke-virtual {v3, v4, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 254
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 327
    :cond_1d
    const-wide/16 v2, 0x2710

    :try_start_6
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 475
    :try_start_7
    monitor-enter p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 258
    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/inca/security/ub;->iIIIiiIIIi:Z

    if-eqz v2, :cond_1e

    .line 490
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V

    .line 321
    :cond_1e
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v2

    .line 263
    :catch_1
    move-exception v2

    .line 239
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/inca/security/ub;->iiIiiIIIii:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_4

    .restart local v9    # "this":Lcom/inca/security/ub;
    :cond_1f
    move v2, v3

    goto/16 :goto_12

    :cond_20
    move v2, v3

    goto/16 :goto_9
.end method
