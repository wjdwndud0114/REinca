.class public Lcom/inca/security/re;
.super Ljava/lang/Thread;
.source "pc"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inca/security/ke;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic IiIiIiiIii:Lcom/inca/security/ke;


# direct methods
.method public constructor <init>(Lcom/inca/security/ke;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/ke;

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/inca/security/re;->IiIiIiiIii:Lcom/inca/security/ke;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 1202
    .line 1365
    :try_start_0
    iget-object v2, p0, Lcom/inca/security/re;->IiIiIiiIii:Lcom/inca/security/ke;

    iget-object v2, v2, Lcom/inca/security/ke;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v2}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Ljava/lang/Thread;

    move-result-object v2

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Thread;->join(J)V

    .line 514
    iget-object v2, p0, Lcom/inca/security/re;->IiIiIiiIii:Lcom/inca/security/ke;

    iget-object v2, v2, Lcom/inca/security/ke;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v2}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    sget-object v3, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v2, v3, :cond_0

    .line 1002
    iget-object v1, p0, Lcom/inca/security/re;->IiIiIiiIii:Lcom/inca/security/ke;

    iget-object v1, v1, Lcom/inca/security/ke;->IiIiIiiIii:Lcom/inca/security/mg;

    const/4 v2, 0x0

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/inca/security/mg;->conditionCallback(II[B)V

    .line 1364
    const/16 v1, 0x800

    .line 646
    :cond_0
    iget-object v2, p0, Lcom/inca/security/re;->IiIiIiiIii:Lcom/inca/security/ke;

    iget-object v2, v2, Lcom/inca/security/ke;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v2}, Lcom/inca/security/mg;->iIiIIiIIIi(Lcom/inca/security/mg;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1304
    or-int/lit16 v1, v1, 0x1000

    .line 1331
    :cond_1
    iget-object v2, p0, Lcom/inca/security/re;->IiIiIiiIii:Lcom/inca/security/ke;

    iget-object v2, v2, Lcom/inca/security/ke;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v2}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 635
    const-string v3, "\u000bq\u000em\u0005v\u000e1\u000bo\u001a19z\u0018i\u0003|\u000f"

    invoke-static {v3}, Lcom/inca/security/la;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 768
    or-int/lit16 v1, v1, 0x2000

    move v2, v1

    .line 965
    :goto_0
    iget-object v1, p0, Lcom/inca/security/re;->IiIiIiiIii:Lcom/inca/security/ke;

    iget-object v1, v1, Lcom/inca/security/ke;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v1}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Lcom/inca/security/da;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inca/security/da;->IiiiIIIIii()[B

    move-result-object v1

    .line 1159
    if-eqz v1, :cond_3

    .line 553
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/inca/security/va;->iIiIIiIIIi([BI)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 1447
    const/16 v4, 0x400

    :try_start_1
    new-array v4, v4, [B

    .line 1384
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 881
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1482
    const/16 v7, 0x7855

    invoke-static {v7, v4}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 840
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v6, v4, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 694
    invoke-static {v7, v4}, Lcom/inca/security/va;->IiiiIIIIii(S[B)V

    .line 803
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v4, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 724
    invoke-static {v2, v4}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 925
    const/4 v2, 0x0

    const/4 v7, 0x4

    invoke-virtual {v6, v4, v2, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1161
    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    .line 875
    const/4 v7, 0x4

    invoke-virtual {v5, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 786
    add-int/lit8 v2, v3, 0x1

    invoke-static {v2, v4}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 1349
    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v5, v4, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1076
    array-length v2, v1

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v5, v1, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 939
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 787
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1478
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 771
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p0

    .line 1555
    .end local p0    # "this":Lcom/inca/security/re;
    .local v0, "this":Lcom/inca/security/re;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Lcom/inca/security/re;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/inca/security/re;->IiIiIiiIii:Lcom/inca/security/ke;

    invoke-static {v2}, Lcom/inca/security/ke;->IiiiIIIIii(Lcom/inca/security/ke;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    :goto_2
    return-void

    .line 1494
    .end local v0    # "this":Lcom/inca/security/re;
    .restart local p0    # "this":Lcom/inca/security/re;
    :catch_0
    move-exception v2

    :cond_3
    move-object v0, p0

    .line 1555
    .end local p0    # "this":Lcom/inca/security/re;
    .restart local v0    # "this":Lcom/inca/security/re;
    goto :goto_1

    .line 1464
    :cond_4
    iget-object v2, p0, Lcom/inca/security/re;->IiIiIiiIii:Lcom/inca/security/ke;

    iget-object v2, v2, Lcom/inca/security/ke;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v2}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)I

    move-result v2

    if-nez v2, :cond_5

    .line 864
    iget-object v2, p0, Lcom/inca/security/re;->IiIiIiiIii:Lcom/inca/security/ke;

    iget-object v2, v2, Lcom/inca/security/ke;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v2}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Lcom/inca/security/Core/AppGuardEngine;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/inca/security/re;->IiIiIiiIii:Lcom/inca/security/ke;

    iget-object v4, v4, Lcom/inca/security/ke;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v4}, Lcom/inca/security/mg;->IIiIIiIiIi(Lcom/inca/security/mg;)Z

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii([BZZ)V

    .line 1233
    :goto_3
    iget-object v1, p0, Lcom/inca/security/re;->IiIiIiiIii:Lcom/inca/security/ke;

    iget-object v1, v1, Lcom/inca/security/ke;->IiIiIiiIii:Lcom/inca/security/mg;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/inca/security/mg;->IIiIIiIiIi(Lcom/inca/security/mg;Z)Z

    goto :goto_2

    .line 932
    :catch_1
    move-exception v1

    goto :goto_2

    .line 883
    :cond_5
    iget-object v2, p0, Lcom/inca/security/re;->IiIiIiiIii:Lcom/inca/security/ke;

    iget-object v2, v2, Lcom/inca/security/ke;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v2}, Lcom/inca/security/mg;->IiiiIIIIii(Lcom/inca/security/mg;)Lcom/inca/security/Core/AppGuardEngine;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/inca/security/re;->IiIiIiiIii:Lcom/inca/security/ke;

    iget-object v4, v4, Lcom/inca/security/ke;->IiIiIiiIii:Lcom/inca/security/mg;

    invoke-static {v4}, Lcom/inca/security/mg;->IIiIIiIiIi(Lcom/inca/security/mg;)Z

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii([BZZ)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .end local v0    # "this":Lcom/inca/security/re;
    .restart local p0    # "this":Lcom/inca/security/re;
    :cond_6
    move v2, v1

    goto/16 :goto_0

    .line 1161
    nop

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
