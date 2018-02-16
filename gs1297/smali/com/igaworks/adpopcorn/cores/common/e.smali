.class public Lcom/igaworks/adpopcorn/cores/common/e;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/adpopcorn/cores/common/e$a;
    }
.end annotation


# static fields
.field private static g:Landroid/os/Handler;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:Ljava/lang/ref/WeakReference;

.field private d:Lcom/igaworks/adpopcorn/cores/common/d$b;

.field private e:Lcom/igaworks/adpopcorn/cores/common/d$a;

.field private f:Z

.field private h:Z

.field private i:Lcom/igaworks/adpopcorn/cores/common/e;

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/content/Context;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/igaworks/adpopcorn/cores/common/e;->g:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/common/e;->h:Z

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/common/e;->l:Z

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/common/e;->m:Z

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/common/e;->n:Z

    const-string v0, "/igaw/cache"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e;->p:Ljava/lang/String;

    const-string v0, "/igaw/cache/video"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e;->q:Ljava/lang/String;

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/common/e;->o:Landroid/content/Context;

    iput-object p2, p0, Lcom/igaworks/adpopcorn/cores/common/e;->b:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/common/e;->f:Z

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/common/e;->h:Z

    iput-object p0, p0, Lcom/igaworks/adpopcorn/cores/common/e;->i:Lcom/igaworks/adpopcorn/cores/common/e;

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/common/e;->n:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILcom/igaworks/adpopcorn/cores/common/d$a;Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/common/e;->h:Z

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/common/e;->l:Z

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/common/e;->m:Z

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/common/e;->n:Z

    const-string v0, "/igaw/cache"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e;->p:Ljava/lang/String;

    const-string v0, "/igaw/cache/video"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e;->q:Ljava/lang/String;

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/common/e;->o:Landroid/content/Context;

    iput-object p2, p0, Lcom/igaworks/adpopcorn/cores/common/e;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e;->c:Ljava/lang/ref/WeakReference;

    iput-object p6, p0, Lcom/igaworks/adpopcorn/cores/common/e;->e:Lcom/igaworks/adpopcorn/cores/common/d$a;

    if-eqz p6, :cond_0

    iput-boolean v2, p0, Lcom/igaworks/adpopcorn/cores/common/e;->f:Z

    :goto_0
    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/common/e;->h:Z

    iput-object p0, p0, Lcom/igaworks/adpopcorn/cores/common/e;->i:Lcom/igaworks/adpopcorn/cores/common/e;

    iput-boolean p7, p0, Lcom/igaworks/adpopcorn/cores/common/e;->m:Z

    iput p4, p0, Lcom/igaworks/adpopcorn/cores/common/e;->j:I

    iput p5, p0, Lcom/igaworks/adpopcorn/cores/common/e;->k:I

    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/common/e;->n:Z

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/common/e;->f:Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/io/InputStream;IZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x3

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_5

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/common/e;->o:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-result v2

    :goto_0
    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_1
    if-eqz v1, :cond_e

    :try_start_1
    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/common/e;->o:Landroid/content/Context;

    const-string v2, "APDownloaderThread"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveFileCache isImageFile : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p4, :cond_6

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/igaw/cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-direct {p0, p1}, Lcom/igaworks/adpopcorn/cores/common/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_11

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v1, 0x400

    :try_start_3
    new-array v1, v1, [B

    :goto_3
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_9

    :goto_4
    if-eqz v2, :cond_f

    if-eqz p4, :cond_f

    if-eqz p5, :cond_a

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    move-object v1, v0

    :goto_5
    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_2
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e;->o:Landroid/content/Context;

    const-string v3, "APDownloaderThread"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "saveFileCache : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v0, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    int-to-long v6, p3

    cmp-long v0, v4, v6

    if-eqz v0, :cond_d

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v0, v1

    :cond_3
    :goto_6
    if-eqz p4, :cond_4

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/common/e;->o:Landroid/content/Context;

    const-string v2, "APDownloaderThread"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bitmap : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v8}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    :goto_7
    return-object v0

    :cond_5
    :try_start_5
    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/common/e;->o:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    iget-object v4, p0, Lcom/igaworks/adpopcorn/cores/common/e;->o:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result v2

    goto/16 :goto_0

    :cond_6
    :try_start_6
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/igaw/cache/video"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_8
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_7
    if-eqz v3, :cond_8

    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_8
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/common/e;->o:Landroid/content/Context;

    const-string v3, "APDownloaderThread"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "saveFileCache : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v1, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    int-to-long v6, p3

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    :cond_9
    const/4 v5, 0x0

    :try_start_9
    invoke-virtual {v3, v1, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    goto/16 :goto_3

    :catch_2
    move-exception v1

    goto :goto_8

    :cond_a
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_5

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_9
    if-eqz v3, :cond_b

    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/common/e;->o:Landroid/content/Context;

    const-string v3, "APDownloaderThread"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "saveFileCache : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v1, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    int-to-long v6, p3

    cmp-long v1, v4, v6

    if-eqz v1, :cond_c

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :cond_c
    :goto_a
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    move-object v0, v1

    goto/16 :goto_6

    :cond_e
    if-eqz p4, :cond_4

    new-instance v1, Lcom/igaworks/adpopcorn/cores/common/e$a;

    invoke-direct {v1, p0, p2}, Lcom/igaworks/adpopcorn/cores/common/e$a;-><init>(Lcom/igaworks/adpopcorn/cores/common/e;Ljava/io/InputStream;)V

    invoke-static {v1, v0, p5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_7

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v1

    move-object v3, v0

    goto/16 :goto_8

    :catch_6
    move-exception v2

    goto/16 :goto_1

    :cond_f
    move-object v1, v0

    goto/16 :goto_5

    :cond_10
    move-object v3, v0

    goto/16 :goto_4

    :cond_11
    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_4
.end method

.method private a(Landroid/widget/ImageView;)Lcom/igaworks/adpopcorn/cores/common/e;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e;->d:Lcom/igaworks/adpopcorn/cores/common/d$b;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/common/d$b;->a()Lcom/igaworks/adpopcorn/cores/common/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/cores/common/e;Landroid/widget/ImageView;)Lcom/igaworks/adpopcorn/cores/common/e;
    .locals 1

    invoke-direct {p0, p1}, Lcom/igaworks/adpopcorn/cores/common/e;->a(Landroid/widget/ImageView;)Lcom/igaworks/adpopcorn/cores/common/e;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/net/URLConnection;)Ljava/io/InputStream;
    .locals 10

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v4

    move v5, v6

    move-object v2, p1

    :goto_0
    :try_start_0
    instance-of v1, v2, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :cond_0
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    instance-of v1, v2, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_6

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0x12c

    if-lt v7, v8, :cond_6

    const/16 v8, 0x133

    if-gt v7, v8, :cond_6

    const/16 v8, 0x132

    if-eq v7, v8, :cond_6

    const/16 v8, 0x130

    if-eq v7, v8, :cond_6

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v7

    const-string v2, "Location"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v7, v8}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v7, "http"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v7, "https"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x5

    if-lt v5, v1, :cond_3

    :cond_2
    move-object v1, v4

    :goto_2
    return-object v1

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    move v9, v5

    move v5, v1

    move v1, v9

    :goto_3
    if-nez v5, :cond_4

    move-object v1, v3

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v1, v3

    goto :goto_2

    :cond_4
    move v5, v1

    goto :goto_0

    :cond_5
    move-object v2, v4

    goto :goto_1

    :cond_6
    move v1, v5

    move v5, v6

    goto :goto_3
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/cores/common/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/common/e;->h:Z

    return v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v1, "%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X"

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x3

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x4

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x5

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/4 v4, 0x6

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/4 v4, 0x7

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const/16 v4, 0x8

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const/16 v4, 0x9

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const/16 v4, 0xa

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0xb

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0xc

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0xd

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0xe

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0xf

    aget-byte v0, v0, v4

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/cores/common/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/common/e;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/igaworks/adpopcorn/cores/common/e;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic d(Lcom/igaworks/adpopcorn/cores/common/e;)Lcom/igaworks/adpopcorn/cores/common/e;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e;->i:Lcom/igaworks/adpopcorn/cores/common/e;

    return-object v0
.end method

.method static synthetic e(Lcom/igaworks/adpopcorn/cores/common/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/common/e;->l:Z

    return v0
.end method

.method static synthetic f(Lcom/igaworks/adpopcorn/cores/common/e;)Lcom/igaworks/adpopcorn/cores/common/d$a;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e;->e:Lcom/igaworks/adpopcorn/cores/common/d$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    const-string v1, "GET"

    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/16 v1, 0x1388

    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v1, 0xbb8

    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-direct {p0, v7}, Lcom/igaworks/adpopcorn/cores/common/e;->a(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/common/e;->o:Landroid/content/Context;

    const-string v2, "APDownloaderThread"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "downloadBitmap getContentLength : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", urls : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v1, v2, v5, v6}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_5

    :try_start_1
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    iput v1, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const v1, 0x8000

    new-array v1, v1, [B

    iput-object v1, v6, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    const/4 v1, 0x1

    iput-boolean v1, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    if-eqz p4, :cond_2

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/igaworks/adpopcorn/cores/common/e;->a(Ljava/lang/String;Ljava/io/InputStream;IZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    return-object v1

    :cond_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    :try_start_4
    invoke-direct/range {v1 .. v6}, Lcom/igaworks/adpopcorn/cores/common/e;->a(Ljava/lang/String;Ljava/io/InputStream;IZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_4
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    move-object v1, v8

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_7
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_6

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_6
    if-eqz v3, :cond_7

    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_7
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v3, :cond_8

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_8
    throw v1
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_2
    move-exception v1

    :try_start_b
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v3, :cond_9

    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_9
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catchall_1
    move-exception v1

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_a
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/igaworks/adpopcorn/cores/common/e;->g:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/igaworks/adpopcorn/cores/common/e;->g:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/igaworks/adpopcorn/cores/common/e;->g:Landroid/os/Handler;

    new-instance v1, Lcom/igaworks/adpopcorn/cores/common/e$1;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/adpopcorn/cores/common/e$1;-><init>(Lcom/igaworks/adpopcorn/cores/common/e;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/igaworks/adpopcorn/cores/common/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/common/e;->d:Lcom/igaworks/adpopcorn/cores/common/d$b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 8

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    const-string v1, "GET"

    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/16 v1, 0x1388

    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v1, 0xbb8

    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-direct {p0, v7}, Lcom/igaworks/adpopcorn/cores/common/e;->a(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/common/e;->o:Landroid/content/Context;

    const-string v2, "APDownloaderThread"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "downloadVideo getContentLength : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", urls : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v1, v2, v5, v6}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v3, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/igaworks/adpopcorn/cores/common/e;->a(Ljava/lang/String;Ljava/io/InputStream;IZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_3
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_4
    throw v1
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v3, :cond_5

    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_5
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/cores/common/e;->h:Z

    return-void
.end method

.method public run()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/common/e;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/cores/common/e;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/e;->b:Ljava/lang/String;

    iget v1, p0, Lcom/igaworks/adpopcorn/cores/common/e;->j:I

    iget v2, p0, Lcom/igaworks/adpopcorn/cores/common/e;->k:I

    iget-boolean v3, p0, Lcom/igaworks/adpopcorn/cores/common/e;->m:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/common/e;->a(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igaworks/adpopcorn/cores/common/e;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
