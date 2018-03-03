.class public Lcom/igaworks/adpopcorn/cores/common/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/adpopcorn/cores/common/d$a;,
        Lcom/igaworks/adpopcorn/cores/common/d$b;
    }
.end annotation


# static fields
.field public static a:Ljava/util/WeakHashMap;

.field public static b:Ljava/util/ArrayList;

.field public static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/igaworks/adpopcorn/cores/common/d;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    sput v0, Lcom/igaworks/adpopcorn/cores/common/d;->c:I

    return-void
.end method

.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sget v0, Lcom/igaworks/adpopcorn/cores/common/d;->c:I

    if-gt v1, p2, :cond_0

    if-le v2, p1, :cond_1

    :cond_0
    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v2, 0x2

    :goto_0
    div-int v3, v1, v0

    if-le v3, p2, :cond_1

    div-int v3, v2, v0

    if-gt v3, p1, :cond_2

    :cond_1
    return v0

    :cond_2
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;IIZZ)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    :cond_1
    sget v2, Lcom/igaworks/adpopcorn/cores/common/d;->c:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    if-eqz p5, :cond_4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v1, p2, p3}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :try_start_1
    sget-object v0, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    sget-object v1, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Ljava/lang/System;->gc()V

    if-nez p4, :cond_5

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Landroid/content/Context;Ljava/lang/String;IIZZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v6

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Ljava/lang/System;->gc()V

    move-object v0, v6

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    goto :goto_0
.end method

.method private static a(Landroid/widget/ImageView;)Lcom/igaworks/adpopcorn/cores/common/e;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/igaworks/adpopcorn/cores/common/d$b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/igaworks/adpopcorn/cores/common/d$b;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/common/d$b;->a()Lcom/igaworks/adpopcorn/cores/common/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_6

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

    :goto_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_4
    :try_start_2
    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
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
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    goto/16 :goto_2

    :catch_1
    move-exception v2

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

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

.method public static a(Landroid/content/Context;)V
    .locals 8

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    move v3, v2

    :goto_0
    array-length v0, v4

    if-lt v3, v0, :cond_3

    sget-object v0, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    :cond_0
    sget-object v0, Lcom/igaworks/adpopcorn/cores/common/d;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/igaworks/adpopcorn/cores/common/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/igaw/cache"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_2
    aget-object v0, v4, v3

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    :cond_5
    sget-object v0, Lcom/igaworks/adpopcorn/cores/common/d;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/igaworks/adpopcorn/cores/common/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    const/16 v3, 0x96

    if-le v0, v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    const-string v3, "APDownloader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Delete local image file : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {p0, v3, v4, v5}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    new-instance v1, Lcom/igaworks/adpopcorn/cores/common/d$1;

    invoke-direct {v1}, Lcom/igaworks/adpopcorn/cores/common/d$1;-><init>()V

    invoke-static {v3, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v4, v3

    move v1, v2

    :goto_3
    if-lt v1, v4, :cond_8

    :cond_7
    const-string v1, "APDownloader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Delete local image file : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {p0, v1, v0, v2}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_8
    aget-object v2, v3, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0x8c

    if-le v0, v2, :cond_7

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "APDownloader"

    const-string v1, "Video downloading..."

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Lcom/igaworks/adpopcorn/cores/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lcom/igaworks/adpopcorn/cores/common/e;

    invoke-direct {v0, p0, p1}, Lcom/igaworks/adpopcorn/cores/common/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/cores/common/e;->start()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILcom/igaworks/adpopcorn/cores/common/d$a;)V
    .locals 15

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    :try_start_0
    sget-object v1, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    sget-object v1, Lcom/igaworks/adpopcorn/cores/common/d;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/igaworks/adpopcorn/cores/common/d;->b:Ljava/util/ArrayList;

    :cond_1
    sget-object v1, Lcom/igaworks/adpopcorn/cores/common/d;->b:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_6

    sget-object v2, Lcom/igaworks/adpopcorn/cores/common/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v1, Lcom/igaworks/adpopcorn/cores/common/d;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    sget-object v1, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_7

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static/range {v1 .. v6}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Landroid/content/Context;Ljava/lang/String;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_b

    sget-object v2, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v7

    :goto_1
    if-eqz v1, :cond_8

    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Lcom/igaworks/adpopcorn/cores/common/d$a;->a(Landroid/graphics/Bitmap;)V

    :cond_2
    if-eqz p2, :cond_3

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_2
    if-eqz v2, :cond_5

    sget-object v1, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    const/16 v2, 0x46

    if-le v1, v2, :cond_5

    :try_start_3
    sget-object v1, Lcom/igaworks/adpopcorn/cores/common/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    sget-object v1, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    sget-object v3, Lcom/igaworks/adpopcorn/cores/common/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    sget-object v3, Lcom/igaworks/adpopcorn/cores/common/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v1, Lcom/igaworks/adpopcorn/cores/common/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_3
    return-void

    :cond_6
    :try_start_4
    sget-object v1, Lcom/igaworks/adpopcorn/cores/common/d;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    :try_start_5
    invoke-static/range {p1 .. p2}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    const/16 v3, 0x46

    if-le v1, v3, :cond_9

    sget-object v1, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    :cond_9
    if-eqz p2, :cond_a

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_a
    new-instance v7, Lcom/igaworks/adpopcorn/cores/common/e;

    move-object v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move v14, v6

    invoke-direct/range {v7 .. v14}, Lcom/igaworks/adpopcorn/cores/common/e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILcom/igaworks/adpopcorn/cores/common/d$a;Z)V

    new-instance v1, Lcom/igaworks/adpopcorn/cores/common/d$b;

    invoke-direct {v1, v7}, Lcom/igaworks/adpopcorn/cores/common/d$b;-><init>(Lcom/igaworks/adpopcorn/cores/common/e;)V

    invoke-virtual {v7, v1}, Lcom/igaworks/adpopcorn/cores/common/e;->a(Lcom/igaworks/adpopcorn/cores/common/d$b;)V

    invoke-virtual {v7}, Lcom/igaworks/adpopcorn/cores/common/e;->start()V

    goto/16 :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :cond_b
    move v2, v7

    goto/16 :goto_1
.end method

.method private static a(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/igaworks/adpopcorn/cores/common/d;->a(Landroid/widget/ImageView;)Lcom/igaworks/adpopcorn/cores/common/e;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/igaworks/adpopcorn/cores/common/e;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {v1, v0}, Lcom/igaworks/adpopcorn/cores/common/e;->a(Z)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igaworks/adpopcorn/cores/common/d;->a:Ljava/util/WeakHashMap;

    :cond_0
    sget-object v0, Lcom/igaworks/adpopcorn/cores/common/d;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/igaworks/adpopcorn/cores/common/d;->b:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method
