.class Lextern/okio/AsyncTimeout$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lextern/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lextern/okio/AsyncTimeout;->sink(Lextern/okio/Sink;)Lextern/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lextern/okio/AsyncTimeout;

.field final synthetic val$sink:Lextern/okio/Sink;


# direct methods
.method constructor <init>(Lextern/okio/AsyncTimeout;Lextern/okio/Sink;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lextern/okio/AsyncTimeout$1;->this$0:Lextern/okio/AsyncTimeout;

    iput-object p2, p0, Lextern/okio/AsyncTimeout$1;->val$sink:Lextern/okio/Sink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "throwOnTimeout":Z
    iget-object v2, p0, Lextern/okio/AsyncTimeout$1;->this$0:Lextern/okio/AsyncTimeout;

    invoke-virtual {v2}, Lextern/okio/AsyncTimeout;->enter()V

    .line 208
    :try_start_0
    iget-object v2, p0, Lextern/okio/AsyncTimeout$1;->val$sink:Lextern/okio/Sink;

    invoke-interface {v2}, Lextern/okio/Sink;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    const/4 v1, 0x1

    .line 213
    iget-object v2, p0, Lextern/okio/AsyncTimeout$1;->this$0:Lextern/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lextern/okio/AsyncTimeout;->exit(Z)V

    .line 215
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lextern/okio/AsyncTimeout$1;->this$0:Lextern/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lextern/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lextern/okio/AsyncTimeout$1;->this$0:Lextern/okio/AsyncTimeout;

    invoke-virtual {v3, v1}, Lextern/okio/AsyncTimeout;->exit(Z)V

    throw v2
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, "throwOnTimeout":Z
    iget-object v2, p0, Lextern/okio/AsyncTimeout$1;->this$0:Lextern/okio/AsyncTimeout;

    invoke-virtual {v2}, Lextern/okio/AsyncTimeout;->enter()V

    .line 195
    :try_start_0
    iget-object v2, p0, Lextern/okio/AsyncTimeout$1;->val$sink:Lextern/okio/Sink;

    invoke-interface {v2}, Lextern/okio/Sink;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    const/4 v1, 0x1

    .line 200
    iget-object v2, p0, Lextern/okio/AsyncTimeout$1;->this$0:Lextern/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lextern/okio/AsyncTimeout;->exit(Z)V

    .line 202
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lextern/okio/AsyncTimeout$1;->this$0:Lextern/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lextern/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lextern/okio/AsyncTimeout$1;->this$0:Lextern/okio/AsyncTimeout;

    invoke-virtual {v3, v1}, Lextern/okio/AsyncTimeout;->exit(Z)V

    throw v2
.end method

.method public timeout()Lextern/okio/Timeout;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lextern/okio/AsyncTimeout$1;->this$0:Lextern/okio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lextern/okio/AsyncTimeout$1;->val$sink:Lextern/okio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lextern/okio/Buffer;J)V
    .locals 12
    .param p1, "source"    # Lextern/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 162
    iget-wide v0, p1, Lextern/okio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lextern/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 164
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    .line 166
    const-wide/16 v10, 0x0

    .line 167
    .local v10, "toWrite":J
    iget-object v7, p1, Lextern/okio/Buffer;->head:Lextern/okio/Segment;

    .local v7, "s":Lextern/okio/Segment;
    :goto_1
    const-wide/32 v0, 0x10000

    cmp-long v0, v10, v0

    if-gez v0, :cond_0

    .line 168
    iget-object v0, p1, Lextern/okio/Buffer;->head:Lextern/okio/Segment;

    iget v0, v0, Lextern/okio/Segment;->limit:I

    iget-object v1, p1, Lextern/okio/Buffer;->head:Lextern/okio/Segment;

    iget v1, v1, Lextern/okio/Segment;->pos:I

    sub-int v8, v0, v1

    .line 169
    .local v8, "segmentSize":I
    int-to-long v0, v8

    add-long/2addr v10, v0

    .line 170
    cmp-long v0, v10, p2

    if-ltz v0, :cond_1

    .line 171
    move-wide v10, p2

    .line 177
    .end local v8    # "segmentSize":I
    :cond_0
    const/4 v9, 0x0

    .line 178
    .local v9, "throwOnTimeout":Z
    iget-object v0, p0, Lextern/okio/AsyncTimeout$1;->this$0:Lextern/okio/AsyncTimeout;

    invoke-virtual {v0}, Lextern/okio/AsyncTimeout;->enter()V

    .line 180
    :try_start_0
    iget-object v0, p0, Lextern/okio/AsyncTimeout$1;->val$sink:Lextern/okio/Sink;

    invoke-interface {v0, p1, v10, v11}, Lextern/okio/Sink;->write(Lextern/okio/Buffer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    sub-long/2addr p2, v10

    .line 182
    const/4 v9, 0x1

    .line 186
    iget-object v0, p0, Lextern/okio/AsyncTimeout$1;->this$0:Lextern/okio/AsyncTimeout;

    invoke-virtual {v0, v9}, Lextern/okio/AsyncTimeout;->exit(Z)V

    goto :goto_0

    .line 167
    .end local v9    # "throwOnTimeout":Z
    .restart local v8    # "segmentSize":I
    :cond_1
    iget-object v7, v7, Lextern/okio/Segment;->next:Lextern/okio/Segment;

    goto :goto_1

    .line 183
    .end local v8    # "segmentSize":I
    .restart local v9    # "throwOnTimeout":Z
    :catch_0
    move-exception v6

    .line 184
    .local v6, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v0, p0, Lextern/okio/AsyncTimeout$1;->this$0:Lextern/okio/AsyncTimeout;

    invoke-virtual {v0, v6}, Lextern/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lextern/okio/AsyncTimeout$1;->this$0:Lextern/okio/AsyncTimeout;

    invoke-virtual {v1, v9}, Lextern/okio/AsyncTimeout;->exit(Z)V

    throw v0

    .line 189
    .end local v7    # "s":Lextern/okio/Segment;
    .end local v9    # "throwOnTimeout":Z
    .end local v10    # "toWrite":J
    :cond_2
    return-void
.end method
