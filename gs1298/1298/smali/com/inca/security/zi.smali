.class public Lcom/inca/security/zi;
.super Ljava/lang/Thread;
.source "pc"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inca/security/mg;-><init>(Landroid/content/Context;Lcom/inca/security/AppGuard/AppGuardEventListener;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic IiIiIiiIii:Lcom/inca/security/mg;


# direct methods
.method public constructor <init>(Lcom/inca/security/mg;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/mg;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/inca/security/zi;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 171
    .line 144
    :try_start_0
    iget-object v4, p0, Lcom/inca/security/zi;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v4}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Ljava/lang/Thread;

    move-result-object v4

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Thread;->join(J)V

    .line 37
    iget-object v4, p0, Lcom/inca/security/zi;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v4}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v4

    sget-object v5, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v4, v5, :cond_0

    .line 111
    iget-object v3, p0, Lcom/inca/security/zi;->IiIiIiiIii:Lcom/inca/security/mg;

    const/4 v4, 0x0

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/inca/security/mg;->conditionCallback(II[B)V

    .line 77
    const/16 v3, 0x800

    .line 95
    :cond_0
    iget-object v4, p0, Lcom/inca/security/zi;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v4}, Lcom/inca/security/mg;->iIiIIiIIIi(Lcom/inca/security/mg;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 122
    or-int/lit16 v3, v3, 0x1000

    .line 137
    :cond_1
    iget-object v4, p0, Lcom/inca/security/zi;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v4}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 196
    const-string v5, "nck\u007f`dk#n}\u007f#\\h}{fnj" #android.app.Service

    invoke-static {v5}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    .line 23
    or-int/lit16 v3, v3, 0x2000

    move v4, v3

    .line 90
    :goto_0
    iget-object v3, p0, Lcom/inca/security/zi;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v3}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Lcom/inca/security/da;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inca/security/da;->IiiiIIIIii()[B

    move-result-object v3

    .line 74
    if-eqz v3, :cond_3

    .line 64
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/inca/security/va;->iIiIIiIIIi([BI)I
    :try_end_0
    .catch Lcom/inca/security/Exception/AppGuardException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 169
    const/16 v6, 0x400

    :try_start_1
    new-array v6, v6, [B

    .line 43
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 203
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    const/16 v9, 0x7855

    invoke-static {v9, v6}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 315
    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v8, v6, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 382
    invoke-static {v9, v6}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 265
    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v8, v6, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 368
    invoke-static {v4, v6}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 228
    const/4 v4, 0x0

    const/4 v9, 0x4

    invoke-virtual {v8, v6, v4, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 252
    const/16 v4, 0x10

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    .line 216
    const/4 v9, 0x4

    invoke-virtual {v7, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 421
    add-int/lit8 v4, v5, 0x1

    invoke-static {v4, v6}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 460
    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v7, v6, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 483
    array-length v4, v3

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v7, v3, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 286
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 232
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 335
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 342
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/inca/security/Exception/AppGuardException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, p0

    .line 260
    .end local p0    # "this":Lcom/inca/security/zi;
    .local v2, "this":Lcom/inca/security/zi;
    :goto_1
    :try_start_2
    iget-object v4, v2, Lcom/inca/security/zi;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v4}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Lcom/inca/security/Core/AppGuardEngine;

    move-result-object v4

    iget-object v5, p0, Lcom/inca/security/zi;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v5}, Lcom/inca/security/mg;->IIiIIiIiIi(Lcom/inca/security/mg;)Z

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii([BZ)Z
    :try_end_2
    .catch Lcom/inca/security/Exception/AppGuardException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    if-nez v3, :cond_2

    .line 447
    :try_start_3
    const-string v3, "U$P8[#Pd[9\u001a\u001aF%W/G9" #android.os.Process

    invoke-static {v3}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 467
    const-string v3, "ddca_\u007f`nj~|" #killProcess

    invoke-static {v3}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 306
    const-string v3, "\'M\u001a]." #myPid

    invoke-static {v3}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 476
    const/4 v4, 0x0

    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    invoke-virtual {v6, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 261
    const/4 v4, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v3, "gn{n#claj!^v~{hb" #java.lang.System

    invoke-static {v3}, Lcom/inca/security/n;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 352
    const-string v4, "Q2]>" #exit

    invoke-static {v4}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 322
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/inca/security/Exception/AppGuardException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 251
    :cond_2
    :goto_2
    :try_start_4
    iget-object v3, p0, Lcom/inca/security/zi;->IiIiIiiIii:Lcom/inca/security/mg;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/inca/security/mg;->iIiIIiIIIi(Lcom/inca/security/mg;Z)Z

    .line 285
    .end local v2    # "this":Lcom/inca/security/zi;
    .restart local p0    # "this":Lcom/inca/security/zi;
    :goto_3
    return-void

    .line 277
    :catch_0
    move-exception v4

    .line 357
    iget-object v4, p0, Lcom/inca/security/zi;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v4}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Lcom/inca/security/Core/AppGuardEngine;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/inca/security/Core/AppGuardEngine;->iIiIIiIIIi(Z)V
    :try_end_4
    .catch Lcom/inca/security/Exception/AppGuardException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    move-object v2, p0

    .line 260
    .end local p0    # "this":Lcom/inca/security/zi;
    .restart local v2    # "this":Lcom/inca/security/zi;
    goto/16 :goto_1

    .line 390
    .end local v2    # "this":Lcom/inca/security/zi;
    .restart local p0    # "this":Lcom/inca/security/zi;
    :catch_1
    move-exception v3

    goto :goto_3

    .line 459
    :catch_2
    move-exception v3

    goto :goto_3

    .line 299
    .end local p0    # "this":Lcom/inca/security/zi;
    .restart local v2    # "this":Lcom/inca/security/zi;
    :catch_3
    move-exception v3

    goto :goto_2

    .end local v2    # "this":Lcom/inca/security/zi;
    .restart local p0    # "this":Lcom/inca/security/zi;
    :cond_4
    move v4, v3

    goto/16 :goto_0

    .line 252
    :array_0
    .array-data 1
        0x71t
        -0x46t
        0x36t
        -0x3at
        -0x7et
        -0x6et
        0x41t
        -0x2dt
        -0x56t
        0x15t
        -0x26t
        0x7at
        -0x9t
        -0x7ct
        -0x74t
        -0x3at
    .end array-data
.end method
