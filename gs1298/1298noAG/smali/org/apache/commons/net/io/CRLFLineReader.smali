.class public final Lorg/apache/commons/net/io/CRLFLineReader;
.super Ljava/io/BufferedReader;
.source "CRLFLineReader.java"


# static fields
.field private static final CR:C = '\r'

.field private static final LF:C = '\n'


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 44
    return-void
.end method


# virtual methods
.method public readLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 57
    .local v1, "prevWasCR":Z
    iget-object v5, p0, Lorg/apache/commons/net/io/CRLFLineReader;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 58
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/io/CRLFLineReader;->read()I

    move-result v0

    .local v0, "intch":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    .line 60
    if-eqz v1, :cond_1

    const/16 v4, 0xa

    if-ne v0, v4, :cond_1

    .line 61
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v4, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    monitor-exit v5

    .line 75
    :cond_0
    :goto_1
    return-object v3

    .line 63
    :cond_1
    const/16 v4, 0xd

    if-ne v0, v4, :cond_2

    .line 64
    const/4 v1, 0x1

    .line 68
    :goto_2
    int-to-char v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 70
    .end local v0    # "intch":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 66
    .restart local v0    # "intch":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 70
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "string":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 73
    const/4 v3, 0x0

    goto :goto_1
.end method
