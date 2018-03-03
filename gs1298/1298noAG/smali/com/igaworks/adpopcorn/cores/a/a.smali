.class public Lcom/igaworks/adpopcorn/cores/a/a;
.super Ljava/lang/Object;


# direct methods
.method private static a()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "test-keys"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/igaworks/adpopcorn/cores/a/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/igaworks/adpopcorn/cores/a/a;->c(Landroid/content/Context;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/igaworks/adpopcorn/cores/a/a;->a()Z

    move-result v0

    :cond_1
    return v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xc

    new-array v3, v2, [Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v4, "/system/bin/su"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v3, v1

    new-instance v2, Ljava/io/File;

    const-string v4, "/system/xbin/su"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v3, v0

    const/4 v2, 0x2

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/app/SuperUser.apk"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v2, 0x3

    new-instance v4, Ljava/io/File;

    const-string v5, "/sbin/su"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v2, 0x4

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/bin/su"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v2, 0x5

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/sd/xbin/su"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v2, 0x6

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/app/Superuser.apk"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/4 v2, 0x7

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/su"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/16 v2, 0x8

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/bin/.ext/.su"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/16 v2, 0x9

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/usr/we-need-root/su-backup"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/16 v2, 0xa

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/xbin/mu"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    const/16 v2, 0xb

    new-instance v4, Ljava/io/File;

    const-string v5, "data/data/com.noshufou.android.su"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_1

    move v0, v1

    :cond_0
    return v0

    :cond_1
    aget-object v5, v3, v2

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v0, 0xb

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "com.noshufou.android.su"

    aput-object v0, v4, v1

    const-string v0, "com.speedsoftware.rootexplorer"

    aput-object v0, v4, v2

    const/4 v0, 0x2

    const-string v5, "com.tegrak.lagfix"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "com.devadvance.rootcloakplus"

    aput-object v5, v4, v0

    const/4 v0, 0x4

    const-string v5, "com.devadvance.rootcloak"

    aput-object v5, v4, v0

    const/4 v0, 0x5

    const-string v5, "eu.chainfire.supersu"

    aput-object v5, v4, v0

    const/4 v0, 0x6

    const-string v5, "com.thirdparty.superuser"

    aput-object v5, v4, v0

    const/4 v0, 0x7

    const-string v5, "com.koushikdutta.superuser"

    aput-object v5, v4, v0

    const/16 v0, 0x8

    const-string v5, "com.zachspong.temprootremovejb"

    aput-object v5, v4, v0

    const/16 v0, 0x9

    const-string v5, "com.ramdroid.appquarantine"

    aput-object v5, v4, v0

    const/16 v0, 0xa

    const-string v5, "com.cyanogenmod.filemanager"

    aput-object v5, v4, v0

    move v0, v1

    :goto_0
    array-length v5, v4

    if-lt v0, v5, :cond_0

    :goto_1
    return v1

    :cond_0
    :try_start_0
    aget-object v5, v4, v0

    const/16 v6, 0x80

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
