.class Lorg/apache/commons/net/ftp/FTPClient$PropertiesSingleton;
.super Ljava/lang/Object;
.source "FTPClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/ftp/FTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PropertiesSingleton"
.end annotation


# static fields
.field static final PROPERTIES:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 416
    const-class v2, Lorg/apache/commons/net/ftp/FTPClient;

    const-string v3, "/systemType.properties"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 417
    .local v1, "resourceAsStream":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 418
    .local v0, "p":Ljava/util/Properties;
    if-eqz v1, :cond_0

    .line 419
    new-instance v0, Ljava/util/Properties;

    .end local v0    # "p":Ljava/util/Properties;
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 421
    .restart local v0    # "p":Ljava/util/Properties;
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 431
    :cond_0
    :goto_0
    sput-object v0, Lorg/apache/commons/net/ftp/FTPClient$PropertiesSingleton;->PROPERTIES:Ljava/util/Properties;

    .line 432
    return-void

    .line 422
    :catch_0
    move-exception v2

    .line 425
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 426
    :catch_1
    move-exception v2

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v2

    .line 425
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 428
    :goto_1
    throw v2

    .line 426
    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
