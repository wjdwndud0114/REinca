.class public final Lcom/tapjoy/internal/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "Android"

    sput-object v0, Lcom/tapjoy/internal/w;->a:Ljava/lang/String;

    .line 62
    const-string v0, "data"

    sput-object v0, Lcom/tapjoy/internal/w;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 113
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 114
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v2

    move v2, v4

    :goto_0
    if-eqz v0, :cond_0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 114
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    move-object v0, v1

    :cond_0
    return-object v0
.end method
