.class public final Lcom/tapjoy/internal/gx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/tapjoy/internal/bn;

.field private static final f:Lcom/tapjoy/internal/as;


# instance fields
.field public a:Ljava/net/URL;

.field public b:Landroid/graphics/Bitmap;

.field public c:[B

.field public d:Lcom/tapjoy/internal/he;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/tapjoy/internal/aw;

    invoke-direct {v0}, Lcom/tapjoy/internal/aw;-><init>()V

    .line 3012
    instance-of v1, v0, Lcom/tapjoy/internal/ax;

    if-eqz v1, :cond_0

    .line 33
    :goto_0
    sput-object v0, Lcom/tapjoy/internal/gx;->f:Lcom/tapjoy/internal/as;

    .line 168
    new-instance v0, Lcom/tapjoy/internal/gx$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gx$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gx;->e:Lcom/tapjoy/internal/bn;

    return-void

    .line 3015
    :cond_0
    new-instance v1, Lcom/tapjoy/internal/au$a;

    check-cast v0, Lcom/tapjoy/internal/av;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/au$a;-><init>(Lcom/tapjoy/internal/av;)V

    move-object v0, v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/tapjoy/internal/bs;)V
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2097
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->k()Lcom/tapjoy/internal/bx;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/bx;->f:Lcom/tapjoy/internal/bx;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 152
    :goto_0
    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->e()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gx;->a:Ljava/net/URL;

    .line 166
    :goto_1
    return-void

    .line 2097
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->h()V

    .line 156
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->l()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    const-string v1, "url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->e()Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gx;->a:Ljava/net/URL;

    goto :goto_2

    .line 161
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->s()V

    goto :goto_2

    .line 164
    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->i()V

    goto :goto_1
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/tapjoy/internal/gx;->a:Ljava/net/URL;

    .line 42
    return-void
.end method

.method private a(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;
    .locals 4

    .prologue
    .line 128
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 129
    invoke-static {p1, v0}, Lcom/tapjoy/internal/da;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 130
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 132
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 133
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 135
    new-instance v2, Lcom/tapjoy/internal/hf;

    invoke-direct {v2}, Lcom/tapjoy/internal/hf;-><init>()V

    .line 136
    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/hf;->a([B)Lcom/tapjoy/internal/hf;

    .line 137
    invoke-virtual {v2}, Lcom/tapjoy/internal/hf;->a()Lcom/tapjoy/internal/he;

    move-result-object v2

    .line 2073
    iget v3, v2, Lcom/tapjoy/internal/he;->b:I

    .line 139
    if-nez v3, :cond_0

    .line 140
    iput-object v0, p0, Lcom/tapjoy/internal/gx;->c:[B

    .line 141
    iput-object v2, p0, Lcom/tapjoy/internal/gx;->d:Lcom/tapjoy/internal/he;

    .line 148
    :goto_0
    return-object v1

    .line 144
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/u;->a:Lcom/tapjoy/internal/u;

    invoke-static {v1}, Lcom/tapjoy/internal/u;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gx;->b:Landroid/graphics/Bitmap;

    .line 145
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tapjoy/internal/gx;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/gx;->c:[B

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 55
    invoke-static {}, Lcom/tapjoy/internal/ez;->b()Lcom/tapjoy/internal/ex;

    move-result-object v1

    const-string v3, "mm_external_cache_enabled"

    invoke-virtual {v1, v3, v0}, Lcom/tapjoy/internal/ex;->a(Ljava/lang/String;Z)Z

    move-result v7

    .line 58
    if-nez v7, :cond_1

    move v6, v0

    .line 60
    :goto_0
    if-eqz v6, :cond_2

    .line 61
    sget-object v0, Lcom/tapjoy/internal/gx;->f:Lcom/tapjoy/internal/as;

    iget-object v1, p0, Lcom/tapjoy/internal/gx;->a:Ljava/net/URL;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/as;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tapjoy/internal/gx;->b:Landroid/graphics/Bitmap;

    .line 62
    iget-object v0, p0, Lcom/tapjoy/internal/gx;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 125
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v6, v2

    .line 58
    goto :goto_0

    .line 67
    :cond_2
    if-eqz v7, :cond_5

    .line 68
    sget-object v0, Lcom/tapjoy/internal/gt;->a:Lcom/tapjoy/internal/gt;

    iget-object v1, p0, Lcom/tapjoy/internal/gx;->a:Ljava/net/URL;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gt;->a(Ljava/net/URL;)Ljava/io/File;

    move-result-object v3

    .line 69
    if-eqz v3, :cond_5

    .line 70
    const/4 v1, 0x0

    .line 72
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :try_start_1
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/gx;->a(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    invoke-static {v0}, Lcom/tapjoy/internal/dc;->a(Ljava/io/Closeable;)V

    .line 82
    :goto_2
    iget-object v0, p0, Lcom/tapjoy/internal/gx;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/gx;->c:[B

    if-eqz v0, :cond_4

    .line 83
    :cond_3
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/gx;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/tapjoy/internal/gx;->f:Lcom/tapjoy/internal/as;

    iget-object v1, p0, Lcom/tapjoy/internal/gx;->a:Ljava/net/URL;

    iget-object v2, p0, Lcom/tapjoy/internal/gx;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/tapjoy/internal/as;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 79
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_3
    invoke-static {v0}, Lcom/tapjoy/internal/dc;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v1}, Lcom/tapjoy/internal/dc;->a(Ljava/io/Closeable;)V

    throw v0

    .line 88
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 93
    :cond_5
    iget-object v0, p0, Lcom/tapjoy/internal/gx;->a:Ljava/net/URL;

    invoke-static {v0}, Lcom/tapjoy/internal/em;->a(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v1

    .line 94
    const-wide/16 v4, 0x0

    .line 95
    const-string v0, "Cache-Control"

    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 97
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 98
    array-length v8, v3

    move v0, v2

    :goto_5
    if-ge v0, v8, :cond_6

    aget-object v2, v3, v0

    .line 99
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 100
    const-string v9, "max-age="

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 101
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    :try_start_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v4

    .line 112
    :cond_6
    :goto_6
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 113
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/gx;->a(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;

    move-result-object v3

    .line 114
    invoke-static {v0}, Lcom/tapjoy/internal/dc;->a(Ljava/io/Closeable;)V

    .line 116
    sget-object v0, Lcom/tapjoy/internal/gt;->a:Lcom/tapjoy/internal/gt;

    invoke-static {v4, v5}, Lcom/tapjoy/internal/gt;->a(J)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v7, :cond_8

    .line 117
    iget-object v0, p0, Lcom/tapjoy/internal/gx;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/tapjoy/internal/gx;->c:[B

    if-eqz v0, :cond_8

    .line 118
    :cond_7
    sget-object v1, Lcom/tapjoy/internal/gt;->a:Lcom/tapjoy/internal/gt;

    iget-object v2, p0, Lcom/tapjoy/internal/gx;->a:Ljava/net/URL;

    .line 1117
    iget-object v0, v1, Lcom/tapjoy/internal/gt;->b:Landroid/content/Context;

    if-eqz v0, :cond_8

    .line 1120
    iget-object v7, v1, Lcom/tapjoy/internal/gt;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/tapjoy/internal/gt$2;

    invoke-direct/range {v0 .. v5}, Lcom/tapjoy/internal/gt$2;-><init>(Lcom/tapjoy/internal/gt;Ljava/net/URL;Ljava/io/InputStream;J)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 122
    :cond_8
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/gx;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lcom/tapjoy/internal/gx;->f:Lcom/tapjoy/internal/as;

    iget-object v1, p0, Lcom/tapjoy/internal/gx;->a:Ljava/net/URL;

    iget-object v2, p0, Lcom/tapjoy/internal/gx;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/tapjoy/internal/as;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 98
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 107
    :catch_1
    move-exception v0

    goto :goto_6

    .line 79
    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_4

    :catch_2
    move-exception v1

    goto/16 :goto_3
.end method
