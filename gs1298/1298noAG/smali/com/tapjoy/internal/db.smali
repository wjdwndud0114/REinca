.class public final Lcom/tapjoy/internal/db;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    .locals 6

    .prologue
    .line 200
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 201
    const-wide/16 v0, 0x0

    .line 203
    :goto_0
    invoke-interface {p0, v2}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v3

    .line 204
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 207
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 208
    const/4 v4, 0x0

    invoke-interface {p1, v2, v4, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 209
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 210
    goto :goto_0

    .line 211
    :cond_0
    return-wide v0
.end method

.method public static a(Ljava/lang/Readable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    .line 1248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1249
    invoke-static {p0, v0}, Lcom/tapjoy/internal/db;->a(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
